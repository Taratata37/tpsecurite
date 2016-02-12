
<!DOCTYPE html>
<%@page import="fr.polytech.AccederBDD"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Welcome to plate-forme payement </title>

    <!-- Bootstrap core CSS -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="container">
		<%AccederBDD acceder=new AccederBDD();
    		acceder.creerTable();
    		%>
      <form class="form-signin" method="post" action="check.jsp">
        <div class="form-group">
        <h2 class="form-signin-heading">Welcome to Plate-forme payement</h2>
        <br />
        <br />
        <input type="text" name="amount" id="amount"  class="form-control" placeholder="Montant" >
        <input type="text" name="nomberCard" id="nomberCard" check-type="required" required-message="input error!" class="form-control" placeholder="Card Nomber" >
        <input type="password" name="inputPassword" id="inputPassword" check-type="required" required-message="input error!" class="form-control" placeholder="Password" >
        <br />
        <a href="logup.jsp"><button class="btn btn-lg btn-primary " type="button">Enregistrement</button></a>
        <button class="btn btn-lg btn-primary " type="submit"> Payement </button>
        </div>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
