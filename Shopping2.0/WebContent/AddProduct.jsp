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
	<form method="post">	
	<div class="product">		
				
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
						<td><select id="p-category" onchange="categoryChange(this);">
						  	<option value="Electronics">Electronics</option>
						  	<option value="Men">Men</option>
						  	<option value="Babies">Babies</option>
						  	<option value="Home">Kitchen</option>
							</select></td>
						<td>Price</td>
						<td><input class="textbox" type="number" name="pquantity" id="pquantity" min="1" max="100000"/></td>					
					</tr>			
					<tr>
						<td>Product Type</td>
						<td><select id="p-type" onchange="showSpec(this);">
						  	<option value="Mobile">Mobile</option>
						  	<option value="Home Applicances">Home Appliances</option>
						  	<option value="Laptop">Laptop</option>
						  	<option value="Wearable">Wearable</option>
							</select></td>
						<td>Warranty(in month)</td>
						<td><input class="textbox" type="number" name="pwarranty" id="pwarranty" min="0" max="84" value="0"/></td>					
						<td>Discount(in %)</td>
						<td><input class="textbox" type="number" name="pdiscount" id="pdiscount" min="0" max="95" value="0"/></td>
					</tr>	
				</table>																	
			</div>			
	</div>
<label class="heading">Other Specifications</label>	
	<div class = "mobile" >
			<table>
				<tr>					
					<td><label class="container">RAM
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-ram" id="p-ram" min="0" max="8"/></td>
					
					<td><label class="container">TouchScreen
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-touchscreen">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
					
					<td><label class="container">Storage(GB)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-storage" id="p-storage" min="1" max="256"/></td>
					
					<td><label class="container">Color
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-color">
					  	<option value="White">White</option>
					  	<option value="Black">Black</option>
					  	<option value="White">Grey</option>
					  	<option value="Black">Red</option>
					  	<option value="White">Yellow</option>
					  	<option value="Black">Gold</option>
						</select></td>	
				</tr>			
				<tr>
					<td><label class="container">OTG-Compatible
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-otg">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
					
					<td><label class="container">SIM-type
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-sim">
					  	<option value="dual">Dual</option>
					  	<option value="single">Single</option>
						</select></td>
						
					<td><label class="container">OS
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-os">					
					  	<option value="Android">Android</option>
					  	<option value="Blackberry">Blackberry</option>
					  	<option value="Windows">Windows</option>
						</select></td>		
						
					<td><label class="container">Clock-Speed(GHz)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-clockspeed" id="p-clockspeed" step="0.1" min="1.0" max="3.5"/></td>									
				</tr>
				<tr>
					<td><label class="container">Front camera(mp)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-frontcam" id="p-frontcam" min="2" max="32"/></td>
					
					<td><label class="container">Rear camera(mp)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-rearcam" id="p-rearcam" min="2" max="32"/></td>
						
					<td><label class="container">Flash
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-os">					
					  	<option value="Android">Rear and Front</option>
					  	<option value="Blackberry">Rear</option>
					  	<option value="Windows">Front</option>
					  	<option value="Windows">No</option>
						</select></td>		
						
					<td><label class="container">FingerPrint
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-fingerprint">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
				</tr>
				<tr>
					<td><label class="container">Internet Connectivity					
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-netword">					
					  	<option value="wifi34">4G,3G,Wifi</option>
					  	<option value="wifi3">3G,Wifi</option>
					  	<option value="3g">3G</option>
					  	<option value="wifi">Wifi</option>
						</select></td>	
					
					<td><label class="container">Map Support
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-mapsupport">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>

						
					<td><label class="container">GPS Support
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-gpssupport">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>	
						
					<td><label class="container">Battery Capacity(mAh)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-battery" id="p-battery" min="1000" step="10" max="5000"/></td>
				</tr>
			</table>			
	</div>
	
	<div class="laptop" >
			<table>
				<tr>					
					<td><label class="container">RAM
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-ram" id="p-ram" min="2" max="32"/></td>
					
					<td><label class="container">TouchScreen
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-touchscreen">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
					
					<td><label class="container">Storage(GB)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-storage" id="p-storage" min="500" max="4000"/></td>
					
					<td><label class="container">Color
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-color">
					  	<option value="White">White</option>
					  	<option value="Black">Black</option>
					  	<option value="White">Grey</option>
					  	<option value="Black">Red</option>
					  	<option value="White">Yellow</option>
					  	<option value="Black">Gold</option>
						</select></td>	
				</tr>			
				<tr>
					<td><label class="container">CD-Compatible
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-cd">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
					
					<td><label class="container">Processor
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-sim">
					  	<option value="dual">i7</option>
					  	<option value="single">i5</option>
					  	<option value="single">i3</option>
					  	<option value="single">AMD</option>
					  	<option value="single">Pentium</option>
						</select></td>
						
					<td><label class="container">OS
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-os">					
					  	<option value="Android">DOS</option>
					  	<option value="Blackberry">Windows 10</option>
					  	<option value="Windows">Linux</option>
						</select></td>		
						
					<td><label class="container">Clock-Speed(GHz)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-clockspeed" id="p-clockspeed" step="0.1" min="2.0" max="5.5"/></td>									
				</tr>
				<tr>
					<td><label class="container">camera(mp)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-frontcam" id="p-frontcam" min="1" max="16"/></td>
					
					<td><label class="container">Cache(mb)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><input class="textbox" type="number" name="p-rearcam" id="p-rearcam" min="1" max="8"/></td>
						
					<td><label class="container">SSD
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-os">					
					  	<option value="Android">Yes</option>
					  	<option value="Blackberry">No</option>
						</select></td>		
						
					<td><label class="container">Architecture
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-fingerprint">
					  	<option value="Yes">64 bit</option>
					  	<option value="No">32 bit</option>
						</select></td>
				</tr>
				<tr>
					<td><label class="container">Port(RJ11)				
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-port">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
					
					<td><label class="container">Port(RJ54)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-port">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>

						
					<td><label class="container">Port(HDMI)
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-port">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>	
						
					<td><label class="container">MultiCard Slot
		  				<input class="p-checkbox" type="checkbox">
		  				<span class="checkmark"></span>
						</label></td>
					<td><select id="p-port">
					  	<option value="Yes">Yes</option>
					  	<option value="No">No</option>
						</select></td>
				</tr>
			</table>			
	</div>			
	
	<input type="submit" style="margin-left: 45%" class="button" value = "Add Product" />
	</form>	
</body>
<script src="scripts/adminPanel.js"></script>
</html>