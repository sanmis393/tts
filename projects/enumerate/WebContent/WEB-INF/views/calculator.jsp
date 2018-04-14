<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculator</title>

<script type="text/javascript"
	src="<c:url value="/resources/scripts/calculator.js" />"></script>
<link href="<c:url value="/resources/styles/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/styles/calculator.css" />"
	rel="stylesheet">



</head>
<body>
<div class="container text-center" id="calc">
  <div class="calcBG col-md-3 col-md-offset-4 text-center">
    <div class="row">
      <small>Calculator</small>
    </div>
    <div class="row" id="result">
      <form name="calc">
        <input type="text" class="screen text-right" name="result" readonly>
      </form>
    </div>
    <div class="row">
      <button id="allClear" type="button" class="btn btn-danger" onclick="clearScreen()">AC</button>
      <button id="clear" type="button" class="btn btn-warning" onclick="clearScreen()">CE</button>
      <button id="%" type="button" class="btn btn-info" onclick="myFunction(this.id)">%</button>
      <button id="/" type="button" class="btn btn-info" onclick="myFunction(this.id)">�</button>
    </div>
    <div class="row">
      <button id="7" type="button" class="btn btn-info" onclick="myFunction(this.id)">7</button>
      <button id="8" type="button" class="btn btn-info" onclick="myFunction(this.id)">8</button>
      <button id="9" type="button" class="btn btn-info" onclick="myFunction(this.id)">9</button>
      <button id="*" type="button" class="btn btn-info" onclick="myFunction(this.id)">x</button>
    </div>
    <div class="row">
      <button id="4" type="button" class="btn btn-info" onclick="myFunction(this.id)">4</button>
      <button id="5" type="button" class="btn btn-info" onclick="myFunction(this.id)">5</button>
      <button id="6" type="button" class="btn btn-info" onclick="myFunction(this.id)">6</button>
      <button id="-" type="button" class="btn btn-info" onclick="myFunction(this.id)">-</button>
    </div>
    <div class="row">
      <button id="1" type="button" class="btn btn-info" onclick="myFunction(this.id)">1</button>
      <button id="2" type="button" class="btn btn-info" onclick="myFunction(this.id)">2</button>
      <button id="3" type="button" class="btn btn-info" onclick="myFunction(this.id)">3</button>
      <button id="+" type="button" class="btn btn-info" onclick="myFunction(this.id)">+</button>
    </div>
    <div class="row">
      <button id="0" type="button" class="btn btn-info" onclick="myFunction(this.id)">0</button>
      <button id="." type="button" class="btn btn-info" onclick="myFunction(this.id)">.</button>
      <button id="equals" type="button" class="btn btn-success" onclick="calculate()">=</button>
      <button id="blank" type="button" class="btn btn-info">&nbsp;</button>
    </div>
  </div>
</div>
</body>
</html>