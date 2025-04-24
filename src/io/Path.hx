package io;

import haxe.macro.Expr;
import typer.Typer.Info;

function toGoPath(path:String):String {
	return StringTools.replace(path, ".", "/");
}

function toHaxePath(path:String):String {
	return StringTools.replace(path, "/", ".");
}


function normalizePath(path:String):String {
	path = StringTools.replace(path, ".", "dot");
	path = StringTools.replace(path, ":", "colon");
	path = StringTools.replace(path, "go-", "godash");
	path = StringTools.replace(path, "-", "dash");
	var path = path.split("/");
	for (i in 0...path.length) {
		if (io.Data.reserved.indexOf(path[i]) != -1) {
			path[i] += "_";
		}
	}
	return path.join("/");
}

function classToBuiltinTypePath(name:String, info:Info):TypePath {

	return switch name {
		case "error":
			{
				pack: ["stdgo"],
				name: "Error",
			};
		case "chan":
			{
				pack: ["stdgo"],
				name: "Chan",
			};
		case "any":
			{
				pack: ["stdgo"],
				name: "AnyInterface",
			};
		default:
			null;
	}
}

function getTypePath(ct:ComplexType, info:Info):TypePath {
	switch ct {
		case TPath(p):
			return p;
		default:
			return null;
	}
}

function splitDepFullPathName(name:String, info:Info):String {
	var path = getGlobalPath(info);
	var filePath = info.global.filePath;
	name = path + "." + filePath + "_" + name.toLowerCase() + "." + name;
	return name;
}

function title(name:String):String {
	final name = name.charAt(0).toUpperCase() + name.substring(1);
	if (name == "Atomic")
		return "Atomic_";
	if (name == "Environ")
		return "Environ_";
	return name;
}

function getGlobalPath(info:Info):String {
	var globalPath = info.global.path;
	if (StringTools.endsWith(info.global.path, ".pkg")) {
		globalPath = globalPath.substr(0, globalPath.length - 4);
	}
	if (globalPath == "") {
		return "_internal";
	}
	final globalPathOld = globalPath;
	globalPath = "_internal." + globalPath;
	if (io.Data.stdgoList.indexOf(toGoPath(globalPathOld)) != -1) { // haxe only type, otherwise the go code references Haxe
		globalPath = "stdgo." + globalPath;
	}
	return globalPath;
}

function namedTypePath(path:String, info:Info):TypePath { // other parseTypePath
	path = StringTools.replace(path, "go-", "");
	// path = StringTools.replace(path, "_test.", ".");
	final startCommandLineArg = "command-line-arguments.";
	if (path.substr(0, startCommandLineArg.length) == startCommandLineArg) {
		path = path.substr(startCommandLineArg.length);
	}

	var index = path.indexOf("[");
	final params:Array<TypeParam> = [];
	if (index != -1) {
		path = path.substr(0, index); // remove type param from path name
	}
	var last = path.lastIndexOf("/") + 1;
	var part = path.substr(last);
	var split = part.lastIndexOf(".");
	var pkg = part.substr(0, split);
	final clName = part.substr(split + 1);
	var cl = typer.Typer.className(clName, info);
	final basicType = classToBuiltinTypePath(clName, info);
	if (basicType != null)
		return basicType;
	path = path.substr(0, last) + pkg;
	if (path == "command-line-arguments")
		path = "";
	path = normalizePath(path);

	var pack = path.split("/");
	pack.unshift("_internal");
	final path = toGoPath(path);
	if (io.Data.stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
		pack.unshift("stdgo");
	}
	if (last == 0 && split == -1) {
		return {pack: [], name: splitDepFullPathName(cl, info)};
	}
	// for split deps
	pack.push(title(pkg));
	final last = pack.pop();
	pack.push(last + "_" + cl.toLowerCase());
	return {pack: pack, name: cl};
}