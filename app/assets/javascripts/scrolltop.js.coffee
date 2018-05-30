# coffeeScriptを読み込ませる
ready = ->
  # scrollイベントを呼び出す
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    # 一番上から400px以上離れたら処理を行う
    height = $(window).scrollTop()
    if height > 400
      # アニメーション非表示　ボタンが表示されていないか
      element.fadeIn() if !visible
    else
      # アニメーション表示
      element.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

# coffeeScriptを読み込ませる
$(document).ready(ready)
$(document).on('page:load', ready)



#############################################
# ページがロードされた時にCoffeeScriptを読み込ませる
# ready = ->
#
# $(document).ready(ready)
# $(document).on('page:load', ready)
#############################################
# スクロールイベントを加える
# $(window).scrollTop()
#############################################
# スクロールイベントで行なう処理を分岐
# height = $(window).scrollTop();
# if height > 400
#   処理
# else
#   処理
#############################################
# 表示、非表示のアニメーション
# .fadeIn([speed], [callback])
# .fadeOut([speed], [callback])
#############################################
# ボタンが表示されているか確認する
# .is(':visible') // 表示
# .is(':hidden') // 非表示
#############################################
# クリック時に処理が起こるようにする
# $(document).on 'click', '要素', ->
#   処理
#############################################
# アニメーションをしながら自動でスクロール
# $('html, body').animate({ scrollTop: 0 }, 'slow')
# // move-page-topというdiv要素をクリックした時に動作する
# $(document).on 'click', '#move-page-top', ->
#   $('html, body').animate({ scrollTop: 0 }, 'slow')
#############################################
#############################################
#############################################
