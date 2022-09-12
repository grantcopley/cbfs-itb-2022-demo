<cfoutput>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CBFS Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/7e32a713f5.js" crossorigin="anonymous"></script>
	<style type="text/css">
		html {
			height: 100%;
			background-color: ##333333;
		}
		body {
			
			background: url(/includes/images/bg.jpg);
			background-repeat: no-repeat;
			background-size: 100%;
			background-position: bottom;
			background-attachment: fixed;
			min-height: 100%;
			font-size: 1.2rem;
			color: ##333333;
		}
		a {
			color: ##ffffff;
		} 
		a:hover {
			color: ##ffffff;
		}
		input[type=text], input[type=search], textarea {
			width: 50% !important;
		}
		.btn-primary, .btn-primary:focus {
			border-color: ##fcd34d;
			background-color: ##fcd34d;
			color: ##000000;
		}
		.btn-primary:hover {
			border-color: ##eab308;
			background-color: ##eab308;
		}
		.back-button {
			font-size: 2rem;
		}
		.content {
			padding: 40px 20px;
			background-color: rgba( 255, 255, 255, 0.92 );
			border: 2px solid ##ffffff;
			border-radius: 10px;
		}
		label {
			font-weight: 600;
		}
	</style>
</head>
<body>
	<div class="container pt-3 pb-5">
		<div class="row">
			<div class="col-6">
				<h1><a href="/" class="text-decoration-none">CBFS Demo</a></h1>
			</div>
			<div class="col-6">
				<div class="d-flex flex-row-reverse mt-3">
					<a href="https://github.com/coldbox-modules/cbfs"><i class="fa-brands fa-github fa-2xl me-4" title="GitHub"></i></a>
					<a href="https://cbfs.ortusbooks.com"><i class="fa-solid fa-book-sparkles fa-2xl me-4" title="Documentation"></i></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				#renderView()#
			</div>
		</div>
	</div>
	<cfif structKeyExists( prc, "viewJavascript" )>
		#prc.viewJavascript#
	</cfif>
</body>
</html>
</cfoutput>