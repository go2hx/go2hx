package;

import haxe.io.Bytes;
import formatter.Formatter;
import bson.Bson;
import sys.io.Process;
import sys.FileSystem;
import haxe.Resource;
import haxe.Json;
import sys.io.File;
import types.Types;
import haxe.io.Path;

class Parser {
	var replaceMap:Map<String, String> = [];
	public var exportPath:String;
	var localBool:Bool;
	var filePaths:Array<String> = [];
	var forceMain:Bool;
	public function new(exportPath:String,exportBytes:Bytes,localBool:Bool,forceMain:Bool) {
		this.localBool = localBool;
		this.forceMain = forceMain;
		if (exportPath.length > 0)
			exportPath = Path.addTrailingSlash(exportPath);
		this.exportPath = exportPath;
		var data:Data = Bson.decode(exportBytes);
		if (data.pkgs == null) {
			trace("no packages found");
			return;
		}
		trace("pkgs amount: " + data.pkgs.length);
		for (pkg in data.pkgs) {
			var path = pkg.packagepath;
			path = Path.addTrailingSlash(path);
			read(pkg, path);
		}
		imports(exportPath);
		trace("run formatter: " + filePaths);
		for (path in filePaths)
			formatFile(path);
	}
	function formatFile(path:String) {
		if (Path.extension(path) == "hx") {
			var content:String = File.getContent("./" + path);
			var result:Result = Formatter.format(Code(content));
			switch (result) {
				case Success(formattedCode):
					trace("formatter sucessful");
					File.saveContent(path, formattedCode);
				case Failure(errorMessage):
					trace('Failed to format $path\n');
					SyntaxParse.read(path); //if the formatting fails, find the error
				case Disabled:
					trace("formatter is disabled");
			}
		}
	}

	private function importData(string:String):Array<Dynamic> {
		var array = [];
		var index = string.indexOf("#");
		if (index == -1)
			return null;
		var num = Std.parseInt(string.substr(index, index = string.indexOf("\n")));
		index += 1;
		importData(string.substr(index + num)); // parse after
		string = string.substr(index, num);

		return null;
	}

	public function read(file:Package, path:String) {
		// get className and path
		var programPath = Path.normalize(Path.directory(Sys.getCwd())).toLowerCase();
		programPath = StringTools.replace(programPath, ":", "_");
		path = Path.addTrailingSlash(Path.normalize(path));
		path = path.toLowerCase();
		var index = path.indexOf(programPath);
		if (index > -1)
			path = path.substr(index + programPath.length);
		if (path.charAt(0) == "." || path.charAt(0) == "_" || path.charAt(0) == "/")
			path = path.substr(1);
		var pkgPath = path;
		pkgPath = Path.removeTrailingSlashes(pkgPath);
		pkgPath = StringTools.replace(pkgPath, "/", ".");
		index = pkgPath.lastIndexOf(".");
		var last = pkgPath.substr(index + 1);
		index = pkgPath.indexOf(last);
		if (index != -1) {
			pkgPath = pkgPath.substr(0, index);
			path = path.substr(0, index);
		}
		if (pkgPath.charAt(pkgPath.length - 1) == "." || pkgPath.charAt(pkgPath.length - 1) == "_")
			pkgPath = pkgPath.substr(0, pkgPath.length - 1);
		var className = cap(file.name);
		var inital = ['package $pkgPath;'];
		var imports = [];
		var main = [];
		var gostd = gen.Macro.gostd().split(",");
		// imports
		if (file.imports != null)
			for (imp in file.imports) {
				var name = capPkg(imp[0]);
				var as = capPkg(imp[1]);

				if (as.length > 0)
					replaceMap.set(as, as = capPkg(as));
				name = StringTools.replace(name, "/", ".");
				if (gostd.indexOf(name) != -1) {
					name = 'gostd.$name';
				}
				switch name {
					case "Reflect":
						name = "GoReflect";
						as = "Reflect";
					case "Math":
						name = "GoMath";
						as = "Math";
				}
				var line = 'import $name';
				if (as != "") {
					line += ' as $as';
				}
				line += ";";
				imports.push(line);
			}
		// vars and consts
		if (file.vars != null)
			for (v in file.vars) {
				var first = v.exported ? "" : "private ";
				first += v.constant ? "final" : "var";
				main.push('$first ${v.name} = ${v.value};');
			}
		// functions
		if (file.funcs != null)
			for (func in file.funcs) {
				if (func.recv != "") {
					func.exported = true;
					var pointerString = "Pointer<";
					//remove pointer type
					if (func.recv.substr(0,pointerString.length) == pointerString) {
						func.recv = func.recv.substr(pointerString.length);
						func.recv = func.recv.substr(0,func.recv.length - 1);
					}
					for (struct in file.structs) {
						var index = func.recv.lastIndexOf("<");
						if (index == -1 && struct.name == func.recv ||
							index != -1 && func.recv.substring(index + 1,func.recv.indexOf(">")) == struct.name) {
							if (struct.funcs == null)
								struct.funcs = [];
							struct.funcs.push(func);
							break;
						}
					}
				} else {
					main = main.concat(printFunc(func));
				}
			}
		// write
		if (!FileSystem.exists(exportPath + path))
			FileSystem.createDirectory(exportPath + path);
		var path = path + className + ".hx";
		var interfaceStack:Array<String> = [];
		// struct classes
		if (file.structs != null)
			for (struct in file.structs) {
				var first = struct.exported ? "" : "private";
				if (struct.interfaceMethods != null && struct.interfaceMethods.length > 0)
					interfaceStack = interfaceStack.concat(struct.interfaceMethods); // add methods to stack
				if (struct.interfacebool) {
					main.push("typedef " + struct.name + " = Dynamic;");
				}else{
					var ty = "@:structInit\nclass ";
					var end = "";
					if (struct.define != "") {
						ty = "abstract ";
						end = "(" + struct.define + ') from ${struct.define} to ${struct.define}';
					}
					main.push(first + ty + struct.name + " " + end + " {");
					var init:String = "";
					if (struct.fields == null) {} else {
						for (field in struct.fields) {
							main.push('public var $field;');
							init += ',$field';
						}
					}
					init = init.substr(1);
					if (struct.define != "") {
						main.push('    public function new(?value:${struct.define}) {');
						main.push("        this = value;");
						main.push("    }\n");
					}else{
						main.push('    public function new($init) {');
						main.push("        gostd.internal.Macro.initLocals();");
						main.push("    }\n");
					}
					if (struct.funcs != null)
						for (func in struct.funcs) {
							var publicString = "public";
							if (struct.define != "")
								publicString = "inline " + publicString;
							main = main.concat(printFunc(func, publicString));
						}
					main.push("}");
				}
			}
		if (interfaceStack.length > 0) {
			trace("interface stack: " + interfaceStack);
		}
		main = inital.concat(imports).concat(main);
		var isMain = file.name == "main";
		if (forceMain || isMain) {
			buildConfig(path,className,isMain);
			if (forceMain) {
				var mainExists:Bool = false;
				for (func in file.funcs) {
					if (func.name == "main") {
						mainExists = true;
						break;
					}
				}
				if (!mainExists)
					main.push("function main() {}");
			}
		}
		path = exportPath + path;
		filePaths.push(path);
		File.saveContent(path, main.join("\n"));
	}

