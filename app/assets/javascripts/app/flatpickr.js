  $(document).ready(function(){
    flatpickr('#flatpickr-user',
    {
      mode: "range",
      minDate: "today",
      dateFormat: "d-m-Y",
      "locale": {
      "firstDayOfWeek": 1
      },
     onClose: function(selectedDates, dateStr, instance){
      //window.location.href = 'locations' + '?in=' + formatDate(selectedDates[0]) + '&out=' + formatDate(selectedDates[1]);
      if (window.location.search.includes("=")) {
        window.location.href = 'locations' + window.location.search + '&in=' + formatDate(selectedDates[0]) + '&out=' + formatDate(selectedDates[1]);
      }else{
        window.location.href = 'locations' + '?in=' + formatDate(selectedDates[0]) + '&out=' + formatDate(selectedDates[1]);
      }

      }
    }
    );
  });

    $(document).ready(function(){
    flatpickr('#flatpickr-show',
    {
      mode: "range",
      minDate: "today",
      dateFormat: "d-m-Y",
      "locale": {
      "firstDayOfWeek": 1
      },
     onClose: function(selectedDates, dateStr, instance){
         window.location.search = '?in=' + formatDate(selectedDates[0]) + '&out=' + formatDate(selectedDates[1]);
      }
    }
    );
  });

  $(document).ready(function(){
    flatpickr('#flatpickr-owner',
    {
      mode: "multiple",
      minDate: "today",
      dateFormat: "d-m-Y",
      "locale": {
        "firstDayOfWeek": 1
      }
    });
  });

  function formatDate(date) {
  var monthNames = [
    "January", "February", "March",
    "April", "May", "June", "July",
    "August", "September", "October",
    "November", "December"
  ];

  var day = date.getDate();
  var monthIndex = date.getMonth();
  var year = date.getFullYear();

  return day + '-' + (monthIndex+1) + '-' + year;
}
