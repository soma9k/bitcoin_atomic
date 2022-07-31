class Api::MoneyController < ApplicationController
    def show
      # 今回の場合 params[:id] => "btc"
      url = URI.parse("https://public.bitbank.cc/#{params[:id]}_jpy/ticker")
      # response_textに返ってきた値が入る
      response_text = Net::HTTP.get(url)
      # response_textは文字列なのでパースしてハッシュに変換する
      response_hash = JSON.parse(response_text)
      # jsファイルに送る
      render json: response_hash
    end
  end