// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//require turbolinks
//= require_tree .
//= require jquery-ui
//= require autocomplete-rails


	var dateToday = new Date();
	var toDate = "+60"
$(function() 
{
	
	$("#dialog-form").hide();
        //$("#datepicker").datepicker({ dateFormat: "dd/mm/yy" }).val()
	$( "#datepicker" ).datepicker({
		yearRange: "-50:+0",
		changeMonth: true,
		changeYear: true,
		dateFormat: "dd/mm/yy"
	}).val()

	$( "#datepicker1" ).datepicker({
		numberOfMonths: [2,1],
		changeMonth: true,
        	showButtonPanel: true,
        	minDate: dateToday,
		maxDate: toDate,
		dateFormat: "dd/mm/yy"
	}).val()
	

});




function loadData(id,url)
{

    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById(id).innerHTML=xmlhttp.responseText;
        
         	
             }
      }
    xmlhttp.open("GET",url,true);
    xmlhttp.send();
}

function submitForm(id)
{
    var dataString = $(id).serialize();;  
    
    $.ajax({  
      type: "POST",  
      url: $(id).attr('action'),  
      data: dataString,  

      success: function() {  
	 alert("Details Submitted Successfully");
	 
      }  

    });  
      	return false;
  
} //function submitForm(id)

$(document).on('ajax:success', '.delete', function(e) {
    $(e.currentTarget).closest('div').fadeOut();
});


function loadDialog(title,url,id)
{


	$("#dialog-form").dialog({ autoOpen: true,closeOnEscape: true, height: 500, width: 'auto', modal:true,title: title,
			open: function(event, ui){
        			 return $(this).load(url, function() {
        			 $( "#datepicker" ).datepicker({
					yearRange: "-50:+0",
					changeMonth: true,
					changeYear: true,
					dateFormat: "dd/mm/yy"
				 }).val()
				 $("#save").click(function(){
				 submitForm(id);
				  
				  $("#main_right").load("stations/station_list/id");
				$("#dialog_form" ).dialog( "close" );
				 });
                 		 });
        			} 
	});

}

/*For validation the Registration form */

function validateRegistrationForm()
{
   
   var email = document.getElementById("email");
   var password = document.getElementById("password");
   var confirm_password = document.getElementById("password_confirmation");
   var name = document.getElementById("name");
   var address1 = document.getElementById("address1");
   var address2 = document.getElementById("address2");
   var city = document.getElementById("city");
   var state = document.getElementById("state");
   var pin = document.getElementById("pin");
   var mobile = document.getElementById("mobile");
   var question = document.getElementById("question");
   var hint_answer = document.getElementById("hint_answer");


   if(validateEmail(email))
   {

	if(password_validation(password,7,15))
	{

	   if(password_confirmation_validation(password,confirm_password))
	   {

		if(allLetter(name))
		{

		    //if(alphanumeric(address1))
		    //{ 

			if(allLetter(address2))
			{

			   if(allLetter(city))
			   {

			  	//if(select(state)
				//{

			 	     if(allnumeric(pin))
			             {

				   	if(allnumeric(mobile))
				   	{

				            //if(select(question))
				       	    //{

						if(allLetter(hint_answer))
						{

						   if(validateGender())
						   {

							/*var dataString = $('#new_user').serialize();;  
							$.ajax({  
							   type: "POST",  
							   url: $('#new_user').attr('action'),  
							   data: dataString,  
							   success: function() {  
							      alert("Hello");
							   }  
						    	});*/  
						      	return true;

						   } //if(validateGender())
						    
						} //if(allLetter(hint_answer))

				            //}

					}  //if(allnumeric(mobile))

				     }  //if(allnumeric(pin))

			       // }	

			   }  // if(allLetter(city))

			}  //if(allLetter(address2))

		    //}

		}  //if(allLetter(name))

	   }  //if(password_confirmation_validation(password,confirm_password))

	}  //if(password_validation(password,7,15))

    }  //if(validateEmail(email))

   return false;

} //function validateRegistrationForm()

