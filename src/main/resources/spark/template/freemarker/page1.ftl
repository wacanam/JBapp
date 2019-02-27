<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${title}</title>

    <link rel="stylesheet" href="bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap-theme.css"/>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href="/">Home</a></li>
            <li role="presentation" class="active"><a href="#">Sequences</a></li>
            <li role="presentation"><a href="#">Contact</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Sequences</h3>
      </div>

      <h3>With Model Objects</h3>
      
      <p>${dateNow}</p>

      <ul>
      <#list recipe.ingredients as ingre>
        <li>${ingre.name} - ${ingre.quantity}</li>
      </#list>
      </ul>

      <footer class="footer">
        <p>&copy; 2016 Company, Inc.</p>
      </footer>

    </div> <!-- /container -->



</body>
</html>
