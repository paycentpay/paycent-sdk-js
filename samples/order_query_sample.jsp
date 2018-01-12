<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page import="com.bellotec.paycent.api.merchant.OrderQuery"%>
<%@ page import="com.bellotec.paycent.api.merchant.Context"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.InputStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Order Inquiry</title>
</head>
<body>

<%
	String p1_MerchantNo = "samplemerchantno";
	String p2_OrderNo = "1511348571415";
	
	String key = "samplemerchantkey";

	//把请求参数打包成数组
	Map<String, String> map = new HashMap<String, String>();
	map.put("p1_MerchantNo", p1_MerchantNo);
	map.put("p2_OrderNo", p2_OrderNo);
	
	try {
	
		Map<String, String> ctxMap = new HashMap<>();
		ctxMap.put(Context.PROP_RSA_MODE, "false");
		ctxMap.put(Context.PROP_MERCHANT_NO, p1_MerchantNo);
		ctxMap.put(Context.PROP_MERCHANT_SHAREDKEY, key);

		Context context = new Context(ctxMap, null);
		String html = new OrderQuery(context).doQuery(map);
		out.println(html);
	}catch(Exception e){
		e.printStackTrace();
	}
 %>
</body>
</html>