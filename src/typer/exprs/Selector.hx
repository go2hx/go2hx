package typer.exprs;

function typeSelectorExpr(expr:GoAst.SelectorExpr, info:Info):MacroExpr { // EField
	var selName = typer.exprs.Ident.nameIdent(expr.sel.name, false, false, info, false, true);
	expr.x = GoAst.escapeParensRaw(expr.x);
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	// if ident is type
	if (selectorKind(expr) == GoAst.ObjKind.typ) {
		if (expr.x.id == "StarExpr")
			expr.x = expr.x.x;
		switch expr.x.id {
			case "Ident":
				x = selectorXIdent(x, expr, info);
			case "SelectorExpr":
				x = selectorXSelector(x, expr, info);
			default:
				throw info.panic() + "expr id: " + expr.x.id;
		}
	}
	switch x.expr {
		case EConst(CIdent(s)) if (s.indexOf(".") != -1):
			// special import prefix
			if (s.substr(0, 2) == "..") {
				s = s.substr(2);
				var exists = false;
				for (imp in info.data.imports) {
					if (s == imp.path.join(".")) {
						exists = true;
						break;
					}
				}
				if (!exists) {
					if (stdgoList.indexOf(toGoPath(info.global.path)) == -1
						&& !StringTools.endsWith(toGoPath(info.global.path), "_test")) {
						info.data.imports.push({
							path: s.split("."),
							doc: "",
							alias: "",
						});
					}
				}
				x = macro $i{s + "_" + selName.toLowerCase()};
			}
		default:
	}
	var typeX = typeof(expr.x, info, false);
	if (isPointer(typeX)) {
		if (!GoAst.isClass(expr.x, info)) {
			if (expr.recv == null) {
				x = macro $x.value;
			} else {
				final elem = getElem(typeX);
				switch elem {
					case named(path, methods, type, alias, params):
						var recvPointerBool = false;
						for (method in methods) {
							if (method.name != selName)
								continue;
							recvPointerBool = isRef(method.recv.get());
							break;
						}
						if (!recvPointerBool) {
							x = macro $x.value;
						} else {
							final ct = toComplexType(named(path, methods, type, alias, params), info);
							addPointerSuffix(ct, info);
							x = macro($x : $ct);
						}
					default:
				}
			}
		}
	} else {
		if (!GoAst.isClass(expr.x, info)) {
			switch typeX {
				case named(path, methods, type, alias, params):
					var recvPointerBool = false;
					for (method in methods) {
						if (method.name != selName)
							continue;
						recvPointerBool = isRef(method.recv.get());
						break;
					}
					if (recvPointerBool) {
						final ct = toComplexType(named(path, methods, type, alias, params), info);
						addPointerSuffix(ct, info);
						if (!isRefValue(type)) {
							x = macro(stdgo.Go.pointer($x) : $ct);
						} else {
							x = macro $x;
						}
					}
				case refType(_.get() => elem):
					switch elem {
						case named(path, methods, type, alias, params):
							var recvPointerBool = false;
							for (method in methods) {
								if (method.name != selName)
									continue;
								recvPointerBool = isRef(method.recv.get());
								break;
							}
							if (!recvPointerBool) {
								if (expr.x.id != "CallExpr")
									x = macro(@:checkr $x ?? throw "null pointer dereference");
							} else {
								final ct = toComplexType(named(path, methods, type, alias, params), info);
								addPointerSuffix(ct, info);
								if (!isRefValue(type)) {
									x = macro(stdgo.Go.pointer($x) : $ct);
								} else {
									x = macro $x;
								}
							}
						default:
					}
				default:
			}
		}
	}
	final restrictedFields:Array<String> = [];
	final fields = getStructFields(typeX, restrictedFields, false);
	if (fields.length > 0) {
		var chains:Array<String> = []; // chains together a field selectors
		function recursion(path:String, fields:Array<typer.exprtypes.ExprType.FieldType>, depth:Int) {
			if (depth >= 20)
				return;
			for (field in fields) {
				if (restrictedFields.contains(field.name))
					continue;
				var setPath = path + field.name;
				final chainPath = setPath;
				setPath += ".";
				var structFields = getStructFields(field.type.get(), restrictedFields);
				if (isPointer(field.type.get())) {
					setPath += "value.";
				}
				if (structFields.length > 0)
					recursion(setPath, structFields, depth + 1);
				chains.push(chainPath);
			}
		}
		recursion("", fields, 0);
		var fieldSize = 999999;
		var setSel = selName;
		// love you very much
		for (chain in chains) {
			final newFieldSize = chain.split(".").length;
			final field = chain.substr(chain.lastIndexOf(".") + 1);
			if (field == selName && newFieldSize < fieldSize) {
				fieldSize = newFieldSize;
				setSel = chain;
			}
		}
		selName = setSel;
	}
	return macro $x.$selName;
}

function selectorXIdent(x:MacroExpr, expr:GoAst.SelectorExpr, info:Info):MacroExpr {
	final exprX:GoAst.Ident = expr.x;
	exprX.name = removeSpecialIdentPrefix(exprX.name);
	x = macro $i{splitDepFullPathName(className(exprX.name, info) + "_static_extension", info)};
	final t = typeof(expr, info, false);
	if (t != null) {
		switch t {
			case signature(_, _, _, _.get() => recv, _) if (recv != null):
				var t = switch recv {
					case _var(_, _.get() => t):
						t;
					default:
						recv;
				}
				if (isPointer(t) || isRef(t))
					t = getElem(t);
				final ct = toComplexType(t, info);
				if (ct != null) {
					switch ct {
						case TPath(p):
							if (p.pack.length == 0) {
								p.pack = p.name.split(".");
								p.name = p.pack.pop();
							}
							p.pack.push(p.pack.pop() + "_static_extension");
							p.name += "_static_extension";
							x = macro $p{p.pack.concat([p.name])};
						default:
					}
				}
			default:
		}
	}
	return x;
}

function selectorXSelector(x:MacroExpr, expr:GoAst.SelectorExpr, info:Info):MacroExpr {
	var exprX:GoAst.SelectorExpr = expr.x;
	final xType = typeExprType(exprX, info);
	switch xType {
		case TPath(p):
			if (p.pack.length == 0) {
				p.pack = p.name.split(".");
				p.name = p.pack.pop();
			}
			final last = p.pack.pop();
			p.pack.push(last + "_static_extension");
			p.pack.push(p.name + "_static_extension");
			x = macro $p{p.pack};
		default:
	}
	return x;
}

function selectorKind(expr:GoAst.SelectorExpr):GoAst.ObjKind {
	return switch expr.x.id {
		case "StarExpr":
			if (expr.x.x.id == "Ident") {
				expr.x.x.kind;
			} else if (expr.x.x.id == "SelectorExpr") {
				expr.x.x.sel.kind;
			} else {
				-1;
			}
		case "SelectorExpr":
			if (expr.x.sel.id == "Ident") {
				expr.x.sel.kind;
			} else {
				-1;
			}
		case "Ident":
			expr.x.kind;
		default:
			-1;
	}
}

/**
 * functionName:ident is used to keep track of what ident are tied to a function
 */
function removeSpecialIdentPrefix(s:String):String {
	return s.substr(s.indexOf(":") + 1);
}
