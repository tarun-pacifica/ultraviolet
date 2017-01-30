# == Route Map
#
#    Prefix Verb URI Pattern          Controller#Action
# radiation POST /radiation(.:format) radiations#create
#

Rails.application.routes.draw do
      resource :radiation, only: [:create]
end