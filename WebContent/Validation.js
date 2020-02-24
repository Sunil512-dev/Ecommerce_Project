 function validation(){
	 let form=document.forms["regForm"];
	 let userName=elements['userName'].value;
	 let email=elements['email'].value;
	 let mobile=elements['mobile'].value;
	 let password=elements['password'].value;
	 if(userName==''||userName.length==0){
		 alert("enter full name");
		 return false;
	 }
	 if(email==''||email.length==0){
		 alert("enter  email address");
		 return false;
	 }
	 if(mobile==''||mobile.length==0){
		 alert("enter  mobile number ");
		 return false;
	 }
	 if(password==''||password.length==0){
		 alert("enter password");
		 return false;
	 }
	
	return true;
}