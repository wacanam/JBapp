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
            <li role="presentation" class="active"><a href="#">Home</a></li>
            <li role="presentation"><a href="#">About</a></li>
            <li role="presentation"><a href="#">Contact</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Project Name</h3>
      </div>

      <h2> This is page 2 </h2>
      
      <form method="post" action="/dunkthisForm">
          <input type="text" name="someInput" value=""/>
          <input type="text" name="anotherInput" value="Default"/>
          <input type="submit" value="Submit"/>
      </form>

      <footer class="footer">
        <p>&copy; 2016 Company, Inc.</p>
      </footer>

    </div> <!-- /container -->
</body>
</html>
