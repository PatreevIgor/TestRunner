document.addEventListener('DOMContentLoaded', function() {
  var mixBut = document.getElementById("mixBut");

  if (gon.indicator_status == 'off') {
    mixBut.addEventListener("click", Start);
    mixBut.value = "Start";
  } else {
    mixBut.addEventListener("click", Stop);
    mixBut.value = "Stop";
  }

  function Start(){
    console.log("Started");
    mixBut.removeEventListener("click", Start);
    mixBut.addEventListener("click", Stop);
    mixBut.value = "Stop";

    $.ajax({
      type: "POST",
      url:  "/some_action",
      data: {indicator_working: 'on'}
    });
  }

  function Stop(){
    console.log("Stopped");
    mixBut.removeEventListener("click", Stop);
    mixBut.addEventListener("click", Start);
    mixBut.value = "Start";

    $.ajax({
      type: "POST",
      url:  "/some_action",
      data: {indicator_working: 'off'}
    });
  }
});
