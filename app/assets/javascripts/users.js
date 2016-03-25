# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



  $('.modal-trigger').leanModal();
    var seconds = new ProgressBar.Circle('.timer', {
    duration: 100,
    color: "#FCB03C",
    trailColor: "#ddd",
    strokeWidth:2,
  });

var gettime = 15;
var temptime = gettime * 60
var second =0;
var minute =0;

function settime(time){
  if(time<10){
    ret = "0" + time
  }else{
    ret = time
  }
  return ret;
}

  setInterval(function() {

    disp_minute = settime(gettime - minute);
    disp_second = settime(59-second);


    seconds.animate( (minute*60+second)/ (gettime*60), function() {
        seconds.setText(disp_minute+":"+disp_second);
    });

    second++;
    if(second>59){
      second = 0;
      minute ++;
    }
  }, 1000);