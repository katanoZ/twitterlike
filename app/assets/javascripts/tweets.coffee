# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in ready = ->

$(document).on 'ready turbolinks:load', ->

    #つぶやきをくま語に変換
    contents = $(".tweet-content")
    for content in contents
        content.innerHTML = content.innerHTML.replace(/。/g,"くま。");
        content.innerHTML = content.innerHTML.replace(/？/g,"くま？");
        content.innerHTML = content.innerHTML.replace(/！/g,"くま！");
        content.innerHTML = content.innerHTML.replace(/$/,"くま");
        content.innerHTML = content.innerHTML.replace(/。くま$/,"。");
        content.innerHTML = content.innerHTML.replace(/？くま$/,"？");
        content.innerHTML = content.innerHTML.replace(/！くま$/,"！")   

    #タイトルを設定
    messages = [
        "こんにちは。"
        "通りすがりのくまです。"
        "そうですね。"
        "いえーいくまくま"
        "つぶやくま"
        "そういえば・・・"
        "よろしくまです。"
        "くまと人間の共生について"
        "そうですか？"
        "うーん"
        "あれ？"
        "そうじゃない"
        "くまが街にやってきた"
        "どんぐり足りてる？"
        "くま？"
        "そうだよ"
    ]
    titles = $(".title")
    for title in titles
        title.innerHTML = messages[Math.floor( Math.random() * messages.length)]
        
    #画像を設定
    paths = [
        "assets/kuma01.png"
        "assets/kuma02.png"
        "assets/kuma03.png"
        "assets/kuma04.png"
    ]
    images = $(".image")
    for image in images
        image.src = paths[Math.floor( Math.random() * paths.length)]
