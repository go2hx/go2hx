package;

function main() {
	Main.exportBool = true;
	Main.init(["-ident", "./rnd"]);
	for (path in Main.exportPaths) {
		path = StringTools.replace(path, "/", ".");
		var command = 'haxe -cp golibs -main $path --macro stdgo.internal.GoGen.build() --interp';
		trace(command);
		Sys.command(command);
	}
	Sys.println("expected:");
	Sys.command("go run ./rnd");
}
