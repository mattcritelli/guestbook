Rails.application.routes.draw do

get 'entries' => 'entries#sign_in'
post 'entries' => 'entries#sign_in'

end
