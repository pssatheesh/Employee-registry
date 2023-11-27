/**
 * 
 */
//Password
function showpass(){
	p=document.getElementById("password");
	c=document.getElementById("chk");
	if(c.checked==true){
		p.type="text";
	}else{
		p.type="password";
	}
}
function valid()
{
	v1=document.getElementById("password");
	e1=document.getElementById("er1");
	exp1=/^[A-Z]{1,5}[a-z]{6,20}[0-9]{1,5}$/;
	if(v1.value=="")
	{
		e1.innerHTML="*Please enter your password";
		v1.focus();
		return false;
	}
	else if(exp1.test(v3.value)==false)
	{
		e1.innerHTML="Enter vaild password ex.first start uppercase,atleast 2 numbers";
		v1.focus();
		return false;
	}
	else
	{
		e1.innerHTML="";
	}
	//phone Number
	v2=document.getElementById("mobile");
	e2=document.getElementById("er2");
	exp2=/^[6-9]{1}[0-9]{9}$/;
	if(v2.value=="")
	{
		e2.innerHTML="Please enter your phone number";
		v2.focus();
		return false;
	}
	else if(exp7.test(v7.value)==false)
	{
		e2.innerHTML="Invalid phone number";
		v2.focus();
		return false;
	}
	else
	{
		e2.innerHTML="";
	}
	
}