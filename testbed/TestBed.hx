package;

function main() {
	final args = ["./testbed"];
	//args.push("-compiler_cpp");
	args.push("-compiler_hl");
	args.push("--rebuild");
	if (haxe.macro.Compiler.getDefine("nogo4hx") != null)
		args.push("-nogo4hx");
	args.push(Sys.getCwd());
	var code = Sys.command("haxe --run Run " + args.join(" "));
	if (code != 0)
		throw "failed to compile";
	final main = "_internal.githubdotcom.go2hx.go4hx.testbed.Testbed";
	var command = 'haxe -cp golibs -main $main -lib go2hx -hl testbed.hl';
	Sys.println(command);
	code = Sys.command(command);
	if (code != 0)
		throw "failed to build";
	command = "hl testbed.hl";
	Sys.println(command);
	code = Sys.command(command);
	if (code != 0)
		throw "failed to run";
}