	function printFunc(func:Func, publicString:String = ""):Array<String> {
		var main:Array<String> = [];
		main.push(func.doc);
		var first = func.exported ? publicString : "private";
		var result = func.result;
		main.push('$first function ${func.name}(${func.params.join(", ")})$result {');
		if (func.body != null)
			for (expr in func.body) {
				main.push(expr);
			}
		main.push("}");
		return main;
	}

	function buildConfig(path:String,main:String,isMain:Bool) {
		path = Path.withoutExtension(path);
		path = StringTools.replace(path,"/",".");
		if (isMain)
			main = "";
		if (!isMain && path.length > 0) {
			var index = path.lastIndexOf(".");
			if (index != -1)
				path = path.substr(0,index + 1);
		}
		//TODO: should only be included if there is a main package, if so point to it.
		var config = [
			"-D std-encoding-utf8",
			"-D no-deprecation-warnings",
			!localBool ? "-lib go2hx" : "-cp ..",
			"-dce full",
			"--interp",
			'-main $path$main',
		];

		File.saveContent(exportPath + "build.hxml",config.join("\n"));

		Sys.setCwd(exportPath);
		Sys.command("lix scope create");
		Sys.command("lix install https://github.com/PXshadow/go2hx");
		Sys.println("Test run:");
		Sys.command("haxe build.hxml");
		Sys.setCwd("..");
	}
	var stdStartPath = "std/";
	function imports(path:String) {
		path = Path.normalize(path);
		if (!FileSystem.exists(path))
			FileSystem.createDirectory(path);
		for (i in Resource.listNames()) {
			if (i.substr(0,stdStartPath.length) != stdStartPath)
				continue;
			var path = '$path/${capPkg(i)}.hx';
			if (!FileSystem.exists(Path.directory(path)))
				FileSystem.createDirectory(Path.directory(path));
			File.saveContent(path, Resource.getString(i));
		}
	}

	function cap(string:String, reverse:Bool = false):String {
		return (reverse ? string.charAt(0).toLowerCase() : string.charAt(0).toUpperCase()) + string.substr(1);
	}

	function capPkg(string:String):String {
		var index = string.lastIndexOf("/") + 1;
		string = string.substr(0, index) + string.charAt(index).toUpperCase() + string.substr(index + 1);
		return string;
	}

	function name(string:String):String {
		if (replaceMap.exists(string))
			string = replaceMap.get(string);
		return string;
	}
}
