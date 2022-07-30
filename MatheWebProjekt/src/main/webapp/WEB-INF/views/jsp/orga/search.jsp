<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="header" tagdir="/WEB-INF/tags/taglib"%>
<%@ taglib prefix="tho" uri="/thorben"%>
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="UTF-8" />
<meta name="author" content="Thorben Dierkes" />
<title>Thorben Dierkes</title>

<header:defaultHaeder/>

</head>
<body>

<jsp:include page="../layout/mainhead.jsp" flush="true"/>

<div id="content" class="jumbotron">
	<div class="container">
		<h1><tho:out value="global.search.result"/></h1>
		<p> ${searchresult} </p>
	</div>
</div>

<jsp:include page="../layout/mainfooter.jsp" flush="true"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>