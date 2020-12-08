package;

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
	var stdimports:Array<String> = [];

	public var exportPath:String;

	public function new(exportPath:String, format:Bool) {
		if (exportPath.length > 0)
			exportPath = Path.addTrailingSlash(exportPath);
		this.exportPath = exportPath;
		if (!FileSystem.exists("export.bson")) {
			trace("export.bson not found");
			return;
		}
		var data:Data = Bson.decode(File.getBytes("export.bson"));
		if (data.pkgs == null) {
			throw "no packages found";
		}
		trace("amount of pkgs: " + data.pkgs.length);
		for (pkg in data.pkgs) {
			var path = pkg.packagepath;
			path = Path.addTrailingSlash(path);
			read(pkg, path);
		}
		imports(exportPath + "std");
		Sys.setCwd(exportPath);
		if (format) {
			var files = FileSystem.readDirectory(".");
			files.remove("std");
			files.remove("import.hx");
			files.remove("build.hxml");
			Sys.command('haxelib run formatter -s ${files.join(" -s ")}');
		}
		Sys.command("haxe build.hxml");
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
		// imports
		if (file.imports != null)
			for (imp in file.imports) {
				var name = capPkg(imp[0]);
				var as = capPkg(imp[1]);
				if (Resource.listNames().indexOf(imp[0]) != -1) {
					stdimports.push(imp[0]);
					name = 'std.$name';
				}

				if (as.length > 0)
					replaceMap.set(as, as = capPkg(as));
				var line = 'import ${StringTools.replace(name, "/", ".")}';
				if (as != "") {
					line += ' as $as';
				}
				line += ";";
				imports.push(line);
			}
		// main.push('class $className {');
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
					for (struct in file.structs) {
						if (struct.name == func.recv) {
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
		var path = exportPath + path + className + ".hx";
		var interfaceStack:Array<String> = [];
		// main.push("}");
		// struct classes
		if (file.structs != null)
			for (struct in file.structs) {
				var first = struct.exported ? "" : "private";
				if (struct.interfaceMethods != null && struct.interfaceMethods.length > 0) {
					interfaceStack = interfaceStack.concat(struct.interfaceMethods); // add methods to stack
				} else if (struct.def != "") {
					main.push(first + "typedef " + struct.name + " = " + struct.def + ";");
				} else {
					main.push(first + "class " + struct.name + " {");
					var init:String = "";
					if (struct.fields == null) {} else {
						for (field in struct.fields) {
							main.push('public var $field;');
							init += ',$field';
						}
					}
					init = init.substr(1);
					main.push('public function new($init) {');
					main.push("std.Macro.initLocals();");
					main.push("}\n");
					if (struct.funcs != null)
						for (func in struct.funcs) {
							main = main.concat(printFunc(func, "public"));
						}
					main.push("}");
				}
			}
		if (interfaceStack.length > 0) {
			trace("interface stack: " + interfaceStack);
		}
		main = inital.concat(imports).concat(main);
		File.saveContent(path, main.join("\n"));
		buildConfig(pkgPath, className);
	}

	function printFunc(func:Func, publicString:String = ""):Array<String> {
		var main:Array<String> = [];
		main.push(func.doc);
		var first = func.exported ? publicString : "private";
		var result = "Void";
		if (func.results != null && func.results.length > 0) {
			result = "";
			if (func.results.length == 1) {
				result = func.results[0].substr(result.indexOf(":") + 1);
			} else {
				for (res in func.results) {
					result += ',$res';
				}
				result = "{" + result.substr(1) + "}";
			}
		}
		main.push('$first function ${func.name}(${func.params.join(", ")}):$result {');
		if (func.body != null)
			for (expr in func.body) {
				main.push(expr);
			}
		main.push("}");
		return main;
	}

	function buildConfig(path:String, main:String) {
		if (path.length > 0)
			path += ".";
		File.saveContent(exportPath + "build.hxml",
			'-main $path$main\n-D std-encoding-utf8\n-D no-deprecation-warnings\n-lib polygonal-printf\n--macro std.Macro.build()\n-dce full\n' + "--interp");
	}

	function imports(path:String) {
		path = Path.normalize(path);
		if (!FileSystem.exists(path))
			FileSystem.createDirectory(path);
		stdimports = stdimports.concat(["go", "pointer", "macro", "builtin"]); // add main classes
		for (i in stdimports) {
			var path = '$path/${capPkg(i)}.hx';
			if (!FileSystem.exists(Path.directory(path)))
				FileSystem.createDirectory(Path.directory(path));
			File.saveContent(path, Resource.getString(i));
		}
		// global
		File.saveContent(exportPath + "import.hx", Resource.getString("import"));
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
