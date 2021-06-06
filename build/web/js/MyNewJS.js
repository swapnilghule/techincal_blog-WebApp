/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* global isFormValid, form */

const usernameEl = document.getElementById('username');
const emailEl = document.getElementById('email');
const passwordEl = document.getElementById('password');
const confirmPasswordEl = document.getElementById('confirm-password');


const btn = document.getElementById('submit');





      




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
                isConfirmPasswordValid = checkConfirmPassword();
        
               
                

               let isFormValid = isUsernameValid &&
                        isEmailValid &&
                        isPasswordValid &&
                        isConfirmPasswordValid ;

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
      
            
     
            
            
            
         
         
    }
}));



/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


