<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home | MyTicket.com</title>
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/bootswatch-min.css" />"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-2.0.3.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/bootswatch.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>MyTicket.com</h1>
			<br>
			<ul class="breadcrumb" style="margin-bottom: 5px;">
				<li><a href="${pageContext.request.contextPath}/help">Help</a></li>
				<li><a href="${pageContext.request.contextPath}/contactUs">Contact
						Us</a></li>
				<li><a href="${pageContext.request.contextPath}/createAccount">SignUp</a></li>
				<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
			</ul>
		</div>

		<div class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a class="navbar-brand"
						href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a class="navbar-brand"
						href="${pageContext.request.contextPath}/showtime">Showtimes</a></li>
					<li><a class="navbar-brand"
						href="${pageContext.request.contextPath}/browsemovies">Movies</a></li>
					<li><a class="navbar-brand"
						href="${pageContext.request.contextPath}/news">News </a></li>
				</ul>

				<c:if test="${!empty sessionScope.user}">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="navbar-brand"
							class="dropdown-toggle" data-toggle="dropdown">MyAccount<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/userDash">My
										Bookings</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
							</ul>
					</ul>
				</c:if>
			</div>
		</div>


		<div class="row">

			<div class="span4">
				<div class="alert alert-dismissable alert-info">
					<button type="button" class="close" data-dismiss="alert"></button>
					<strong>Help!</strong><br>You will be good on your own <br>Turst
					me!
				</div>
			</div>

			<div class="span8">
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</div>

		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Stay Connected with us:</h3>
			</div>

			<div class="well">
				<div class="fb-like"
					data-href="https://developers.facebook.com/docs/plugins/"
					data-layout="button" data-action="like" data-show-faces="true"
					data-share="false"></div>
			</div>
		</div>
		<div class="footer">
			<p>&copy;Suraj 2014</p>
		</div>
	</div>

	<script type="text/javascript">
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

</body>
</html>
