# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
<script type="text/javascript">

function settime(num) {
  var ret;

  if(num<10){ret = "0" + num;}
  else{ret = num};

  return ret;

}
function showClock1() {
   var nowTime = new Date();
   var nowHour = settime(nowTime.getHours());
   var nowMin = settime(nowTime.getMinutes());
   var nowSec = settime(nowTime.getSeconds());
   var msg = nowHour + " : " + nowMin  ;
   document.getElementById("Clock").innerHTML = msg;
}
setInterval('showClock1()',1000);


  </script>