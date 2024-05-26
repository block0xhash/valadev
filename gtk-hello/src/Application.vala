
public class MyAppx : Gtk.Application {
    
    public MyAppx() {
        Object (
            application_id: "com.github.username.reponame",
            flags: ApplicationFlags.FLAGS_NONE
        );
        
    }
    
    protected override void activate () {
    
        var button_hello = new Gtk.Button.with_label("It works" ) {
          margin_top = 12,
          margin_bottom =12,
          margin_start = 12,
          margin_end = 12
        };
        
        button_hello.clicked.connect ( () => {
            button_hello.label = "Hello, you clicked me";
            button_hello.sensitive = false;
        });
        

        
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        main_window.child = button_hello;
        main_window.present();
    }
    
    public static int main( string[] args) {
        return new MyAppx().run (args);
    }
}
