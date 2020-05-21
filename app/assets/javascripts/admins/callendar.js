 // イベント非表示にした際に、色を変える処理を行う為
  $(window).ready(function(){
      var test = $("#calendar .fc-view-container").find(".fc-content");
      test.each(function(index, element){
        color_label = gon.make[index][5];
        $(this).addClass("fc-"+String(color_label));
      });
  });

$(function () {
// カレンダーを正しく読み込むための記載。複数表示されないように関数を2つ作成
　　// 設定を読みこむ
	console.log(gon.events)
    function eventCalendar() {
        return $('#calendar').fullCalendar({});
  　};
    // 複数表示されないようカレンダーを削除
    function clearCalendar() {
        $('#calendar').html('');
    };


  // カレンダー表示オプション
  // console.log('test')
    $('#calendar').fullCalendar({
    header: {
		left: 'today prev', //左側に配置する要素
		center: 'title', //中央に配置する要素
		right: 'next' //右側に配置する要素
	  },
      // 日本語表記に
      monthNames: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],
      monthNamesShort: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],
      dayNames: ['日曜日','月曜日','火曜日','水曜日','木曜日','金曜日','土曜日'],
      dayNamesShort: ['日','月','火','水','木','金','土'],

      timeFormat: 'HH:mm', // 時間表示フォーマット
      timezone: 'Asia/Tokyo', // タイムゾーン設定


    //イベントクリック
    eventClick: function(event) {
      // console.log(event.id)
       if (confirm(event.title + '詳細ページへ遷移しますか？')) {
    　　　 window.location.href = `/admins/events/${event.id}`;
       }
    },


    // イベントを指定して色を変える試し。試行錯誤中
    //eventRender: function (event, element){

    //gon.events.forEach(e => console.log("hoge",e));
    //{
    //console.log(gon.events);
    //element.addClass("fc-" + event.title.replace(/\s+/g, "_"));
    //},


    // 登録したイベントを表示させる
    events: function(start, end, timezone, callback) {
    	var events = [];
        for(var i=0; i < gon.events.length; i++) {
        	// なぜか９時間前で表示されるため、９時間分足すことを記述
        	var starttime = (new Date(gon.events[i].start_datetime)).getTime()+(9*60*60*1000);
        	var endtime = (new Date(gon.events[i].end_datetime));
//          if(gon.events[i].validity == true ){
            events.push({
              id: gon.events[i].id,
              title: gon.events[i].title,
              start: starttime,
              end: endtime
            });
        };
        callback(events);
        }
    })
});