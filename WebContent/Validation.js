

function validation() {


	let elements = document.forms["regForm"].elements;
	let userName = elements['userName'].value;
	let email = elements['email'].value;
	let mobile = elements['mobile'].value;
	let password = elements['password'].value;
	
	if (userName == '' || userName.length == 0) {
		document.getElementById('fullnameerror').innerHTML = 'enter full_name';
		return false;

	}
	if (email == '' || email.length == 0) {
		alert("enter  email_address");
		return false;
	}
	if (mobile == '' || mobile.length == 0) {
		alert("enter  mobile_number ");
		return false;
	}
	if (password == '' || password.length == 0) {
		alert("enter password");
		return false;
	}

	return true;

}

function loginValidation() {
	let elements = document.forms["logform"].elements;

	let email = elements['email'].value;
	let password= elements['password'].value;
	if (email == '' || email.length == 0) {
		alert("enter  email_address");
		return false;
	}

	if (password == '' || password.length == 0) {
		alert("enter password");
		return false;
	}
      return true;
}
function productValidation(){
	
	let elements=document.forms["addproductform"].elements;
	let productName=elements['productName'].value;
	let productPrice=elements['productPrice'].value;
	let noOfQuantity=elements['noOfQuantity'].value;
	let specifications=elements['specifications'].value;
	
	if (productName == '' || productName.length == 0) {
		alert("enter  productName");
		return false;
	}
	if (productPrice == '' || productPrice.length == 0) {
		alert("enter  productPrice");
		return false;
	}
	if (noOfQuantity== '' || noOfQuantity.length == 0) {
		alert("enter  noOfQuantity");
		return false;
	}
	if (specifications == '' || specifications.length == 0) {
		alert("enter  productPrice");
		return false;
	}
	  return true;
}
	
	
	