$(function() 
{

$( "#accordion" ).accordion(
{
   collapsible: true
}); //$( "#accordion" ).accordion(

});  //$(function() 
$(function() 
{

$( "#accordion1" ).accordion(
{
   collapsible: true
}); //$( "#accordion" ).accordion(

});  //$(function() 

function validateEmail(uemail)
{

    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if(uemail.value.match(mailformat))
    {
	return true;
    }
    else if(uemail.value == "")
    {

	alert("Email must not be empty!");
	uemail.focus();
	return false;

    }
    else
    {

	alert("You have entered an invalid email address!");
	uemail.focus();
	uemail.value="";
	return false;


    }  //if(uemail.value.match(mailformat))

}  //function validateEmail(uemail)

function validateGender()
{

    if ($('input#gender:checked').length > 0) 
    {
	return true;
    }
    else
    {

	alert("Please Select the gender");
	return false;
 
    }   //if ($('input[name=gender]:checked').length > 0) 

}  //function validateGender()

function password_validation(passid,mx,my)
{

    var passid_len = passid.value.length;

    if (passid_len == 0 ||passid_len >= my || passid_len < mx)
    {

	alert("Password should not be empty / length be between "+mx+" to "+my);
	passid.focus();
	passid.value="";
	return false;

    }
    else
    {
	return true;
    }  //if (passid_len == 0 ||passid_len >= my || passid_len < mx)

}  //function password_validation(passid,mx,my)

function password_confirmation_validation(password,confirmation)
{

    if(password.value == confirmation.value)
    {
	return true;
    }
    else
    {

	alert("Password Mismatch!!!");
	confirmation.value ="";
	confirmation.focus();
	return false;

    }  //if(password.value == confirmation.value)

}  //function password_confirmation_validation(password,confirmation)

function allLetter(uname)
{ 

    var letters = /^[A-Za-z]+$/;

    if(uname.value.match(letters))
    {
	return true;
    }
    else
    {

	alert("Enter alphabets only");
	uname.focus();
	uname.value="";
	return false;
 
    } //if(uname.value.match(letters))

}  //function allLetter(uname)

function alphanumeric(uadd)
{ 

    var letters = /^[0-9a-zA-Z]+$/;

    if(uadd.value.match(letters))
    {
	return true;
    }
    else
    {

	alert('Door Number must have alphanumeric characters only');
	uadd.focus();
	uadd.value="";
	return false;

    } //if(uadd.value.match(letters))

}  //function alphanumeric(uadd)

function select(ucountry)
{

    if(ucountry.value == "Select")
    {

	alert('Please select one option');
	ucountry.focus();
	return false;

    }
    else
    {
	return true;
    } // if(ucountry.value == "Select")

}  //function select(ucountry)

function allnumeric(uzip)
{ 

    var numbers = /^[0-9]+$/;

    if(uzip.value.match(numbers))
    {

	if(uzip == pin)
	{

	   if(uzip.value.length > 6 || uzip.value.length < 6)
	   {

		alert("Pin code length must be 6.");
		uzip.focus();
		uzip.value="";
		return false;

	   }
	   else //if(uzip.value.length > 6 || uzip.value.length < 6)
	   {
		return true;
	   }  //if(uzip.value.length > 6 || uzip.value.length < 6)

	}

	else if(uzip == mobile)
	{

	   if(uzip.value.length > 10 || uzip.value.length < 10)
	   {

		alert("Mobile Number length must be 10.");
		uzip.focus();
		uzip.value="";
		return false;

	   }
	   else  //if(uzip.value.length > 10 || uzip.value.length < 10)
	   {
		return true;
	   }  //if(uzip.value.length > 10 || uzip.value.length < 10)

	}
	else //if(uzip == pin)
	{
		return true;
	} //if(uzip == pin)
	   
    }
    else  //if(uzip.value.match(numbers))
    {

	alert('This field must have numeric characters only');
	uzip.focus();
	uzip.value="";
	return false;

    }  //if(uzip.value.match(numbers))

}  //function allnumeric(uzip)
function dataDelete(id,url)
{
setInterval(function(){$(id).load(url).show();},1000);
}
