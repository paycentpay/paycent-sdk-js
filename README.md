# paycent-sdk for web payment

To streamline merchant development, Paycent offers the Web SDK to help merchants generate payment pages, and Web SDK for web-based applications.

The merchant APP completes the payment process by integrating with the Web SDK to interact with the Paycent server. Specific API interface and parameter types please refer to "Paycent Payment Integration API Manual".

Web SDK has two types:
1. JS SDK: Embedded in the merchant application to help merchant applications complete the payment.
2. Hosted SDK: Resides on the Paycent server and helps the merchant application to complete the payment.

#JS SDK Sample code

Sample code demonstrates how the merchant application integrates with the JS SDK, generates payment pages, processes payment requests and responses, and receives asynchronous status notifications. 

web_pay_sample.html --- Demonstrates the page that the merchant uses to integrate the JS SDK. Hmac parameters generated please refer to "create Hmac examples." Note that the parameters that the JS SDK generates "executePaymentHmac" do not need to include "PaymentParam", unlike using the Backend API directly.

web_pay_sample.jsp --- Demonstrates that the merchant backend server generates a front-end html page (web_pay_sample.html) by calling the merchant Java Lib.

order_query_sample.jsp --- Demonstrates that the merchant backend server queries the order status by calling the merchant Java Lib.

return_url.jsp --- Demonstrates how the merchant backend server handles JS SDK return messages.

notify_url.jsp --- Demonstrates how merchant backend server handle Paycent asynchronous status notification messages.

Run sample code steps:
1. Put the "js-sdk-sample" folder into Tomcat's "webapps" directory
2. Follow the prompts to modify "web_pay_sample.jsp" and "order_query_sample.jsp" need to be replaced
3. In the browser to access the above page

#Java Lib

The merchant backend server can use Java Lib to generate payment pages (payment redirect requests) and query order status requests. Specific info please refers to the Java doc description.

com.bellotec.paycent.api.merchant.Context --- Used to initialize context parameters for each payment request. Developers need to use the constructor method to configure the context properties.	

com.bellotec.paycent.api.merchant.Pay --- Used to generate payment page (payment redirect request).

Web page Popup：buildPayWebPage(Map <String, String> inMap) --- To generate payment page, generally used for operator payment, offline payment, and game card payment.
		
Web page Redirect：buildPayUrlPost (Map <String, String> inMap) --- To generate redirect URL request, generally used for hosted webpage or online banking online payment.
		
com.bellotec.paycent.api.merchant.OrderQuery --- Used to check the status of payment. Developers need to use “doQuery (Map <String, String> inMap)” to generate query requests.
