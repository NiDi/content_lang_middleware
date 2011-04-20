require 'rack/utils'
module ContentLangMiddleware
  class ContentLang < ::Rails::Railtie

    initializer "add_content_lang_to_middleware" do
      config.app_middleware.use(ContentLangMiddleware)

      # ApplicationController.send(:include, ControllerMethods)
      # 
      # ActiveSupport.on_load :action_view do
      #   include L10nAssets::HelperMethods
      # end
    end

  end


  class ContentLangMiddleware
    
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers = ::Utils::HeaderHash.new(headers)
      headers['Content-Language'] ||= "de" 
      [status, headers, body]
    end
  end


  # module ControllerMethods
  # 
  #   def store_locale_in_session
  #     session[:current_locale] = I18n.locale
  #   end
  # 
  # end
  # 
  # 
  # module HelperMethods
  # 
  #   def l10n_image_tag(source, options={})
  #     image_tag("/l10n-images/#{source}", options)
  #   end
  # 
  # end
end
