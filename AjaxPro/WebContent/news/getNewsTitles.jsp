<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% String[] titles = {
"���� �ߵǴ� ���� �ְ��� �����̴�."
"21�� 7���� ITȸ��� ���"
"1.5�� �̻��� ������ �ް� ������ �� ���̴�."};

for (int i=0; i<titles.length; i++) { %>
<% if (i == 0) { %> <strong><% } %>
<%=titles[i]%>
<% if (i == 0) { %> </strong><% } %>
<br/> <% } %>