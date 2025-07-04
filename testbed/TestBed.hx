package;

function main() {
	try {
		sys.FileSystem.deleteFile("golibs/_internal/githubdotcom/go2hx/go4hx/testbed/.go2hx_cache");
	}catch(e) {}
	final args = ["./testbed", "-notry"];
	//args.push("-compiler_cpp");
	if (haxe.macro.Compiler.getDefine("nocache") != null) {
		args.push("-nocache");
	}
	if (haxe.macro.Compiler.getDefine("compiler_debug") != null)
		args.push("-compiler_debug");
	if (haxe.macro.Compiler.getDefine("_hl") != null) {
		args.push("-compiler_hl");
	}else if (haxe.macro.Compiler.getDefine("_interp") != null) {
		args.push("-compiler_interp");
	}
	args.push("--rebuild");
	if (haxe.macro.Compiler.getDefine("nogo4hx") != null)
		args.push("-nogo4hx");
	args.push(Sys.getCwd());
	var code = Sys.command("haxe --run Run " + args.join(" "));
	if (code != 0)
		throw "failed to compile";
	final main = "_internal.githubdotcom.go2hx.go4hx.testbed.Testbed";
	code = runCommand("haxe", [
		"-cp",
		"golibs",
		"-main",
		main,
		"--macro",
		"Go2hxMacro.init()",
		"--hl",
		"testbed.hl",
	]);
	if (code != 0)
		throw "failed to build";
	final command = "hl testbed.hl";
	Sys.println(command);
	code = Sys.command(command);
	if (code != 0)
		throw "failed to run";
	Sys.println("~~~~~~~~~~~~~~~~~~~~");
	code = Sys.command("haxelib run go2hx go run ./testbed");
	if (code != 0)
		throw "failed to run";
}


function runCommand(cmd:String, args:Array<String>):Int {
	Sys.println(cmd + " " + commandArgs(args).join(" "));
	return Sys.command(cmd, args);
}

function commandArgs(args:Array<String>):Array<String> {
	switch (Sys.systemName()) {
		case "Windows":
			return args.map(arg -> haxe.SysTools.quoteWinArg(arg, true));
		case _:
			return args.map(haxe.SysTools.quoteUnixArg);
	}
}