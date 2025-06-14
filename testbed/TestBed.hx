package;

function main() {
	try {
		sys.FileSystem.deleteFile("golibs/_internal/githubdotcom/go2hx/go4hx/testbed/.go2hx_cache");
	}catch(e) {}
	final args = ["./testbed"];
	//args.push("-compiler_cpp");
	if (haxe.macro.Compiler.getDefine("nocache") != null)
		args.push("-nocache");
	if (haxe.macro.Compiler.getDefine("_hl") != null) {
		args.push("-compiler_hl");
	}else{
		args.push("--rebuild");
	}
	if (haxe.macro.Compiler.getDefine("nogo4hx") != null)
		args.push("-nogo4hx");
	args.push(Sys.getCwd());
	var code = Sys.command("haxe --run Run " + args.join(" "));
	if (code != 0)
		throw "failed to compile";
	final main = "_internal.githubdotcom.go2hx.go4hx.testbed.Testbed";
	var command = 'haxe -cp golibs -main $main --macro \"Go2hxMacro.init()\" -hl testbed.hl';
	Sys.println(command);
	code = Sys.command(command);
	if (code != 0)
		throw "failed to build";
	command = "hl testbed.hl";
	Sys.println(command);
	code = Sys.command(command);
	if (code != 0)
		throw "failed to run";
	Sys.println("~~~~~~~~~~~~~~~~~~~~");
	code = Sys.command("haxelib run go2hx go run ./testbed");
	if (code != 0)
		throw "failed to run";
}
