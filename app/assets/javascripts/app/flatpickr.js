  $(document).ready(function(){
    flatpickr('#flatpickr-user',
    {
      mode: "range",
      minDate: "today",
      dateFormat: "d-m-Y",
      "locale": {
        "firstDayOfWeek": 1
      }
    });
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
