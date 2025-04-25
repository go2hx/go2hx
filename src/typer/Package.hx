package typer;

import typer.Typer;
import haxe.io.Path;
import haxe.macro.Expr;
import shared.Util;

/**
 * Intermediate Package form
 */
typedef IntermediatePackageType = {
	name:String,
	path:String,
	isMain:Bool,
	info:Info,
	files:Array<GoAst.FileType>,
	varOrder:Array<String>,
	declFuncs:Array<GoAst.FuncDecl>,
	declGens:Array<GoAst.GenDecl>,
}

function typePackage(pkg:GoAst.PackageType, instance:Compiler.CompilerInstanceData, hashMap:Map<UInt, Dynamic>):HaxeAst.Module {
	final pkg = typePackageAnalyze(pkg, instance, hashMap);
	return typePackageEmit(pkg);
}

function typePackageEmit(pkg:typer.Package.IntermediatePackageType):HaxeAst.Module {
	final module:HaxeAst.Module = {
		path: pkg.path,
		files: [],
		isMain: pkg.isMain,
		name: pkg.name,
	};
	final info = pkg.info;
	info.global.module = module;
	var recvFunctions:Array<RecvFunction> = [];

	// 2nd pass main typing
	for (file in pkg.files) {
		if (file.decls == null)
			continue;
		// add file to module
		module.files.push(File.typeFile(file, module, recvFunctions, pkg, info));
	}
	return module;
}

function setExtern(instance, pkg:GoAst.PackageType) {
	instance.externBool = false;
	if (stdgoList.indexOf(pkg.path) != -1) {
		if (externs.indexOf(pkg.path) != -1)
			instance.externBool = true;
	}
}

function typePackageAnalyze(pkg:GoAst.PackageType, instance:Compiler.CompilerInstanceData, hashMap:Map<UInt, Dynamic>):IntermediatePackageType {
	setExtern(instance, pkg);
	pkg.path = normalizePath(pkg.path);
	pkg.path = toHaxePath(pkg.path);

	final info = new Info();
	info.global.initBlock = [];
	info.printGoCode = instance.printGoCode;
	info.global.path = pkg.path;
	info.global.externBool = instance.externBool;
	info.global.debugBool = instance.debugBool;
	info.global.varTraceBool = instance.varTraceBool;
	info.global.funcTraceBool = instance.stackBool;
	info.global.stackBool = instance.stackBool;
	info.global.noCommentsBool = instance.noCommentsBool;
	// info.global.module = module;
	info.global.root = instance.root;

	info.global.hashMap = hashMap;
	final irPkg:IntermediatePackageType = {
		info: info,
		varOrder: [],
		declGens: [],
		declFuncs: [],
		path: pkg.path,
		name: pkg.name,
		files: pkg.files,
		isMain: pkg.name == "main",
	};

	if (pkg.order != null) {
		irPkg.varOrder = [];
		for (s in pkg.order) {
			if (s == "_")
				continue;
			irPkg.varOrder.push(formatHaxeFieldName(s, info));
		}
	} else {
		irPkg.varOrder = [];
	}

	for (file in pkg.files) {
		if (file.decls == null)
			continue;
		if (irPkg.isMain) {
			if (StringTools.endsWith(file.path, ".go"))
				file.path = file.path.substr(0, file.path.length - 3);
			file.path = importClassName(normalizePath(file.path)); // file naming
		} else {
			file.path = importClassName(normalizePath(pkg.path.substr(pkg.path.lastIndexOf(".") + 1)));
		}

		info.global.filePath = file.path;

		for (decl in file.decls) {
			switch decl.id {
				case "GenDecl":
					irPkg.declGens.push(decl);
				case "FuncDecl":
					var decl:GoAst.FuncDecl = decl;
					irPkg.declFuncs.push(decl);
				default:
			}
		}
		for (decl in irPkg.declFuncs) {
			if (decl.recv == null || decl.recv.list == null || decl.recv.list.length == 0) {
				final name = typer.exprs.Ident.nameIdent(decl.name.name, false, true, info); // overwrite name
				info.localIdents.remove(name);
			}
		}
	}
	return irPkg;
}

typedef RecvFunction = {decl:GoAst.FuncDecl, path:String};
