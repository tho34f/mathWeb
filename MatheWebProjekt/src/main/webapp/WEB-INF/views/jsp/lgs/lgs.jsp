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
		<script>
		function createLgs(){
			var numberOfEquations = $("#numberOfEquations").val();
			if(numberOfEquations > 0){
				var lgs = "lgs";
				var divLgs = $(".lgsClass");
				$("label").remove(".labelLgs");
				$("input").remove(".tl_text");
				for(var counter = 1; counter <= numberOfEquations; counter++){
					var number = lgs + counter;
					var lgsLabel = "<label class='labelLgs' for=" + number + ">Gleichung " + counter + "</label>";
					var lsgInput = "<input class='tl_text' id=" + number + " name="+ number + " type='text'></input>";
					divLgs.append(lgsLabel);
					divLgs.append(lsgInput);
				}
				$("#numberOfEquations").val('');
			}
		};
		
		function solveLgs(){
			var numberEquations = 5;
			$.ajax({
				url: "/math/solveLgs",
				method: "POST",
				data: {numberOfEquations: 5},
			}).done(function(result){
				console.log(result);
			});
		}
		</script>
	</head>

	<body>
		<jsp:include page="../layout/mainhead.jsp" flush="true"/>
	
		<div id="content" class="jumbotron">
			<div class="container">
				<h1>Liniares Gleichungssystem</h1>
				<div class="lgsClassInput" id="lgsClassInput">
					<label for="numberOfEquations">Anzahl an Gleichungen: </label>
					<input class="tl_number" id="numberOfEquations" name="numberOfEquations" type="text"/>
					<a class="tl_submit" id="createLgs" onclick="createLgs()" href="#"> Gleichungssystem erzeugen </a>
				</div>
				<div class="lgsClass">
					<button class="tl_submit" id="saveObject" onclick="solveLgs()" type="button"> Gleichungssystem lösen </button>
				</div>
					
			</div>
		</div>
		<jsp:include page="../layout/mainfooter.jsp" flush="true"/>
	</body>
</html>