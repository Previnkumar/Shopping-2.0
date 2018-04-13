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
		<form>			
			<img src="images/product-image-default.png"id="imagePreview" alt="Image Preview"/>
			<input type="file" name="productImage" style="display: none;"id="productImage" accept="image/*" />
			<label for="productImage">
  			<br><input type="button" style="margin:5px 20px;"class="button" onclick="document.getElementById('productImage').click()" value="Upload Image"/>
			</label><br>
		
			<div class = "product-spec">
				<table>
					<tr>
						<td>ProductName</td>
						<td><input class="textbox" type="text" name="pname" id="p-name"/></td>
						<td>Category</td>
						<td><select>
						  	<option value="electronics">Electronics</option>
						  	<option value="men">Men's</option>
						  	<option value="baby">Babies</option>
						  	<option value="kitchen">Kitchen</option>
							</select></td>
						<td>Price</td>
						<td><input class="textbox" type="number" name="pquantity" id="pquantity" min="1" max="100000"/></td>					
					</tr>			
					<tr>
						<td>Quantity</td>
						<td><input class="textbox" type="number" name="pdiscount" id="pdiscount" min="0" max="500" value="0"/></td>
						<td>Warranty(in month)</td>
						<td><input class="textbox" type="number" name="pdiscount" id="pdiscount" min="0" max="84" value="0"/></td>					
						<td>Discount(in %)</td>
						<td><input class="textbox" type="number" name="pdiscount" id="pdiscount" min="0" max="95" value="0"/></td>
					</tr>
					<tr>
						<td><input type="button" class="button" value="Add Specifications" name="choosefields" id="choosefields"/></td>
					</tr>
				</table>												
			</div>			
		</form>					
	</div>			
	<div class="all-specs">
		<div class="spec-header">
			
		</div>		
		<div class="spec-body">
			<table>
					<tr>						
						<td><label class="container">Color
		  					<input class="p-checkbox" type="checkbox" checked="checked">
		  					<span class="checkmark"></span>
							</label>
						</td>
						<td><label class="container">Weight(in gm)
		  					<input class="p-checkbox" type="checkbox">
		  					<span class="checkmark"></span>
							</label>
						</td>
						<td><label class="container">Weight(in kg)
		  					<input class="p-checkbox" type="checkbox">
		  					<span class="checkmark"></span>
							</label>
						</td>
						<td><label class="container">Screen-size
		  					<input class="p-checkbox" type="checkbox">
		  					<span class="checkmark"></span>
							</label>
						</td>							
					</tr>
			</table>																																	
		</div>
	</div>	
	
	
</body>
<script src="scripts/adminPanel.js"></script>
</html>