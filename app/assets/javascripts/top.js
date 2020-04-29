//skippr(home)
$(document).ready(function () {
    $("#theTargetTop").skippr({
      transition: 'slide',
      speed: 1000,
      navType: 'bubble',
      childrenElementType: 'div',
      autoPlay: true,
      autoPlayDuration: 2000
    });
});