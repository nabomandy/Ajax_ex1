<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<head><title>google</title>
<link rel="stylesheet" href="style.css"><script>
function sendRequest(url, params, callback, method) {
	httpRequest = new XMLHttpRequest();	url = url + "?" + params;
	httpRequest.open(method, url, true);	httpRequest.onreadystatechange = callback;
	httpRequest.send();}
function startSuggest(event) {	setTimeout("sendKeyword();", 500);}
function sendKeyword() {
	var keyword = document.search.keyword.value;
	if (keyword != '') {
		var params = "keyword=" + encodeURIComponent(keyword);
		sendRequest("command.jsp", params, displayResult, "get");
	} else {		hide('suggest');	}}
function displayResult() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var resultText = httpRequest.responseText;
			console.log(httpRequest.responseText);
			var listView = document.getElementById('suggestList');
			listView.innerHTML = httpRequest.responseText;
			show('suggest');
		} else {alert("에러 발생: " + httpRequest.status);		}	}}
function show(elementId) {
	var element = document.getElementById(elementId);
	if (element) {		element.style.display = '';	}}
function hide(elementId) {
	var element = document.getElementById(elementId);
	if (element) {		element.style.display = 'none';	}}
</script>
</head>
<body>
	<div id="d1">
		<img
			src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png" />
		<form name="search">
			<div>
				<input type="text" name="keyword" id="keyword" autocomplete="off" onkeydown="startSuggest()"/> 
			    <input type="button" value="검색" />
			    
				<div id="suggest" style="display:;">
					<div id="suggestList" style="padding-left: 10px;"></div>
				</div>
				
			</div>
		</form>
	</div>
</body>
</html>

