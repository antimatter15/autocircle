require 'open-uri'
require 'rubygems'
require 'json'
require 'net/http'
require 'cgi'

users = JSON.parse(open('http://hngp.axxim.net/home/json').read()).map { |e|
  "g:#{e}"
}


ring = [["Brian Strickrodt","101377908890150046351",false,false,"//lh5.googleusercontent.com/-uXMXjjlTOGM/AAAAAAAAAAI/AAAAAAAAA8E/wOAWCL5Leu4/s48-c-k/photo.jpg","./101377908890150046351"],["Paul Graham","114939270563299965266",false,false,"//lh5.googleusercontent.com/-Z9V3jzgsUkQ/AAAAAAAAAAI/AAAAAAAAAHM/4_P07S6YIsY/s48-c-k/photo.jpg","./114939270563299965266"],["Dario Casta\u00f1\u00e9","118202472720703488708",false,false,"//lh4.googleusercontent.com/-SinhqV1cOFM/AAAAAAAAAAI/AAAAAAAAAWY/U6lSjotenUs/s48-c-k/photo.jpg","./118202472720703488708"],["Arnaud Rouyer","100992466097396687731",false,false,"//lh4.googleusercontent.com/-RLBnayQQqlw/AAAAAAAAAAI/AAAAAAAAAMs/JssKU2AvrOI/s48-c-k/photo.jpg","./100992466097396687731"],["Zvika Rap","105456405898355245654",false,false,"https://lh3.googleusercontent.com/-HYULMoNn_FI/AAAAAAAAAAI/AAAAAAAAAAA/g7dzPXHQGtw/s48-c-k/photo.jpg","./105456405898355245654"],["Dave Gooden","107527065914648914663",false,false,"https://lh6.googleusercontent.com/-PsPZaK6Eb_8/AAAAAAAAAAI/AAAAAAAAAAA/fLclaN7g6Vg/s48-c-k/photo.jpg","./107527065914648914663"],["Dave Sims","104963730109196349592",false,false,"//lh4.googleusercontent.com/-tNcqJZSh6xA/AAAAAAAAAAI/AAAAAAAABcM/uslFL9txl_o/s48-c-k/photo.jpg","./104963730109196349592"],["J\u00e9r\u00e9my Naegel","110860203879684078598",false,false,"//lh3.googleusercontent.com/-ZdpkmgWYdg0/AAAAAAAAAAI/AAAAAAAAKGA/mWLP6eLURvw/s48-c-k/photo.jpg","./110860203879684078598"],["Steve Jalim","115117552323501212712",false,false,"//lh4.googleusercontent.com/-bFCSORCoZ-I/AAAAAAAAAAI/AAAAAAAAAEs/Dsl5ThlUcbE/s48-c-k/photo.jpg","./115117552323501212712"],["Aaron Calta","106651712615283153604",false,false,"//lh5.googleusercontent.com/-OJ3AfjJiOi8/AAAAAAAAAAI/AAAAAAAAAkk/5URflDBIohM/s48-c-k/photo.jpg","./106651712615283153604"],["Chaz Steen","113271521496981670631",false,false,"//lh4.googleusercontent.com/-MjBC-_XOB7o/AAAAAAAAAAI/AAAAAAAAAEw/LoH0_1mVdQs/s48-c-k/photo.jpg","./113271521496981670631"],["ben lee","103898303658994400928",false,false,"//lh5.googleusercontent.com/-RP4i60qou8A/AAAAAAAAAAI/AAAAAAAAACM/060LCeR2_Yc/s48-c-k/photo.jpg","./103898303658994400928"],["Soufiane Hassou","117794232268898562700",false,false,"https://lh3.googleusercontent.com/-Qg0utLMQgNc/AAAAAAAAAAI/AAAAAAAAAAA/bxYqX97G2Tg/s48-c-k/photo.jpg","./117794232268898562700"]]

null = nil

spar = ["Automatically generated from http://hngp.axxim.net/ at "+Time.now.to_s,"oz:116088562611144379106.134957c1dc6.0"+Time.now.to_i.to_s,null,null,null,null,"[]",null,"{\"aclEntries\":[{\"scope\":{\"scopeType\":\"anyone\",\"name\":\"Anyone\",\"id\":\"anyone\",\"me\":true,\"requiresKey\":false},\"role\":20},{\"scope\":{\"scopeType\":\"anyone\",\"name\":\"Anyone\",\"id\":\"anyone\",\"me\":true,\"requiresKey\":false},\"role\":60}]}",true,[],false,false,null,[],false,false,null,null,null,null,[9,null,[null,null,null,null,null,[null,null,"Hacker Circle",ring,users]]],null,null,null,null,null,false,false,false]

puts "spar=#{CGI::escape(spar.to_json)}&at=BLAGGITYBLAGBLAG&"
