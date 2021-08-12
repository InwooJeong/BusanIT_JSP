function CheckAddProduct(){
	
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	if(!check(/^P[0-9]{4,11}$/, productId,
		"[Product Code]\n mix P n number. 5~12 letters! (First letter must be P)"))
		return false;
	
	if(name.value.length<4 || name.value.length>12){
		alert("[Product Name]\n 4~12 letters!");
		name.select();
		name.focus();
		return false;
	}	
	
	if(unitPrice.value.length==0||isNaN(unitPrice.value)){
		alert("[Price]\n Only Number!");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(unitPrice.value<0){
		alert("[Price]\n can not use negative here!");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}else if(!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice, 
			"[Price]\n Just allowed 2nd decimal point")){
		return false;
	}
	
	if(unitsInStock.value.length==0||isNaN(unitsInStock.value)){
		alert("[Stocks]\n Only Number!");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newProduct.submit();
}