Before do
  page.current_window.resize_to(1600, 1024)

  @file = YAML.load_file(File.join(Dir.pwd, "features/support/data/login.yaml"))
  @file = YAML.load_file(File.join(Dir.pwd, "features/support/data/recover.yaml"))

  @login_page = Login.new
  @component_page = Components.new
  @dashboard_page = Dashboard.new
  @recover_page = RecoverPassword.new
end
