import Os;
class Main {
    
    static public function main():Void {
        var hello = "Hello World!";
        trace(hello); // Output: Hello World!
        trace("\n\n\n");

        var sys = Sys.args();

        
        trace(sys[0]); // Output: The first argument is...
        trace(sys[1]);
        trace(sys[2]);
        trace(sys[3]);
        trace(sys[4]); // Output: The first argument is...
        trace(sys[5]);
        trace(sys[6]);
        trace(sys[7]);
        
        trace("\n\n\n");

        // File Input and STD OUT
        var output_var = Os.io.File.OpenWrite("output.txt");
        var text = "Este es un texto desde un archivo.";
        Os.io.Stdout.setCustomOutput(output_var); 
        Os.io.Stdout.writeString(hello);
        Os.io.Stdout.resetOutput();

        output_var.close();

        // File an std IN 
        var input_var:String = Os.io.File.Read("./output.txt").readAll().toString().trim();
        
        Os.io.Stdout.writeString("Sabias que esto es:" + input_var + "\n");

        trace("\n\n\n");
        // Variables de ambiente
        trace(Os.getEnv().toString());
        trace(Os.OstemName());
        

    }

}
