package typer.exprs;

function typeIdent(expr:GoAst.Ident, info:Info, isSelect:Bool):ExprDef {
	var name =typer.exprs.Ident.nameIdent(expr.name, true, false, info, isSelect, expr.objPath);
	return EConst(CIdent(name));
}

function nameIdent(name:String, rename:Bool, overwrite:Bool, info:Info, unique:Bool = false, isSelect:Bool = false, objPath:String = null,
	formatField:Bool = false):String {
name = nameAscii(name);
if (name == "_")
	return "__" + info.blankCounter++;
if (name == "null")
	return "nil";
if (name == "main")
	return name;
if (name == "False" || name == "True" || name == "Main")
	name = "_" + name;
var oldName = name;
if (overwrite) { // either an overwrite or a rename has been set
	if (name == "nil") {
		name = "_null";
	}
	if (name == "false" || name == "true") {
		name = "_" + name;
	}
} else {
	if (name == "nil")
		return "null";
	if (name == "false" || name == "true")
		return name;
}
var setUnique = false;
if (rename && info.renameIdents.exists(name)) {
	name = info.renameIdents[name];
	if (unique) {
		name = name + "_";
		setUnique = true;
	}
} else {
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
	final filePath = pack.pop();
	pack.push(filePath);
	pack.push(title(filePath) + "_" + name.toLowerCase());
	pack.push(name);
	// name = path + "." + filePath + "_" + name + "." + name;
	name = pack.join(".");
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