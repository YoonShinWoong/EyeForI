{"filter":false,"title":"test.rb","tooltip":"/test.rb","undoManager":{"mark":21,"position":21,"stack":[[{"start":{"row":0,"column":0},"end":{"row":12,"column":10},"action":"remove","lines":["require 'naver-sdk'","","Naver.configure do |config|","  config.client_id     = \"3br6Cy8iz8_KWo5SnkQ1\"","  config.client_secret = \"nCauY9hxXz\"","  config.redirect_uri  = \"https://eyefori-woongsin94.c9users.io/oauth/callback\"","  config.timeout = 10","  config.debug = false","end","","res = Naver::Map.geocode(query: \"서울특별시 종로구 종로 248\")","","puts res.x"],"id":2},{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"insert","lines":["@"]},{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"insert","lines":["k"]},{"start":{"row":0,"column":2},"end":{"row":0,"column":3},"action":"insert","lines":["i"]},{"start":{"row":0,"column":3},"end":{"row":0,"column":4},"action":"insert","lines":["n"]},{"start":{"row":0,"column":4},"end":{"row":0,"column":5},"action":"insert","lines":["d"]},{"start":{"row":0,"column":5},"end":{"row":0,"column":6},"action":"insert","lines":["e"]},{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"insert","lines":["r"]}],[{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"insert","lines":[" "],"id":3},{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"insert","lines":["="]}],[{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"insert","lines":[" "],"id":4}],[{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"insert","lines":["K"],"id":5},{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"insert","lines":["i"]},{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":["n"]},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["d"]},{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"insert","lines":["e"]},{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"insert","lines":["r"]}],[{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"remove","lines":["r"],"id":6},{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"remove","lines":["e"]},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"remove","lines":["d"]},{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"remove","lines":["n"]},{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"remove","lines":["i"]},{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"remove","lines":["K"]}],[{"start":{"row":0,"column":10},"end":{"row":0,"column":154},"action":"insert","lines":["Kindergarden.where(\"sidoname like ? and sigunguname like ? and crname like ?\", \"%#{params[:sido]}%\",\"%#{params[:sigu]}%\",\"%#{params[:crname]}%\")"],"id":7}],[{"start":{"row":0,"column":30},"end":{"row":0,"column":73},"action":"remove","lines":["sidoname like ? and sigunguname like ? and "],"id":8}],[{"start":{"row":0,"column":46},"end":{"row":0,"column":88},"action":"remove","lines":["\"%#{params[:sido]}%\",\"%#{params[:sigu]}%\","],"id":9}],[{"start":{"row":0,"column":48},"end":{"row":0,"column":66},"action":"remove","lines":["#{params[:crname]}"],"id":10},{"start":{"row":0,"column":48},"end":{"row":0,"column":49},"action":"insert","lines":["d"]}],[{"start":{"row":0,"column":48},"end":{"row":0,"column":49},"action":"remove","lines":["d"],"id":11}],[{"start":{"row":0,"column":48},"end":{"row":0,"column":49},"action":"insert","lines":["어"],"id":15}],[{"start":{"row":0,"column":49},"end":{"row":0,"column":50},"action":"insert","lines":["린"],"id":17}],[{"start":{"row":0,"column":50},"end":{"row":0,"column":51},"action":"insert","lines":["이"],"id":19}],[{"start":{"row":0,"column":54},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":20},{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":["t"]},{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":["y"]},{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["p"]},{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"insert","lines":["e"]}],[{"start":{"row":1,"column":4},"end":{"row":1,"column":6},"action":"insert","lines":["()"],"id":21}],[{"start":{"row":1,"column":5},"end":{"row":1,"column":6},"action":"insert","lines":["@"],"id":22},{"start":{"row":1,"column":6},"end":{"row":1,"column":7},"action":"insert","lines":["k"]},{"start":{"row":1,"column":7},"end":{"row":1,"column":8},"action":"insert","lines":["i"]},{"start":{"row":1,"column":8},"end":{"row":1,"column":9},"action":"insert","lines":["n"]},{"start":{"row":1,"column":9},"end":{"row":1,"column":10},"action":"insert","lines":["d"]},{"start":{"row":1,"column":10},"end":{"row":1,"column":11},"action":"insert","lines":["e"]},{"start":{"row":1,"column":11},"end":{"row":1,"column":12},"action":"insert","lines":["r"]}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":23}],[{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"insert","lines":["r"],"id":24},{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"insert","lines":["e"]},{"start":{"row":0,"column":2},"end":{"row":0,"column":3},"action":"insert","lines":["q"]},{"start":{"row":0,"column":3},"end":{"row":0,"column":4},"action":"insert","lines":["u"]},{"start":{"row":0,"column":4},"end":{"row":0,"column":5},"action":"insert","lines":["i"]},{"start":{"row":0,"column":5},"end":{"row":0,"column":6},"action":"insert","lines":["r"]},{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"insert","lines":["e"]}],[{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"insert","lines":[" "],"id":25}],[{"start":{"row":0,"column":8},"end":{"row":0,"column":10},"action":"insert","lines":["''"],"id":26}],[{"start":{"row":0,"column":9},"end":{"row":0,"column":44},"action":"insert","lines":["20180918111401_create_kindergardens"],"id":27}],[{"start":{"row":0,"column":44},"end":{"row":0,"column":45},"action":"insert","lines":["."],"id":28},{"start":{"row":0,"column":45},"end":{"row":0,"column":46},"action":"insert","lines":["r"]},{"start":{"row":0,"column":46},"end":{"row":0,"column":47},"action":"insert","lines":["b"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":13},"end":{"row":2,"column":13},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":446,"mode":"ace/mode/ruby"}},"timestamp":1538388772042,"hash":"8f5596b7705842bc631bbac59d0fad2e6e48b618"}