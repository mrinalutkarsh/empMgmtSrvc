function byDefault() {
		document.getElementById('testlist').style.display = 'none';
		//document.getElementById('testlist2').style.display = 'block';
		document.getElementById('eid').style.display = 'block';
		//document.getElementById('estatus').style.display = 'block';
	}
	function hideIt() {
		document.getElementById('testlist').style.display = 'block';
		//document.getElementById('testlist2').style.display = 'block';
		document.getElementById('eid').style.display = 'none';
		//document.getElementById('estatus').style.display = 'none';
	}
	function showIt() {
		document.getElementById('testlist').style.display = 'none';
		//document.getElementById('testlist2').style.display = 'block';
		document.getElementById('eid').style.display = 'block';
		//document.getElementById('estatus').style.display = 'block';
	}
function validate() {
	//alert("inside validate")
	var EID = document.myform.EID.value;
	var fName = document.myform.fName.value;
	var mName = document.myform.mName.value;
	var lName = document.myform.lName.value;
	var DOB = document.myform.DOB.value;
	var DOJ = document.myform.DOJ.value;
	var status = document.myform.status.value;

	var re = /^[0-9]+$/;
	
	
	if (EID.length<1||fName.length<1||lName.length<1||DOB.length<1||DOJ.length<1||status.length<1) {
		alert("All the fields are mandatory.(Middle Name can be left blank)");
		return false;
		
	}
	//alert("after if block")
}
	/*if(b.length<7){
		alert("The length of the password must be at least 7 characters");
		return false;
	}


	
	if (a.length<1){
		alert("Employee ID can not be left blank");
		return false;
	}
	if(a.length<7){
		alert("The length of the Employee ID must be at least 7 characters")
		return false;
	}
	
	if (!re.test(a)){

		alert("Employee ID must be numeric");
		return false;
	}
	return true;
}
*/