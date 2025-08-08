function main() {
    final proc = new sys.io.Process("haxelib path hxcpp");
    var path = "";
    try {
        path = proc.stdout.readLine();
    }catch(_) {
        return;
    }
    Sys.setCwd(path);
    Sys.setCwd("./tools/hxcpp");
    Sys.command("haxe compile.hxml");
    proc.close();
}