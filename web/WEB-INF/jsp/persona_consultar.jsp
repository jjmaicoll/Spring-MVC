 <!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Agency - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">VehiAlpes</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
		  <li><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Persona<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a class="hvr-sweep-to-bottom" href="personaCrear.htm">Crear</a></li>
				<li><a class="hvr-sweep-to-bottom" href="personaConsultar.htm">Consultar</a></li>
				<li><a class="hvr-sweep-to-bottom" href="personaEditar.htm">Editar</a></li>
			</ul>
		  </li>	
		  <li><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Vehiculos<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a class="hvr-sweep-to-bottom" href="vehiculoCrear.htm">Crear</a></li>
				<li><a class="hvr-sweep-to-bottom" href="vehiculoConsultar.htm">Consultar</a></li>
				<li><a class="hvr-sweep-to-bottom" href="vehiculoEditar.htm">Editar</a></li>
			</ul>
		  </li>
		  <li><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ventas<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a class="hvr-sweep-to-bottom" href="ventasCrear.htm">Crear</a></li>
				<li><a class="hvr-sweep-to-bottom" href="ventasConsultar.htm">Consultar</a></li>
				<li><a class="hvr-sweep-to-bottom" href="ventasEditar.htm">Editar</a></li>
			</ul>
		  </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#team">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Bienvenidos a VehiAlpes!</div>
        <div class="intro-heading text-uppercase">Estamos encantados de conocerte!</div>
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Quieres saber mas de nosotros
		</a>
      </div>
    </div>
  </header>
  
    <!-- //header -->
	<!-- about-heading -->
	<div class="about-heading">
		<h2>Consultar <span>Persona</span></h2>
	</div>
	<!-- //about-heading -->
	<div class="registration">
		<div class="container">
			<div class="signin-form profile">
				<h3>:: Consultar ::</h3>
				
				<div class="login-form">
					<form action="personaConsultarForm.htm" method="post">
                                            <input type="text" name="identificacion" placeholder="Identificación" required>
                                            <input type="text" name="nombre1" placeholder="Nombre 1" required>

                                            <input type="submit" value="CONSULTAR">
					</form>
				</div>
				<p>${mensaje}</p>
			</div>
                        <div class="table-responsive">                                                               
                            <table id="tablaResultado" class="table table-striped table-hover table-bordered" >
                                <thead>       
                                    <tr>
                                       <th>Identificación</th>
                                       <th>Nombre 1</th>
                                       <th>Nombre 2</th>
                                       <th>Apellido 1</th>
                                       <th>Apellido 2</th>
                                       <th>Genero</th>
                                       <th>Telefono</th>
                                       <th>E-mail</th>
                                       <th>Fecha Nacimiento</th>
                                       <th>Tipo Persona</th>
                                    </tr>
                                </thead>                                        
                                <tbody>
                                <c:forEach var="p" items="${listaPersonas}">                                           
                                    <tr>
                                        <td>${p.getIdentificacion()}</td>
                                        <td>${p.getNombre1()}</td>
                                        <td>${p.getNombre2()}</td>
                                        <td>${p.getApellido1()}</td>
                                        <td>${p.getApellido2()}</td>
                                        <td>${p.getGenero()}</td>
                                        <td>${p.getTipoP()}</td>
                                        <td>${p.getfNacimiento()}</td>
                                        <td>${p.getTelef()}</td>
                                        <td>${p.getEmail()}</td>                                        
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>                        
		</div>
	</div>
  
    <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  
  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/agency.min.js"></script>

</body>

</html>
