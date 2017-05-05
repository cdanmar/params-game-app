Rails.application.routes.draw do
  get '/game' => 'params_games#query'
  # get '/guess/:user_guess' => 'params_games#guess'
  get '/url_segment_params/:this_is_a_key' => 'params_games#url_segment'

  get '/form_show_params' => 'params_games#form_show'
  post '/form_send_params' => 'params_games#form_send'

  get '/guess_form' => 'params_games#guess_form'
  post '/guess_send' => 'params_games#guess_send'
end
