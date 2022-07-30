<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="header" tagdir="/WEB-INF/tags/taglib"%>
<%@ taglib prefix="tho" uri="/thorben"%>
<!DOCTYPE html>
<html lang="de">
	<head>
		<meta charset="UTF-8" />
		<meta name="author" content="Thorben Dierkes" />
		<title>Mathe mit Thorben</title>
		
		<header:defaultHaeder/>
	</head>

	<body>
		<jsp:include page="./layout/mainhead.jsp" flush="true"/>
	
		<div id="content" class="jumbotron">
			<div class="container">
				<h1>Herzlich Willkommen!</h1>
				<div id="inhalt" class="row">
					<div class="col-md-6">
						<p> <strong> Ich begrüße dich herzlich und freue mich über dein Interesse an der Mathematik</strong> </p>
						<p> Hier findest du allerhand zur Mathematik.</p>
						<p>
							Die zahlreichen interaktiven Programme sollen nicht ermöglichen, schnell und ohne Mühe an Lösungen von Aufgaben zu kommen. Denn dabei lernt man nichts.
							Ziel ist es, Interesse zu wecken, Verständnis zu fördern sowie selbständiges Lernen und Üben zu ermöglichen.
						</p>
					</div>
					<div class="col-md-6">
						<img src="resources/core/images/board-g035664d5b_640.jpg" alt="Bild Thorben" style="hight:700px; width:500px;" />
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
			
		</div>
		<jsp:include page="layout/mainfooter.jsp" flush="true"/>
	</body>
</html>