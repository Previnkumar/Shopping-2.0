function PreviewImage() {
    var fileReader = new FileReader();
 	fileReader.readAsDataURL(document.getElementById("productImage").files[0]);	
    fileReader.onload = function (event) {
       	document.getElementById("imagePreview").src = event.target.result;
    };
};

function categoryChange(evt){
	var category = new Array(4);
	category["Electronics"] = ["Mobile","Home Appliances","Laptop","Wearable"];
	category["Men"]=["Clothing","Shoes","Accessories"];
	category["Babies"]=["Toys","Bags","Kids Clothing"];
	category["Home"]=["Kitchen","Furniture","Pet Supplies"];

	var index = evt.selectedIndex;
	var item = evt.options[index].value;
	list = category[item];
	var ptype = document.getElementById("p-type");
	while(ptype.options.length>0){
		ptype.remove(0);
	}
	var newOption;
	for(var i=0;i<list.length;i++){
		newOption = document.createElement("option");
		newOption.value = list[i];
		newOption.text = list[i];
		try{
			ptype.add(newOption);
		}
		catch(e){
			ptype.appendChild(newOption);
		}
	}
}

function showSpec(evt){
	
	var index = evt.selectedIndex;
	var item = evt.options[index].value;
	if(item == "Mobile"){
		document.getElementsByClassName("mobile")[0].style.display="block";
		document.getElementsByClassName("laptop")[0].style.display="none";
	}
	else if(item == "Laptop"){
		document.getElementsByClassName("mobile")[0].style.display="none";
		document.getElementsByClassName("laptop")[0].style.display="block";
		console.log(document.getElementsByClassName('laptop')[0]);
	}
}
document.getElementById("productImage").addEventListener("change",PreviewImage);