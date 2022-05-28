<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script type="text/javascript" src="js/index.js"></script>

<head>
<meta charset="UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/normalize.css" rel="stylesheet">
  <link href="css/public.css" rel="stylesheet">
  <link href="css/validator.css" rel="stylesheet">
  <link href="css/completer.css" rel="stylesheet">
  <link href="jedate/skin/jedate.css" rel="stylesheet">
  <link href="css/date.css" type="text/css" rel="stylesheet">
  <link href="css/magic-check.css" rel="stylesheet" >
  <link href="css/jquery-ui.css" rel="stylesheet">  
  <link href="css/index.css" rel="stylesheet">  
  <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery-validate.js"></script>
  <script type="text/javascript" src="http://www.jq22.com/jquery/jquery-ui-1.10.2.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript">
    $('#cc').combobox({
      formatter:function(row){
        var imageFile = 'images/' + row.icon;
        return '<img class="item-img" src="'+imageFile+'"/><span class="item-text">'+row.text+'</span>';
      }
    });
  </script>

<title>Register Club</title>
</head>
<body>
<div class="container">
  <div class="form-box row">
    <form action="registerClub" class="form-horizontal" role="form" id="register-form" method="post"">
      <div class="form-group">
        <label for="username" class="col-sm-2  control-label">Club Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="username" name="club ID" placeholder="Club ID" >
          <span></span>
        </div>
      </div>
      <div class="form-group">
        <label for="phone" class="col-sm-2  control-label"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <span></span>
        </div>
      </div>
    
    <div class="form-group">
       <tr>
                <td align="right" class="left">Your position：</td>
                <td align="left">
                    <select id="type" name="type">
                        <option value="">==Please choose==</option>
                        <option value="President" <c:if test="${pBanner.type == 1}">selected</c:if> > President</option>
                        <option value="Minister" <c:if test="${pBanner.type == 2}">selected</c:if> > Minister</option>
                        <option value="Stuff" <c:if test="${pBanner.type == 3}">selected</c:if> > Stuff</option>
                        <option value="Else" <c:if test="${pBanner.type == 4}">selected</c:if> > Else</option>
                    </select>
                </td>
            </tr>
      
      </div>
    
        
      
      <div class="form-group">
        <label for="phone" class="col-sm-2  control-label"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <span></span>
        </div>
      </div>
      
    <div class="form-group">
        <label for="clubemail" class="col-sm-2  control-label">Club Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="clubemail" name="clubemail" placeholder="Please input your email address" >
          <span></span>
        </div>
      </div>
       
  
      <br>
      <div class="form-group">
		          <div class="col-sm-12">
		              <input type="submit" class="btn btn-primary form-control" id="submit" value="Submit" /> 
		          </div>
		       </div>
		       <br>
		    
		       
	       
	<a href="myregister.jsp"><h4> Back</h4> </a>
	
		       
	<h4><br></h4>
			<tr height="10">
				<td width="40">
					<font color="red">${error}</font>
				</td>
			</tr>
    </form>
  </div>
</div>
</body>
</html>