<%@ taglib prefix="tho" uri="/thorben"%>
<header id="pageHeader" class="pageHeader">
		<nav class="navbar navbar-inverse navbar-expand-sm" id="navigation">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/math"><tho:out value="global.hompage.home"/></a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown"><tho:out value="global.mathematic.basics"/></a>
      				<div class="dropdown-menu">
      					<a class="dropdown-item" href="/math/basics"><tho:out value="global.mathematic.basics"/></a>
      					<a class="dropdown-item" href="/math/biographies"><tho:out value="global.mathematic.biographies"/></a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown"><tho:out value="global.mathematic.tools"/></a>
      				<div class="dropdown-menu">
      					<a class="dropdown-item" href="/math/equations"><tho:out value="global.mathematic.equations"/></a>
      					<a class="dropdown-item" href="/math/algebra"><tho:out value="global.mathematic.algebra"/></a>
					</div>
				</li>
			</ul>
			<p class="fa fa-search td_search" onclick="openSearch()"></p>
			<div style="margin-left: auto;">
				<h2 class="headerHashTag" id="headerHashTag">#MATHEMITTHORBEN</h2>
			</div>
		</nav>

		<div style="text-align:center">
			<a href="/math"><img src="resources/core/images/logo_large.png" alt="Bild Thorben" class="headerImage" id="headerImage" /></a>
		</div>
</header>
<div class="fp-main-header-search__overlay" id="fp-main-header-search__overlay"></div>
<div class="fp-main-header-search" id="fp-main-header-search">
	<form class="example" id="search" method="get" action="search">
		<input type="text" id="suche" placeholder="Suche..." name="suchen">
		<button class="searchButton" type="submit">Los!</button>
		<p class="fa fa-times" id="close" onclick="closeSearch()"></p>
	</form>
</div>