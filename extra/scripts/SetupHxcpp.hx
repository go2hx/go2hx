function main() {
    final proc = new sys.io.Process("haxelib path hxcpp");
    final path = proc.stdout.readLine();
    Sys.setCwd(path);
    Sys.setCwd("./tools/hxcpp");
    Sys.command("haxe compile.hxml");
    proc.close();
}