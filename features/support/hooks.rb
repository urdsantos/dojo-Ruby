Before do
  page.current_window.resize_to(1600, 1024)

  @file = YAML.load_file(File.join(Dir.pwd, "features/support/data/login.yaml"))

  @login_page = Login.new
  @component = Components.new
  @dashboard = Dashboard.new
end
