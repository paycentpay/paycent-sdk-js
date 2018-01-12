<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	String p1_MerchantNo = new String(request.getParameter("MerchantNo").getBytes("ISO-8859-1"), "UTF-8");
	String p2_OrderNo = new String(request.getParameter("OrderNo").getBytes("ISO-8859-1"), "UTF-8");
	String amount = new String(request.getParameter("Amount").getBytes("ISO-8859-1"), "UTF-8");
	String status = new String(request.getParameter("Status").getBytes("ISO-8859-1"), "UTF-8");
	
	String result = "Status=" + status+ ",  MerchantNo=" + p1_MerchantNo +", OrderNo=" + p2_OrderNo +", amount=" + amount ;
	System.out.println(result);
	out.println("success"); // "success" must match to the constant in pay-app-queue-notify/src/main/resources/spring/spring-notify.xml
%>