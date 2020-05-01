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
//初回読み込み、リロード、ページ切り替えで動く。turbolinks回避のため
// カレンダーの表示オプション
$(document).on('turbolinks:load', () => {
  console.log('test')
    $('#calendar').fullCalendar({
    // 日本語表記に
    header: {
		//それぞれの位置に設置するボタンやタイトルをスペース区切りで指定できます。指定しない場合、非表示にできます。
		// 'title'→月・週・日のそれぞれの表示に応じたタイトル
		// 'prev'→前へボタン
		// 'next'→次へボタン
		// 'today'→当日表示ボタン
		left: 'today prev', //左側に配置する要素
		center: 'title', //中央に配置する要素
		right: 'next' //右側に配置する要素
	  },
      monthNames: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],
      monthNamesShort: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],
      dayNames: ['日曜日','月曜日','火曜日','水曜日','木曜日','金曜日','土曜日'],
      dayNamesShort: ['日','月','火','水','木','金','土'],

      timeFormat: 'HH:mm', // 時間表示フォーマット
      timezone: 'Asia/Tokyo', // タイムゾーン設定
      /* events: [
    {
      title  : 'event1',
      start  : '2020-04-01'
    },
    {
      title  : 'event2',
      start  : '2020-04-05',
      end    : '2020-04-05'
    },
    {
      title  : 'event3',
      start  : '2020-04-09T12:30:00',
      allDay : false // will make the time show
    }
    ]*/

    //イベントクリック
    eventClick: function(event) {
      // console.log(event.id)
       if (confirm(event.title + '詳細ページへ遷移しますか？')) {
    　　　 window.location.href = `/admins/events/${event.id}`;
       }
    },


    // 登録したイベントを表示させる
    events: function(start, end, timezone, callback) {
    	var events = [];
        for(var i=0; i < gon.events.length; i++) {
        	// なぜか９時間前で表示されるため、９時間分足すことを記述
        	var starttime = (new Date(gon.events[i].start_datetime)).getTime()+(9*60*60*1000);
        	var endtime = (new Date(gon.events[i].end_datetime)).getTime()+(9*60*60*1000);
          if(gon.events[i].validity == true ){
            events.push({
              id: gon.events[i].id,
              title: gon.events[i].title,
              start: starttime,
              end: endtime
            });
          };
        };
        callback(events);
        }
    });
    })
});