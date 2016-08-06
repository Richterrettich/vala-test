int main(string[] args){
  return new MyApplication().run(args);
}

class MyApplication : Granite.Application{
  Gtk.Window window;


  construct {
    program_name = "hallo welt";
  }

  public override void activate() {
    window = new Gtk.Window();
    window.window_position = Gtk.WindowPosition.CENTER;
    add_window(window);

    window.set_default_size(800,550);

    var myView = new Gtk.SourceView();
    window.add(myView);
    foreach (string id in Gtk.SourceLanguageManager.get_default().get_language_ids()){
      stdout.printf("%s\n",id);

    }
    window.show_all();

  }
}
