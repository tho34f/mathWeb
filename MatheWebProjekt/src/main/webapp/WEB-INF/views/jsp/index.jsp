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
						<p> <strong> Ich begr��e dich herzlich und freue mich �ber dein Interesse an der Mathematik</strong> </p>
						<p> Hier findest du allerhand zur Mathematik.</p>
						<p>
							Die zahlreichen interaktiven Programme sollen nicht erm�glichen, schnell und ohne M�he an L�sungen von Aufgaben zu kommen. Denn dabei lernt man nichts.
							Ziel ist es, Interesse zu wecken, Verst�ndnis zu f�rdern sowie selbst�ndiges Lernen und �ben zu erm�glichen.
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