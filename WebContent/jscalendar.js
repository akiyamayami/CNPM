  // these are labels for the days of the week
  cal_days_labels = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  // these are human-readable month name labels, in order
  cal_months_labels = ['January', 'February', 'March', 'April',
                       'May', 'June', 'July', 'August', 'September',
                       'October', 'November', 'December'];

  // these are the days of the week for each month, in order
  cal_days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  // this is the current date
  cal_current_date = new Date(); 

  function Calendar(month, year) {
    this.month = (isNaN(month) || month == null) ? cal_current_date.getMonth() : month;
    this.year  = (isNaN(year) || year == null) ? cal_current_date.getFullYear() : year;
    this.html = '';
  }

  Calendar.prototype.generateHTML = function(){
    
    var firstDay = new Date(this.year, this.month, 1);
    var startingDay = firstDay.getDay();
    var top = 0;
    var height = 21;
    var local = "'create Event.jsp'";
    var monthLength = cal_days_in_month[this.month];
    
    if (this.month == 1) { 
      if((this.year % 4 == 0 && this.year % 100 != 0) || this.year % 400 == 0){
        monthLength = 29;
      }
    }
    
    var monthName = cal_months_labels[this.month]
    var html = '<div class="mv-container">';
    html += '<table cellpadding="0" cellspacing="0" class="mv-daynames-table" id="mvDaynamesTable">';
    html += '<tr>';
    for(var i = 0; i <= 6; i++ ){
      html += '<th class="mv-dayname" title="'+ cal_days_labels[i] + '">';
      html += cal_days_labels[i];
      html += '</th>';
    }
    html += '</tr></table>';
    html += '<div class="mv-event-container" id="mvEventContainer">';

    var day = 1;
    for (var i = 0; i < 9; i++) {
      if(top != 80)
      {
        html += '<div class="month-row" style="top:'+top+'%;height:'+height+'%">';
        top += 20;
      }
      else
      {
        html += '<div class="month-row" style="top:80%;bottom:0">';
      }

      html += '<table cellpadding="0" cellspacing="0" class="st-bg-table">';
      html += '<tr>';

      for (var k = 0 ; k <= 6; k++) {
        html += '<td class="st-bg" onclick="location.href='+local+';">&nbsp;</td>';
      }
      html += '</tr></table>';
      html += '<table cellpadding="0" cellspacing="0" class="st-grid">';
      html += '<tr>'

      for (var j = 0; j <= 6; j++) { 
        html += '<td class="st-dtitle st-dtitle-fr"><span>';
        if (day <= monthLength && (i > 0 || j >= startingDay)) {
          html += day;
          day++;
        }
        html += '</span></td>';
      }
      html += '</tr>';
      html += '<tr>';
      for (var j = 0; j <= 6; j++) {
        html += '<td class="st-c st-s">&nbsp;</td>';
      }
      html += '</tr>';
      if (day > monthLength) {
        break;
      }
      else
      {
        html += '</table></div>';     
      }
    }
    html += '</div></div>';

    this.html = html;
  }

  Calendar.prototype.getHTML = function() {
    return this.html;
  } 


$(document).ready(function(){
	var monthNow = cal_current_date.getMonth();
    var yearNow = cal_current_date.getFullYear();
    var flag = 1;
    $('#thang').text(cal_months_labels[monthNow]);
    $('#nam').text( yearNow);
    var cal = new Calendar(monthNow, yearNow);
    cal.generateHTML();
    $('#dtTable').append(cal.getHTML());
    
    $('#btleft').click(function() {
        monthNow--;
        if (monthNow < 0) {
            monthNow = 11;
            yearNow--;
        }
        if (flag == 0) {
            var cal = new Calendar(monthNow, yearNow);
            cal.generateHTML();
            $('#dtTable').append(cal.getHTML());
            flag = 1;
        } else {
            $(".mv-container").remove();
            var cal = new Calendar(monthNow, yearNow);
            cal.generateHTML();
            $('#dtTable').append(cal.getHTML());
        }
        $('#thang').text(cal_months_labels[monthNow]);
        $('#nam').text(yearNow);
    });
    $('#btright').click(function() {
        monthNow++;
        if (monthNow > 11) {
            monthNow = 0;
            yearNow++;
        }
        if (flag == 0) {
            var cal = new Calendar(monthNow, yearNow);
            cal.generateHTML();
            $('#dtTable').append(cal.getHTML());
            flag = 1;
        } else {
            $(".mv-container").remove();
            var cal = new Calendar(monthNow, yearNow);
            cal.generateHTML();
            $('#dtTable').append(cal.getHTML());
        }
        $('#thang').text(cal_months_labels[monthNow]);
        $('#nam').text(yearNow);
    });
})