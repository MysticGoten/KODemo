<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<Title>KO Demo Site</Title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<!-- Load React API -->
<script src= "https://unpkg.com/react@16/umd/react.production.min.js"></script>
<!-- Load React DOM-->
<script src= "https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"></script>
<!-- Load Babel Compiler -->
<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/babel">
    //  JSX Babel code goes here
    $.ajax({
	  url: "/KODemo/data",
	  success: function(result) {
        const element = {__html: result};
        ReactDOM.render(<div dangerouslySetInnerHTML={element}/>, document.getElementById('root'));
	    $('#datatable').DataTable();
	  },
      error: function() {
        ReactDOM.render(<h1>An error occurred</h1>, document.getElementById('root'));
      }
	});
</script>
</head>
<body>
<h1 style="text-align:center;">KO Demo Site</h1>
<hr/>
<div id="root"></div>
</body>
</html>