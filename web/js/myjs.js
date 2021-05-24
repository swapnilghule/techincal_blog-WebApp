/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const usernameEl = document.getElementById('username');
const emailEl = document.getElementById('email');
const passwordEl = document.getElementById('password');
const confirmPasswordEl = document.getElementById('confirm-password');
const dateE1=document.getElementById('dob');
const regidE1=document.getElementById('regid');

const rollno=document.getElementById('roll');
const phone=document.getElementById('Pno');


var mydate=document.getElementById('dob').value;
const form = document.getElementById('reg-form');
const check = document.getElementById('user_check');

const btn = document.getElementById('submit');


const phonenumber =(inputtxt) =>
{
  var phoneno = /^\d{10}$/;
  let flag=true;
  if(!inputtxt.match(phoneno))
  {
      flag=false
  }
  
  return flag;
}


const checkrollno = () =>
{
    let valid=false;
   if (!isRequired(document.getElementById('roll').value)) {
        showError(rollno, 'Mandantory ...!!!!');
    }   
    else if(document.getElementById('roll').value.length < 5)
    {
     showError(rollno, 'Please ensure you entered right roll no ...!!!!');

    }
    else
    {
        showSuccess(rollno);
        valid=true;
        return valid;
    }
    
    return valid;
}

const checkPhoneNumber=()=>{
    
        let valid=false;

     if (!isRequired(document.getElementById('Pno').value)) {
        showError(phone, 'Mandantory ...!!!!');
    } 
    else if(!phonenumber(document.getElementById("Pno").value))
    {
        showError(phone, '10 Digit number expected ...!!!!');

    }
    else{
         showSuccess(phone);

         valid=true;
        return valid;
    }
    return valid;
}



const checkEmptyField =() =>

{
    let valid=false;
        const value = regidE1.value.trim();

     if (!isRequired(value)) {
        showError(regidE1, 'Mandantory ...!!!!');
    } 
    else{
        showSuccess(regidE1);

        valid=true;
    }
    
    return valid;
}

const checkDateValidation = (message) =>{
    
  var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
  // Match the date format through regular expression
      const mydate = message.value.trim();
  let flag=true;

  if(message.value.match(dateformat))
  {
  
  //Test which seperator is used '/' or '-'
  var opera1 = message.value.split('/');
  var opera2 = message.value.split('-');
  let lopera1 = opera1.length;
  let lopera2 = opera2.length;
  // Extract the string into month, date and year
  if (lopera1>1)
  {
  var pdate = message.value.split('/');
  }
  else if (lopera2>1)
  {
  var pdate = message.value.split('-');
  }
  var dd = parseInt(pdate[0]);
  var mm  = parseInt(pdate[1]);
  var yy = parseInt(pdate[2]);
  // Create list of days of a month [assume there is no leap year by default]
  var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];
  if (mm==1 || mm>2)
  {
  if (dd>ListofDays[mm-1])
  {
  flag= false;
  }
  }
  if (mm==2)
  {
  var lyear = false;
  if ( (!(yy % 4) && yy % 100) || !(yy % 400)) 
  {
  lyear = true;
  }
  if ((lyear==false) && (dd>=29))
  {
  flag= false;
  }
  if ((lyear==true) && (dd>29))
  {
  flag= false;
  }
  }
  }
  else
  {
  flag= false;
  }
  
  return flag;
}

function allLetter(inputtxt)
  {
   var letters = /^[A-Z a-z]+$/;
   if(inputtxt.match(letters))
     {
      return true;
     }
   else
     {
     return false;
     }
  }

const checkDate = () => {

    let valid = false;

   
  

    if (!isRequired(dateE1)) {
        showError(dateE1, 'date cannot be blank');
    } 
    else if(!checkDateValidation(dateE1))
    {
        showError(dateE1, 'please ensure the date format either DD/MM/YYYY ');

    
    }
   else if(isFutureDate(document.getElementById("dob").value))
   {
        showError(dateE1, 'please ensure you entered the valid date');

   }
    else {
        showSuccess(dateE1);
        valid = true;
    }
    return valid;
};
  
const checkUsername = () => {

    let valid = false;

    const min = 5,
        max = 25;

    const username = usernameEl.value.trim();

    if (!isRequired(username)) {
        showError(usernameEl, 'Username cannot be blank.');
    } else if (!isBetween(username.length, min, max)) {
        showError(usernameEl, 'Username must be between 5 and 25 characters.');
        
    } 
     else if(!allLetter(document.getElementById("username").value))
    {
          showError(usernameEl, 'Username must be character');

    }else {
        showSuccess(usernameEl);
        valid = true;
    }
    return valid;
};



const checkEmail = () => {
    let valid = false;
    const email = emailEl.value.trim();
    if (!isRequired(email)) {
        showError(emailEl, 'Email cannot be blank.');
    } else if (!isEmailValid(email)) {
        showError(emailEl, 'Email is not valid.');
    } else {
        showSuccess(emailEl);
        valid = true;
    }
    return valid;
};

