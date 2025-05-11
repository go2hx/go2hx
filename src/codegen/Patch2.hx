package codegen;

import sys.FileSystem;
import haxe.macro.Expr as MacroExpr;

function getValue(pack:String, valueName:String, pkg:typer.Package.IntermediatePackageType):MacroExpr {
	final path = getPath(pack);
	final decls:Array<haxeparser.Data.TypeDecl> = getCachedDecls(path, pkg);
	var expr:MacroExpr = getValueExpr(valueName, decls);
	return expr;
}

function getFunction(pack:String, funcName:String, recvName:String, pkg:typer.Package.IntermediatePackageType):MacroExpr {
	final path = getPath(pack);
	var decls:Array<haxeparser.Data.TypeDecl> = getCachedDecls(path, pkg);
	var expr:MacroExpr = getBody(funcName, recvName, decls);
	if (expr == null)
		return null;
	final importMap = new Map<String, String>();
	var importMapEmpty = true;
	for (decl in decls) {
		switch decl.decl {
			case EImport(sl, mode):
				final pack = [];
				for (imp in sl) {
					pack.push(imp.pack);
				}
				switch mode {
					case IAsName(s):
						importMap[s] = pack.join(".");
						importMapEmpty = false;
					default:
						final fileName = pack[pack.length - 1];
						importMap[fileName] = pack.join(".");
						importMapEmpty = false;
				}
			default:
		}
	}
	if (!importMapEmpty) {
		// walk the expr
		function walkExpr(e:MacroExpr) {
			return switch e.expr {
				case EField({expr: EConst(CIdent(s)), pos: _}, field, kind):
					if (importMap.exists(s)) {
						final path = importMap[s].split(".");
						final prefix = path.shift();
						if (prefix == "stdgo") {
							path.unshift("_internal");
							path.unshift(prefix);
						} else {
							path.unshift(prefix);
						}
						final fileName = path.pop();
						path.push(fileName + "_" + field.toLowerCase());
						macro $p{path}.$field;
					} else {
						haxe.macro.ExprTools.map(e, walkExpr);
					}
				default:
					haxe.macro.ExprTools.map(e, walkExpr);
			}
		}
		expr = walkExpr(expr);
	}
	return expr;
}

function getCachedDecls(path:String, pkg:typer.Package.IntermediatePackageType) {
	if (!pkg.cachedDecls.exists(path)) {
		// uncached
		if (!FileSystem.exists(path)) {
			return [];
		}
		pkg.cachedDecls[path] = getDecls(path);
	}
	return pkg.cachedDecls[path];
}

private function getValueExpr(valueName:String, decls:Array<haxeparser.Data.TypeDecl>) {
	for (decl in decls) {
		switch decl.decl {
			case EStatic(def):
				if (def.name != valueName)
					continue;
				switch def.data {
					case FVar(_, e):
						return e;
					default:
				}
			default:
		}
	}
	return null;
}

private function getBody(funcName:String, recvName:String, decls:Array<haxeparser.Data.TypeDecl>) {
	for (decl in decls) {
		switch decl.decl {
			case EStatic(def):
				if (def.name != funcName)
					continue;
				var metaRecvName = "";
				for (m in def.meta) {
					if (m.name == ":recv") {
						if (m.params[0] == null) {
							throw "recv metadata not set for: " + def.name;
						}
						switch m.params[0].expr {
							case EConst(CIdent(s)):
								metaRecvName = s;
								break;
							default:
						}
					}
				}
				if (recvName != metaRecvName)
					continue;
				switch def.data {
					case FFun(f):
						return f.expr;
					default:
				}
			default:
		}
	}
	return null;
}

private function getDecls(path:String) {
	final content = sys.io.File.getContent(path);
	final input = byte.ByteData.ofString(content);
	final parser = new haxeparser.HaxeParser(input, content);
	try {
		return parser.parse().decls;
	} catch (e:haxeparser.HaxeParser.ParserError) {
		switch (e.msg) {
			case SharpError(_):
			case _:
				trace(path);
				var pMsg = new hxparse.Position(e.pos.file, e.pos.min, e.pos.max).format(input);
				throw('$pMsg: ${e.msg}\n');
		}
		return [];
	}
}

function getPath(pack:String):String {
	final pack = pack.split(".");
	final fileName = pack.pop();
	pack.push(fileName);
	pack.push(title(fileName));
	final path = "std/go/" + pack.join("/") + ".hx";
	return path;
}
