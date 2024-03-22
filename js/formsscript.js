
  const rfullname = document.getElementById("rfullname");
  const remail = document.getElementById("remail");
  const rpassword=document.getElementById("rpassword");
  const rmno = document.getElementById("rmno");
  const rpincode = document.getElementById("rpincode");


   // function for form varification
    function formValidation(){  
    // checking name length
    if (!rfullname.value.match(/^[a-zA-Z ]*$/)) {
    alert("enter only characters");
    rfullname.focus();
    return false;
    }
    // checking email
    if (!remail.value.match(/^\w+([\.-]?\w+)+@\w+([\.-]?\w+)+(\.\w{2,3})+$/)) {
    alert("Please enter a valid email!");
    remail.focus();
    return false;
    }
    // checking password
    if (!rpassword.value.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-z0-9])(?!.*\s).{8}$/)) {
    alert("Password length must be 8 characters, incliding  uppercash, lowercaash, number and special symbol !");
    rpassword.focus();
    return false;
    }
    // checking phone number
    if (!rmno.value.match(/^[1-9][0-9]{9}$/)) {
    alert("Phone number must be 10 characters long number and first digit can't be 0!");
    rmno.focus();
    return false;
    }
    // checking zip code
    if (!rpincode.value.match(/^[0-9]{6}$/)) {
    alert("Pin code must be 6 characters long number!");
    rpincode.focus();
    return false;
    }
    return true;
}