function validate() {

	//var a = document.myform.EID.value;
	//alert(a);
	var a = document.myform.EID.value;
	//var re = /^[\d]+$/;
	var re = /^[0-9]+$/;
	var b = document.myform.PWD.value;
	
	
	//alert(b);
	//var valid = true;
	if (b.length<1) {
		alert("Password can not be left blank!");
		return false;
		
	}
	if(b.length<7){
		alert("The length of the password must be at least 7 characters");
		return false;
	}

/*function validateEmployeeID(){*/
	
	if (a.length<1){
		alert("Employee ID can not be left blank");
		return false;
	}
	if(a.length<7){
		alert("The length of the Employee ID must be at least 7 characters")
		return false;
	}
	
	if (!re.test(a)){
		//alert(re.test(a));
		alert("Employee ID must be numeric");
		return false;
	}
	return true;
}
/*}*/
	//alert("hello1");
	//return validateEmail(document.myform.EID.value);
	//alert("hello2");*/
/*
function validateEmail(email)() 

	//alert("before regex in validateEmail method");
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    //alert("after regex in validateEmail method");
    if( re.test(email)){
    	return true;
    }
    else{ alert("Please enter correct email address");
    	return false;
    }
} */