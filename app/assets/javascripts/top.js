//skippr(home)
$(function(){
  $("document").ready(function(){

  $("#theTargetTop").skippr({
    transition: 'fade',
    speed: 1000,
    navType: 'bubble',
    childrenElementType: 'div',
    autoPlay: true,
    autoPlayDuration: 2000
  });
  });
});