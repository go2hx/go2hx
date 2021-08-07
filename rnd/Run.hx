package;

function main() {
	Main.exportBool = true;
	var modules = Main.init(["-ident", "./rnd"]);
	if (modules.length == 0)
		throw "no exported path";
	var path = modules[0].path;
	var last = path.lastIndexOf(".") + 1;
	var name = path.substr(last);
	name = name.charAt(0).toUpperCase() + name.substr(1);
	path += "." + name;
	var command = 'haxe -cp golibs -main $path --interp';
	// command += ' --macro stdgo.internal.GoGen.build()';
	trace(command);
	Sys.command(command);

	Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
	Sys.command("go run ./rnd");
}
