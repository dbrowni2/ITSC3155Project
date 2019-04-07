OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '530416935430-lt3e5q6v5sp61fprhn49tsgfjbdp0k8i.apps.googleusercontent.com', 'yC2nxAGMA7dxwrv2ChrRapEh', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end