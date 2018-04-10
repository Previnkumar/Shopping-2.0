function showPopupLogin(e){
	document.getElementById("register-popup").style.display = "none";
	document.getElementById("admin-popup").style.display = "none";
	document.getElementById("login-popup").style.display = "block";
}
function showPopupRegister(e){
	document.getElementById("login-popup").style.display = "none";
	document.getElementById("admin-popup").style.display = "none";
	document.getElementById("register-popup").style.display = "block";
}
function showPopupAdmin(e){
	document.getElementById("login-popup").style.display = "none";
	document.getElementById("register-popup").style.display = "none";
	document.getElementById("admin-popup").style.display = "block";
}
function closePopup(e){
	document.getElementById("login-popup").style.display = "none";
	document.getElementById("register-popup").style.display = "none";
	document.getElementById("admin-popup").style.display = "none";
}
function LoginValidation(e){
	var name = document.getElementById("username").value;
	var psd = document.getElementById("password").value;
	if(!(name.length>0 && psd.length>0)){
		alert("Please fill all fields");
		return false;
	}
	
	if(psd.length<6)
	{
		alert("Please enter a valid Password");
		return false;
	}
	if(name.length>0){
		return true;
	}
	else{
		return false;
	}
}
function RegisterValidation(e){
	var psd1 = document.getElementById("psd1").value;
	var psd2 = document.getElementById("psd2").value;
	if(psd1.length<6){
		alert("Passwords must be atleast 6 characters long");
		return false;
	}
	
	if(psd1 != psd2){
		alert("Passwords don't match");
		return false
	}
	var mail = document.getElementById("mail").value;
	var user = document.getElementById("user").value;
	var mobile = document.getElementById("mobile").value;
	var addr = document.getElementById("addr").value;
	var state = document.getElementById("state").value;
	var country = document.getElementById("country").value;
	if(mail.length>0 && user.length>0 && mobile.length>0 && addr.length>0 && state.length>0 && country.length>0){
		
	}
	else{
		alert("Please fill all fields");
		return false;
	}
}

document.getElementById("login").addEventListener('click',showPopupLogin);
document.getElementById("admin-link").addEventListener('click',showPopupAdmin);//nav button
document.getElementById("open-register").addEventListener('click',showPopupRegister); //login hint
document.getElementById("open-login").addEventListener('click',showPopupLogin); //register hint
document.getElementById("login-popup-close").addEventListener('click',closePopup); //close
document.getElementById("register-popup-close").addEventListener('click',closePopup);
document.getElementById("admin-popup-close").addEventListener('click',closePopup);//close

window.onclick = function(e){
	if(e.target == document.getElementById("login-popup")){
		closePopup();
	}
	else if(e.target == document.getElementById("register-popup")){
		closePopup();
	}
	else if(e.target == document.getElementById("admin-popup")){
		closePopup();
	}
}