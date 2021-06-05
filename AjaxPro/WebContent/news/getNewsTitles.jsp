<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% String[] titles = {
"내가 잘되는 것이 최고의 복수이다."
"21년 7월에 IT회사로 취업"
"1.5배 이상의 연봉을 받고 메일을 쓸 것이다."};

for (int i=0; i<titles.length; i++) { %>
<% if (i == 0) { %> <strong><% } %>
<%=titles[i]%>
<% if (i == 0) { %> </strong><% } %>
<br/> <% } %>