const checkPassword = () => {

    let valid = false;

    const password = passwordEl.value.trim();

    if (!isRequired(password)) {
        showError(passwordEl, 'Password cannot be blank.');
    } else if (!isPasswordSecure(password)) {
        showError(passwordEl, 'Password must has at least 8 characters that include at least 1 lowercase character, 1 uppercase characters, 1 number, and 1 special character in (!@#$%^&*)');
    } else {
        showSuccess(passwordEl);
        valid = true;
    }

    return valid;
};

const checkConfirmPassword = () => {
    let valid = false;
    // check confirm password
    const confirmPassword = confirmPasswordEl.value.trim();
    const password = passwordEl.value.trim();

    if (!isRequired(confirmPassword)) {
        showError(confirmPasswordEl, 'Please enter the password again');
    }
    else if (password !== confirmPassword) {
        showError(confirmPasswordEl, 'The password does not match');
    } else {
        showSuccess(confirmPasswordEl);
        valid = true;
    }

    return valid;
};


function isFutureDate(idate){
    var today = new Date().getTime(),
        idate = idate.split("/");


    idate = new Date(idate[2], idate[1] - 1, idate[0]).getTime();
    return (today - idate) < 0;
}


const isEmailValid = (email) => {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
};

const isPasswordSecure = (password) => {
    const re = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
    return re.test(password);
};

const isRequired = value => value === '' ? false : true;
const isBetween = (length, min, max) => length < min || length > max ? false : true;


const showError = (input, message) => {
    // get the form-field element
    const formField = input.parentElement;
    // add the error class


    // show the error message    const error = formField.querySelector('small');

    const error = formField.querySelector('small');
    error.textContent = message;
};

const showSuccess = (input) => {
    // get the form-field element
    const formField = input.parentElement;



    // hide the error message
    const error = formField.querySelector('small');
    error.textContent = '';
}

 $(document).ready(function(){
        console.log("loaded....")
        $('#reg-form').on('submit',function(event){
            event.preventDefault();
              let isUsernameValid = checkUsername(),
                isEmailValid = checkEmail(),
                isPasswordValid = checkPassword(),
                isConfirmPasswordValid = checkConfirmPassword(),
                isDateValid =checkDate(),
                isRegidValid =checkEmptyField(regid),
                isRollnoValid=checkrollno() ,
                isPhoneNumberValid= checkPhoneNumber();
                

               let isFormValid = isUsernameValid &&
                        isEmailValid &&
                        isPasswordValid &&
                        isConfirmPasswordValid &&isDateValid && isRegidValid && isRollnoValid && isPhoneNumberValid;

    // submit to the server if the form is valid
    if (isFormValid) {

    
            let form=new FormData(this);
            //sent Register Servlet
            $("#SubmitBTN").hide();
            $("#loader").show();
            $.ajax({
                 url:"RegisterServlet",
                 type:'POST',
                 data:form, 
                 success: function(data,textStatus,jqXHR){
                      console.log(data);
                     $("#SubmitBTN").show();
                      $("#loader").hide();
                      if(data.trim()==='Done')
                      {
                         swal("Registred Successfully")
                                            .then((value) => {
                                             window.location="login_page.jsp"
                                            });
                                        }   
                                    else
                                    {
                                                             swal(data);

                                    }
                                    },
                error:function(jqXHR,textStatus,errorThrown){
                    console.log(jqXHR)
                      $("#SubmitBTN").show();
                      $("#loader").hide();
                     swal("Something went wrong");
                                            
                },
                
                processData:false,
                contentType:false
            });
    }
    
    else{
                             swal("please ensure you fill details correctly");

    }
            
          /*  $.ajax({
                url:"RegisterServlet",
                type:'POST',
                data:form, 
                success: function(data,textStatus,jqXHR){
                    console.log(data);
                },
                error:function(jqXHR,textStatus,errorThrown){
                    console.log(jqXHR)
                },
                
                processData:false,
                contentType:false
            });*/
        });
    });



const debounce = (fn, delay = 500) => {
    let timeoutId;
    return (...args) => {
        // cancel the previous timer
        if (timeoutId) {
            clearTimeout(timeoutId);
        }
        // setup a new timer
        timeoutId = setTimeout(() => {
            fn.apply(null, args)
        }, delay);
    };
};


form.addEventListener('input', debounce(function (e) {
    switch (e.target.id) {
        case 'username':
            checkUsername();
            break;
        case 'email':
            checkEmail();
            break;
        case 'password':
            checkPassword();
            break;
        case 'confirm-password':
            checkConfirmPassword();
            break;
        case 'dob':
            checkDate();
            break;
            
        case 'roll':
            checkrollno();
            break;
            
         case 'regid':
            checkrollno();
            break;
            
          case 'Pno':
            checkPhoneNumber();
            break;
            
     
            
            
            
         
         
    }
}));



