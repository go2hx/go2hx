package typer.exprtypes;

function identType(expr:GoAst.Ident, info:Info):ComplexType {
	var name = className(expr.name, info);
	if (!info.renameClasses.exists(expr.name) && !info.global.renameClasses.exists(name)) {
		for (t in basicTypes) {
			if (name == "T_" + t) {
				name = "Go" + title(name.substr(2));
				if (name.substr(2, 2) == "Ui") {
					name = "GoUI" + name.substr(4);
				}
				if (name == "GoString") {
					return TPath({
						pack: ["go"],
						name: "GoString",
					});
				}
				return TPath({
					pack: ["go"],
					name: name,
				});
			}
		}
		final basicType = classToBuiltinTypePath(expr.name, info);
		if (basicType != null)
			return TPath(basicType);
	}
	if (StringTools.startsWith(name, "T__struct_") && expr.type != null) {
		final type = hashTypeToExprType(expr.type, info);
		if (type.underlying != null) {
			info.locals[type.underlying.hash] = typeof(type, info, false);
		}
	}
	return TPath({
		pack: [],
		name: name,
		sub: null,
	});
}
