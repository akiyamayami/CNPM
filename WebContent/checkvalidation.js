$(document).ready(function() {	
    $("#register").validate({
        rules: {
            Name: "required",
            ID: "required",
            Password: {
                required: true,
                minlength: 6,
            },
            Confirm_Password: {
                equalTo: "#passCom"
            },
            Email: {
            	required: true,
                email: true
            },
            Phone: "required",
        },
        messages: {
            Name: "Please enter your Name",
            ID: "Please enter your ID",
            Password: {
                required: "Please enter your Password",
                minlength: "Your password must be at least 5 characters long",
            },
            Confirm_Password: {
                equalTo: "Your Confirm password must equa to Password"
            },
            Email: {
                Email: "Please enter a valid email address",
            },
            Phone: "Please enter your Phone",
        },
        submitHandler: function(form) {
            form.submit();
        }
    });
})