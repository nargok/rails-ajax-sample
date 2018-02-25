class AjaxController < ApplicationController
  def index

  end

  def upanel
    @time = Time.now.to_s
  end

  def search
    # 選択ボックスに表示する出版社名を取得
    @books = Book.select(:publish).distinct
  end

  def result
    sleep(2)
    # 選択ボックスで指定された出版社でbooksテーブルを検索
    @books = Book.where(publish: params[:publish])
  end
end
