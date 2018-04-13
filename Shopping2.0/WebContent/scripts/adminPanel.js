function PreviewImage() {
    var fileReader = new FileReader();
 	fileReader.readAsDataURL(document.getElementById("productImage").files[0]);	
    fileReader.onload = function (event) {
       	document.getElementById("imagePreview").src = event.target.result;
    };
};

document.getElementById("productImage").addEventListener("change",PreviewImage);