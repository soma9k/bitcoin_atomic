$(function() {
    // api/money_controllerに送る
    let requestUrl = '/api/money/btc';
    $.ajax({
      url: requestUrl,
      type: 'get',
      dataType: 'json'
    })
    .done(function(json) {
      // 買値、売値を取り出す
      let sell_order_value = Number(json.data.sell);
      let buy_order_value = Number(json.data.buy);
      // 仲値を計算する
      let middle_rate = (sell_order_value + buy_order_value) / 2;
      middle_rate = Math.round(middle_rate);
      // 買値、売値、仲値のテキストを挿入する
      $(".buy-order-value").text(buy_order_value.toLocaleString() + " 円");
      $(".sell-order-value").text(sell_order_value.toLocaleString() + " 円");
      $(".middle-rate").text(middle_rate.toLocaleString() + " 円");
    })
    .fail(function() {
      alert('error');
    });
  })