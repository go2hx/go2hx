package;

function main() {
	Main.exportBool = true;
	var modules = Main.init(["-ident", "./rnd"]);
	if (modules.length == 0)
		throw "no exported path";

	var path = Util.modulePath(modules[0]);
	var command = 'haxe -cp golibs -main $path --interp';
	// command += ' --macro stdgo.internal.GoGen.build()';
	trace(command);
	Sys.command(command);

	Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
	Sys.command("go run ./rnd");
}
