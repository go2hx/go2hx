package typer.specs;
/**
 * import spec translated
 * @param imp 
 * @param info 
 * @see https://go.dev/ref/spec#Import_declarations
 */
function typeImport(imp:GoAst.ImportSpec, info:Info) {
	var doc = gen.Doc.getDocComment(imp);
	imp.path = imp.path.substr(1, imp.path.length - 2); // remove quotes
	var path = normalizePath(imp.path);
	var alias = imp.name;
	var blankAlias = false;
	if (alias == "_") {
		blankAlias = true;
		alias = "";
	}
	path = toGoPath(path);
	final pack = path.split("/");
	pack.unshift("_internal");
	if (stdList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
		pack.unshift("go");
	}
	final name = pack[pack.length - 1];
	pack.push(importClassName(name)); // shorten path here
	if (alias != "") {
		if (alias == ".") {
			/*info.data.imports.push({
				path: pack,
				alias: "",
				doc: info.global.noCommentsBool ? "" : doc,
			});*/
		} else {
			info.renameIdents[alias] = ".." + pack.join(".");
		}
	} else {
		if (name == "atomic_") {
			info.renameIdents["atomic"] = ".." + pack.join(".");
		}
		info.renameIdents[name] = ".." + pack.join(".");
	}
	/*if (blankAlias) {
		info.data.imports.push({
			path: pack,
			alias: alias,
			doc: info.global.noCommentsBool ? "" : doc,
		});
	}*/
}
