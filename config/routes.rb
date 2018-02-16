Caravan::Application.routes.draw do

  get '/blogs' => 'blogs#index'
  get '/blogs/new'=> 'blogs#new'
  post '/blogs' => 'blogs#create'
  #form_forで行くパスは自動で決まっちゃうので、blogs/にしてます
  get '/blogs/:id' => 'blogs#show'
  # :idに記事一軒一軒のid(数字)が入る
  # postはデータ送信の時に使用
end
