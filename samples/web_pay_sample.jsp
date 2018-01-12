<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page import="com.bellotec.paycent.api.merchant.Pay"%>
<%@ page import="com.bellotec.paycent.api.merchant.Context"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.InputStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pay Sample</title> 

<%
 	String path = "https://gateway-sandbox.bellotec.com";
 %>

<!-- Bootstrap/JQuery/Paycent meta/css/js -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=path%>/statics/css/bootstrap-3.3.7.css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="<%=path%>/statics/js/bootstrap-3.3.7.js"></script>
<script type="text/javascript" src="<%=path%>/statics/js/jquery.i18n.properties.js"></script>
<link href="<%=path%>/statics/css/paycent.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="<%=path%>/statics/js/paycent.js"></script>

</head>
<%
	String p1_MerchantNo = "samplemerchantno";
	String p2_OrderNo = "1511348571415";
	String p3_Amount = "1000";
	String p4_Cur = "";
	String p5_ProductName = "Game Card";
	String p6_Mp = "";
	String p7_ReturnUrl = "http://merchantServer/return_url.jsp";
	String p8_NotifyUrl = "http://merchantServer/notify_url.jsp";
	String p9_FrpCode = "ID-DCB-INDOSAT";
	String pa_OrderPeriod ="0";
	String pb_PayerLoginName ="";
	String pc_Lang = "";
	String pd_Country = "ID";
	String key = "samplemerchantkey";

	//把请求参数打包成数组
	Map<String, String> map = new HashMap<String, String>();
	map.put("p1_MerchantNo", p1_MerchantNo);
	map.put("p2_OrderNo", p2_OrderNo);
	map.put("p3_Amount", p3_Amount);
	map.put("p4_Cur", p4_Cur);
	map.put("p5_ProductName", p5_ProductName);
	map.put("p6_Mp", p6_Mp);
	map.put("p7_ReturnUrl", p7_ReturnUrl);
	map.put("p8_NotifyUrl", p8_NotifyUrl);
	map.put("p9_FrpCode", p9_FrpCode);
	map.put("pa_OrderPeriod", pa_OrderPeriod);
	map.put("pb_PayerLoginName", pb_PayerLoginName);
	map.put("pc_Lang", pc_Lang);
	map.put("pd_Country", pd_Country);
	
	try {
		Map<String, String> ctxMap = new HashMap<>();
		ctxMap.put(Context.PROP_RSA_MODE, "false");
		ctxMap.put(Context.PROP_MERCHANT_NO, p1_MerchantNo);
		ctxMap.put(Context.PROP_MERCHANT_SHAREDKEY, key);
		ctxMap.put(Context.PROP_NOTIFY_URL, p8_NotifyUrl);
		ctxMap.put(Context.PROP_RETURN_URL, p7_ReturnUrl);
		ctxMap.put(Context.PROP_RESOURCE_PATH, path);
		ctxMap.put(Context.PROP_INIT_PAY_URL, "https://gateway-sandbox-server/aggregatePay_init.action");
		ctxMap.put(Context.PROP_EXECUTE_URL, "https://gateway-sandbox-server/aggregatePay_execute.action");
		ctxMap.put(Context.PROP_ORDER_QUERY_URL, "https://gateway-sandbox-server/aggregatePay_queryOrder.action");

		Context context = new Context(ctxMap, null);		
		// 创建支付请求html  
		String html = new Pay(context).buildPayWebPage(map);
		out.println(html);
	} catch (Exception e) {
		e.printStackTrace();
	}
 %>
 
<script type="text/javascript">
$(document).ready(function(){
	initPayment();
});
</script>
 <body>
</body>
</html>