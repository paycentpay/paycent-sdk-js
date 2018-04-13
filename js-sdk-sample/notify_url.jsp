<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
	String merchantNo = request.getParameter("MerchantNo");
	String orderNo = request.getParameter("OrderNo");
	String amount = request.getParameter("Amount");
	String status = request.getParameter("Status");
	String trxNo = request.getParameter("TrxNo");
	String frpCode = request.getParameter("FrpCode");
	String currency = request.getParameter("Cur"); 
	String hmac = request.getParameter("hmac");
	String result = "Status=" + status+ ",  MerchantNo=" + merchantNo +", OrderNo=" + orderNo + ", amount=" + amount + ", trxNo=" + trxNo + ", frpCode=" + frpCode + ", currency=" + currency + ", hmac=" + hmac;
	
	System.out.println(result);
	
	//need to verify hmac then return success
		
	out.println("success"); // please return the "success" string
%>