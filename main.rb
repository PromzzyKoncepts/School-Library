require './app'

def main
  app = App.new
  app.load_data
  # app.open_console
  app.run
end

puts main
