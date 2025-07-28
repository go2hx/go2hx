function main() {
	var args = Sys.args();
	if (args.length == 0) {
		Sys.println("No args specified");
		return;
	}
	// args = args.map(arg -> arg.toLowerCase());
	switch args {
		case ["hxb"]:
			Sys.command("haxelib run go2hx hxb .");
		case ["goto"], ["analysis", "goto"]:
			Sys.command("go run -goto .");
		case ["setup"]:
			Sys.command("haxelib dev go2hx .");
			Sys.command("haxelib run go2hx setup");
		case _ if (args[0] == "std" || args[0] == "go"):
			var cmd = "haxe extra/scripts/std.hxml -D runnerCount=4";
			if (args.length > 1)
				cmd += " -D libs=" + args.slice(1).join(",");
			Sys.println(cmd);
			Sys.command(cmd);
		case ["sorttests"]:
			Sys.command("go run ./extra/scripts/sortTests");
		case ["deletefiles"]:
			Sys.command("sh ./extra/scripts/deletefiles.sh");
		case ["codespaces"]:
			Sys.command("sh ./extra/scripts/codespaces.sh");
		case _ if (args[0] == "testbuild"):
			testbuild(args);
		case _ if (args[0] == "test"):
			testbuild(args.slice(0, 2));
			testrun(args);
		case _ if (args[0] == "testrun"):
			testrun(args);
		case _ if (args[0] == "report"):
			// -D go -D mode=easy -D targets=hl
			final cmd = "haxe tests/tests.hxml --run Tests -nologs -report " + args.slice(1).join(" ");
			Sys.println(cmd);
			Sys.command(cmd);
		case ["actions"]:
			Sys.command("haxe extra/scripts/github-actions/build.hxml");
		case ["interop"]:
			Sys.println("build");
			Sys.command("haxelib run go2hx ./tests/interop --nolibwrap -nocache --rebuild");
			Sys.println("test");
			Sys.command("haxe tests/interop.hxml");
			Sys.command("hl interop.hl");
		case ["format"]:
			Sys.command("haxelib run formatter --source .");
		case _ if (args[0] == "testbed"):
			Sys.command("haxe testbed/build.hxml " + args.slice(2).join(" "));
		case ["build"]:
			Sys.command("haxe --run Run build");
		default:
			Sys.println("unknown args");
	}
}

function testbuild(args:Array<String>) {
	// args[2...] = run command
	final command = "haxe --run Run --test -compiler_cpp --rebuild -nocache --nohxb " + args.slice(1).join(" ") + " .";
	Sys.println(command);
	Sys.command(command);
}

function testrun(args:Array<String>) {
	final main = normalizePath(args[1]);
	final mainPathStd = main.split("/");
	if (mainPathStd[0] == "go")
		mainPathStd[0] = "go_";
	final last = mainPathStd.pop() + "dottest";
	mainPathStd.push(last);
	mainPathStd.push(last.charAt(0).toUpperCase() + last.substr(1));
	var mainStd = "_internal." + mainPathStd.join(".");
	runCommand("haxe", [
		"-cp",
		"golibs",
		"-w",
		"-WStaticInitOrder",
		"-m",
		mainStd,
	].concat(args.slice(2)));
}

function runCommand(cmd:String, args:Array<String>) {
	Sys.println(cmd + " " + args.join(" "));
	return Sys.command(cmd, args);
}

function normalizePath(path:String):String {
	path = StringTools.replace(path, ".", "dot");
	path = StringTools.replace(path, ":", "colon");
	path = StringTools.replace(path, "go-", "godash");
	path = StringTools.replace(path, "-", "dash");
	var path = path.split("/");
	if (path.length > 0 && path[0] == "vendor")
		path.shift();
	return path.join("/");
}
