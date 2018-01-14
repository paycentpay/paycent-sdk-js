# paycent-sdk for js/java

To streamline merchant development, Paycent offers a business-integrated Java Lib, a client for generating signatures and generating payment requests, sample HTML and JSP files demonstrating how to integrate, including:

1.	Front-end html page

2.	Back-end JSP page
	
Specific API interface and parameter types please refer to "Paycent Payment Integration API Manual".

#Java Lib Main class

Specific info please refers to the Java doc description.

com.bellotec.paycent.api.merchant.Context --- Used to initialize context parameters for each payment request. Developers need to use the constructor method to configure the context properties.	

com.bellotec.paycent.api.merchant.Pay --- Used to generate payment request body(HTTP POST).

Web page Popup：buildPayWebPage(Map <String, String> inMap) --- To generate payment page, generally used for operator payment, offline payment, game point card payment.
		
Web page Redirect：buildPayUrlPost (Map <String, String> inMap) --- To generate Redirect URL request, generally used for unified web page or online banking online payment.
		
com.bellotec.paycent.api.merchant.OrderQuery --- Used to check the status of payment. Developers need to use “doQuery (Map <String, String> inMap)” to generate query requests.

	
#Sample code

The JS SDK provides a reference Sample code that demonstrates how merchants can use the SDK to send payment requests and receive payment responses, including: 

web_pay_sample.html --- Demonstrates how the merchant front end page remotely imports javascript to create payment pages, initiates a payment request. For the generation of Hmac, please refer to "Paycent Payment Integration API Manual". It is not necessary to include "PaymentParam" in the parameters that generate "executePaymentHmac".

web_pay_sample.jsp --- Demonstrates how the merchant backend system uses the SDK to create payment requests.

order_query_sample.jsp --- Demonstrates how the merchant backend system uses the SDK to query order status.

return_url.jsp --- Demonstrates how merchant backend system handle Paycent redirect returns messages.

notify_url.jsp --- Demonstrates how merchant backend system handle Paycent asynchronous status notification messages.

