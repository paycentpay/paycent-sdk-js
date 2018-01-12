<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Payment - Return Page Sample</title>
</head>
<body>
<h2>
<%
	String merchantNo = request.getParameter("MerchantNo");
	String orderNo = request.getParameter("OrderNo");
	String amount = request.getParameter("Amount");
	String status = request.getParameter("Status");
	String trxNo = request.getParameter("TrxNo");
	String frpCode = request.getParameter("FrpCode");
	String currency = request.getParameter("Cur"); 
	String hmac = request.getParameter("hmac"); 
	String result = "<html><title>This is Merchant website</title><body>"
					+ "I'm Merchant. <table border=\"1\"> <tr> <td>Status </td><td>" + status+ "</td></tr>" +
					"  <tr> <td> MerchantNo</td><td>" + merchantNo +"</td></tr>" +
					" <tr> <td> Channel</td> <td>" + frpCode +"</td></tr>" +
					" <tr> <td> OrderNo</td> <td>" + orderNo +"</td></tr>" +
					" <tr> <td> TrxNo</td><td>" + trxNo +"</td></tr>"+
					" <tr> <td> Currency</td> <td>" + currency +"</td></tr>" +
					" <tr> <td> Amount</td> <td>" + amount +"</td></tr>" +
					" <tr> <td> hmac</td><td>" + hmac +"</td></tr>"+
					"<table></body></html>";

	out.println(result); 
	
%>
</h2>

</body>
</html>