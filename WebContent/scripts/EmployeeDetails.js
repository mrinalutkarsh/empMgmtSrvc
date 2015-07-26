function byDefault() {
		//alert("inside byDefault");
		
		
		
	}
	function hideIt() {
		alert("inside hideIt");
		//document.getElementById('testlist').style.display = 'block';
		
		
	}
	function showIt() {
		alert("inside showIt");
		
		
		
	}
	function configDropDownLists(ddl1,ddl2){
	alert("inside configDropDownLists");
	//alert(ddl1);
	//alert(ddl2);
	var Kar= new Array('Bang', 'Myso', 'Mang');
	var Bih= new Array('Pat','Mfp','Dbg');
	var Pun= new Array('Ludi','Amri','Pati');
	
	switch(ddl1.value){
		case 'Kar': ddl2.options.length=0;
			    for(i=0;i<Kar.length;i++){
				createOption(ddl2,Kar[i],Kar[i]);
			    }
	 		break;
		case 'Bih': ddl2.options.length=0;
			    for(i=0;i<Bih.length;i++){
				createOption(ddl2,Bih[i],Bih[i]);
		 	    }
			break;
		case 'Pun': ddl2.options.length=0;
			    for(i=0;i<Pun.length;i++){
				createOption(ddl2,Pun[i],Pun[i]);
			    }
			break;
	}
}
function createOption(ddl, text, value){
	
	var opt=document.createElement('option');
	
	opt.value=value;
	
	opt.text=text;
	
	ddl.options.add(opt);
	
}
