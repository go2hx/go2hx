package;

function main() {
    Main.exportBool = true;
    Main.init(["./rnd"]);
    for (path in Main.exportPaths) {
        path = StringTools.replace(path,"/",".");
        var command = 'haxe -cp golibs -main $path --interp';
        trace(command);
        Sys.command(command);
    }
}