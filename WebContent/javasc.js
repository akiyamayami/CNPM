$(document).ready(function() {
    
    $('#submitbtn1').click(function() {
        $('#loginModal').modal('show');
    });
    $('#btnHideModal').click(function() {
      $('#loginModal').modal('hide');
    	
    });
    $('input[type="radio"]').click(function() {
        if ($(this).attr("value") == "Never") {
            $(".radio-After").prop("disabled", true);
            $(".radio-On").prop("disabled", true);
            $('input:radio[name="gender"][value="Never"]').prop('checked', true);
        }
        if ($(this).attr("value") == "After") {
            $(".radio-After").prop("disabled", false);
            $(".radio-On").prop("disabled", true);
            $('input:radio[name="gender"][value="After"]').prop('checked', true);
        }
        if ($(this).attr("value") == "On") {
            $(".radio-After").prop("disabled", true);
            $(".radio-On").prop("disabled", false);
            $('input:radio[name="gender"][value="On"]').prop('checked', true);
        }
    });
    $('#Cycleshow').click(function(){
        loadDoc1();
    });
    $('#Remindshow').click(function(){
        loadDoc2();
    });
    $('#Inviteshow').click(function(){
        loadDoc3();
    });
    $(document).on('click','#btnaddNoty',function(){
        $('.boxnoty').prepend("<div class='Reminder'> <select> <option>Email</option> <option>Phone</option> <option>Both</option> </select> <span> <input type='text' style='height: 20px;'> <select> <option>Seconds</option> <option>Minute</option> <option>Hours</option> <option>Day</option> <option>Week</option> </select> </span> </div>")
    });
    $('#RP').on('click','#rpchoise',function(){
        $('.RpWeek').removeClass("hide");
        $('.RpDay').removeClass("hide");
        $('.RpMonthly').removeClass("hide");
        $('.RpYear').removeClass("hide");
        $(this).find("option:selected").each(function() {
            if ($(this).attr("value") == "Daily") {
                $('.rp').hide();
                $('.RpDay').show();
            } else if ($(this).attr("value") == "Weekly") {
                $('.rp').hide();
                $('.RpWeek').show();
            } else if ($(this).attr("value") == "Monthly") {
                $('.rp').hide();
                $('.RpMonthly').show();
            } else if ($(this).attr("value") == "Yearly") {
                $('.rp').hide();
                $('.RpYear').show();
            } else {
                $('.rp').hide();
            }
        }).change();
    });
    $(document).on('load','.rp',function(){
       $('.rp').hide();
    });
     $(document).on('click','input[type="radio"]',function(){
       if ($(this).attr("value") == "Never") {
            $(".radio-After").prop("disabled", true);
            $(".radio-On").prop("disabled", true);
            $('input:radio[name="gender"][value="Never"]').prop('checked', true);
        }
        if ($(this).attr("value") == "After") {
            $(".radio-After").prop("disabled", false);
            $(".radio-On").prop("disabled", true);
            $('input:radio[name="gender"][value="After"]').prop('checked', true);
        }
        if ($(this).attr("value") == "On") {
            $(".radio-After").prop("disabled", true);
            $(".radio-On").prop("disabled", false);
            $('input:radio[name="gender"][value="On"]').prop('checked', true);
        }
    });
    $("#subnow").on('click',function(){
        $("#subNameEvent").click();
    });
    var s = new Array(1,2,3,4,5,6);
    for (var i = 0; i > s.length ; i++) {
        s[i] = 0;
    }
   $('#us1').click(function(){
  
        if(s[0] == 1)
        {
            s[0] = 0;
            $(this).removeClass('fa-lock');
            $(this).addClass('fa-unlock');
        }
        else
        {
            s[0] = 1;
            $(this).removeClass('fa-unlock');
            $(this).addClass('fa-lock');
        }
   });
   $('#us2').click(function(){
  
        if(s[1] == 1)
        {
            s[1] = 0;
            $(this).removeClass('fa-lock');
            $(this).addClass('fa-unlock');
        }
        else
        {
            s[1] = 1;
            $(this).removeClass('fa-unlock');
            $(this).addClass('fa-lock');
        }
   });
   $('#us3').click(function(){
  
        if(s[2] == 1)
        {
            s[2] = 0;
            $(this).removeClass('fa-lock');
            $(this).addClass('fa-unlock');
        }
        else
        {
            s[2] = 1;
            $(this).removeClass('fa-unlock');
            $(this).addClass('fa-lock');
        }
   });
   $('#us4').click(function(){
  
        if(s[3] == 1)
        {
            s[3] = 0;
            $(this).removeClass('fa-lock');
            $(this).addClass('fa-unlock');
        }
        else
        {
            s[3] = 1;
            $(this).removeClass('fa-unlock');
            $(this).addClass('fa-lock');
        }
   });
   $('#us5').click(function(){
  
        if(s[4] == 1)
        {
            s[4] = 0;
            $(this).removeClass('fa-lock');
            $(this).addClass('fa-unlock');
        }
        else
        {
            s[4] = 1;
            $(this).removeClass('fa-unlock');
            $(this).addClass('fa-lock');
        }
   });
   $('#us6').click(function(){
  
        if(s[5] == 1)
        {
            s[5] = 0;
            $(this).removeClass('fa-lock');
            $(this).addClass('fa-unlock');
        }
        else
        {
            s[5] = 1;
            $(this).removeClass('fa-unlock');
            $(this).addClass('fa-lock');
        }
   });
});
window.console = window.console || function(t) {};
if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
}
