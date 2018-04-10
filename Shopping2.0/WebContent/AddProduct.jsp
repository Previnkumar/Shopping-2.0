<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="adminPanel.jsp" />      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminPanel</title>
</head>
<body>
	<div class="product">
		<div class="product-image">
			<input type="file" name="productImage" id="productImage" accept="image/*" />
		</div>
		<div class="product-desc">
			<p>Product Name:</p>
			<input type="text" name="pname" id="p-name"/>
			<p>Price:</p>
			<input type="number" name="pprice" id="pprice"/>
			<p>Discount(in %):</p>
			<input type="number" name="pdiscount" id="pdiscount" min="0" max="100" value="0"/>
			<p>Warranty(in month):</p>
			<input type="number" name="pdiscount" id="pdiscount" min="0" max="84" value="0"/>			
		</div>
	</div>
</body>
</html>