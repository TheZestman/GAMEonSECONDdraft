<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Games</title>
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
    integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>


<body data-spy="scroll" data-target="#main-nav" id="home">
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top" id="main-nav">
    <div class="container">
      <a href="C:/amex/Project/gameOn/index.html" style="color:#C8102E" class="navbar-brand">GameON!</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a href="C:/amex/Project/gameOn/index.html" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="C:/amex/Project/gameOn/about.html" class="nav-link">About Us</a>
          </li><li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Games
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="http://localhost:8083/web-customer-tracker/game/showFormForAdd"">Add A Game</a></li>
              <li><a class="dropdown-item" href="http://localhost:8083/web-customer-tracker/game/list">Find A Game</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="C:/amex/Project/gameOn/signup.html" class="nav-link">Sign Up</a>
          </li>
          <li class="nav-item">
            <a href="http://localhost:8083/web-customer-tracker/user/list" class="nav-link">Admin</a>
          </li>
          <li class="nav-item">
            <a href="http://localhost:8083/web-customer-tracker/user/list" class="nav-link">CRUD</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
	<div id="wrapper">
		<div id="header">
			<h2 style = "margin-top: 50px;"> Games!</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Game -->
		
			<input type="button" value="Add Game"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>Name</th>
					<th>Release Date</th>
					<th>Description</th>
					<th>Action 1 </th>
					
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempGame" items="${games}">
				
					<!-- construct an "update" link with User id -->
					<c:url var="updateLink" value="/game/showFormForUpdate">
						<c:param name="gameId" value="${tempGame.id}" />
					</c:url>	
																	
					<tr>
						<td> ${tempGame.gameName} </td>
						<td> ${tempGame.releaseDate} </td>
						<td> ${tempGame.description} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	
	

</body>

<!-- FOOTER -->
  <footer id="main-footer" class="bg-dark">
    <div class="container">
      <div class="row">
        <div class="col text-center py-4">
          <h3>GameON!</h3>
          <p>Copyright &copy;
            <span id="year"></span>
          </p>
          <button style="background-color: #dbbb6a" class="btn" data-toggle="modal" data-target="#contactModal">Contact
            Us</button>
        </div>
      </div>
    </div>
  </footer>

  <!-- CONTACT MODAL -->
  <div class="modal fade text-dark" id="contactModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Contact Us</h5>
          <button class="close" data-dismiss="modal">
            <span>&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" class="form-control">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control">
            </div>
            <div class="form-group">
              <label for="message">Message</label>
              <textarea class="form-control"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary btn-block">Submit</button>
        </div>
      </div>
    </div>
  </div>


  <script src="http://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
    integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script>

  <script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());

    // Init Scrollspy
    $('body').scrollspy({ target: '#main-nav' });

    // Smooth Scrolling
    $("#main-nav a").on('click', function (event) {
      if (this.hash !== "") {
        event.preventDefault();

        const hash = this.hash;

        $('html, body').animate({
          scrollTop: $(hash).offset().top
        }, 800, function () {

          window.location.hash = hash;
        });
      }
    });
  </script>
<script>
			// script for dropdown
  document.addEventListener("DOMContentLoaded", function() {
    const dropdown = document.querySelector(".dropdown");
    const dropdownToggle = dropdown.querySelector(".dropdown-toggle");
    const dropdownMenu = dropdown.querySelector(".dropdown-menu");

    dropdownToggle.addEventListener("click", function(event) {
      event.preventDefault();
      dropdownMenu.classList.toggle("show");
    });
  });
</script>
</html>









