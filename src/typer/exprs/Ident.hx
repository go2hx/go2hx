package typer.exprs;

function typeIdent(expr:GoAst.Ident, info:Info, isSelect:Bool):MacroExpr {
	var name = typer.exprs.Ident.nameIdent(expr.name, true, false, info, isSelect, expr.objPath);
	return macro $i{name};
}

function nameIdent(name:String, rename:Bool, overwrite:Bool, info:Info, unique:Bool = false, isSelect:Bool = false, objPath:String = null,
		formatField:Bool = false):String {
	name = nameAscii(name);
	switch name {
		case "_":
			return "__" + info.blankCounter++;
		case "null":
			return "nil";
		case "main": // main function
			return name;
		case "False", "True", "Main":
			name = "_" + name;
	}
	var oldName = name;
	if (overwrite) { // either an overwrite or a rename has been set
		if (name == "nil") {
			name = "_null";
		}
		if (name == "false" || name == "true") {
			name = "_" + name;
		}
	}
	var setUnique = false;
	if (rename && info.renameIdents.exists(name)) {
		name = info.renameIdents[name];
		if (unique) {
			name = name + "_";
			setUnique = true;
		}
	} else {
		if (!overwrite) {
			if (name == "nil")
				return "null";
			if (name == "false" || name == "true") {
				return name;
			}
		}
		if (name.charAt(0) == "_") {
			name = name = "_" + name;
		} else {
			name = untitle(name);
		}
	}
	if (!formatField && rename && info.restricted != null && info.restricted.indexOf(name) != -1) {
		name = getRestrictedName(name, info);
	}
	if (unique && setUnique && info.restricted != null) {
		while (info.restricted.indexOf(name) != -1) {
			name = name + "_";
		}
		info.restricted.push(name);
	}
	if (reserved.indexOf(name) != -1) {
		name = name + "_";
	}
	if (objPath != null) {
		final path = normalizePath(objPath);
		final pack = path.split("/");
		pack.unshift("_internal");
		final path = toGoPath(path);
		if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
			pack.unshift("stdgo");
		}
		if (!info.data.isMain || !isPackLocal(pack, info)) {
			final filePath = pack.pop();
			pack.push(filePath);
			pack.push(title(filePath) + "_" + name.toLowerCase());
			pack.push(name);
			// name = path + "." + filePath + "_" + name + "." + name;
			name = pack.join(".");
		}
	} else if (!formatField && !isSelect && !overwrite && info.localIdents.indexOf(name) == -1) {
		if (name.indexOf(".") != -1)
			return name;
		name = splitDepFullPathName(name, info);
	}
	if (!formatField && overwrite) {
		info.renameIdents[oldName] = name;
		info.localIdents.push(name);
	}
	return name;
}

function getRestrictedName(name:String, info:Info):String { // all function defs are restricted names
	if (info.global.module == null)
		return name;
	for (file in info.global.module.files) {
		for (def in file.defs) {
			if (def == null)
				continue;
			if (def.name == name) {
				final pack = info.global.module.path.split(".");
				pack.unshift("_internal");
				if (stdgoList.indexOf(toGoPath(info.global.module.path)) == -1) { // haxe only type, otherwise the go code references Haxe
					pack.unshift("stdgo");
				}
				final name = pack[pack.length - 1];
				pack.push(file.name);
				pack.push(def.name);
				return pack.join(".");
			}
		}
	}
	return name;
}

function replaceIdent(names:Map<String, String>, e:Expr):MacroExpr {
	return switch e.expr {
		case EConst(CIdent(s)):
			if (names.exists(s)) {
				macro $i{names[s]};
			} else {
				e;
			}
		default:
			HaxeAst.mapExprWithData(e, names, replaceIdent);
	}
}
