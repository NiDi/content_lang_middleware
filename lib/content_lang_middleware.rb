require 'rack/utils'
module ContentLangMiddleware
  class ContentLang < ::Rails::Railtie

    initializer "add_content_lang_to_middleware" do
      config.app_middleware.use(ContentLangMiddleware)
    end

  end


  class ContentLangMiddleware
    
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers['Content-Language'] ||= I18n.locale.to_s 
      [status, headers, body]
    end
  end

end
