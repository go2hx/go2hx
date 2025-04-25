package typer.exprs;

function typeSelectorExpr(expr:GoAst.SelectorExpr, info:Info):ExprDef { // EField
	var sel = nameIdent(expr.sel.name, false, false, info, false, true);
	var isStar = false;
	expr.x = GoAst.escapeParensRaw(expr.x);
	final kind = selectorKind(expr);
	final isStar = expr.x.id == "StarExpr";
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	// if ident is type
	if (kind == 3) {
		if (isStar)
			expr.x = expr.x.x;
		switch expr.x.id {
			case "Ident":
				final index = expr.x.name.indexOf(":");
				if (index != -1) {
					expr.x.name = (expr.x.name : String).substr(index + 1);
				}
				x = macro @:selectorExpr $i{splitDepFullPathName(className(expr.x.name, info) + "_static_extension", info)};
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
										x = macro @:selectorExprRecv $p{p.pack.concat([p.name])};
									default:
								}
							}
						default:
					}
				}
			case "SelectorExpr":
				final xType = typeExprType(expr.x, info);
				switch xType {
					case TPath(p):
						// p = {pack: [stdgo,_internal,time,Time_Time], name: Time, params: []}
						// expected = time/Time_Time_static_extension/Time_static_extension
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
				x = macro $i{s + "_" + sel.toLowerCase()};
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
							if (method.name != sel)
								continue;
							recvPointerBool = isRef(method.recv.get());
							break;
						}
						if (!recvPointerBool) {
							x = macro $x.value;
						} else {
							final ct = toComplexType(named(path, methods, type, alias, params), info);
							addPointerSuffix(ct);
							x = macro @:isptr ($x : $ct);
						}
					default:
						// throw "needs to be named type: " + elem;
				}
			}
		}
	} else {
		if (!GoAst.isClass(expr.x, info)) {
			switch typeX {
				case named(path, methods, type, alias, params):
					var recvPointerBool = false;
					for (method in methods) {
						if (method.name != sel)
							continue;
						switch typeof(expr.sel, info, false) {
							case signature(_, _.get() => params, _.get() => results, _.get() => recv, _.get() => typeParams):
								// trace(getVar(recv));
								// trace(getElem(getVar(recv)));
								// trace(sel);
							default:
						}
						// trace(getElem(method.recv.get()), isRefValue(getElem(method.recv.get())));
						recvPointerBool = isRef(method.recv.get());
						// trace(recvPointerBool, method.name, method.recv.get());
						break;
					}
					if (!recvPointerBool) {
						// trace("here?");
						// x = macro $x.value;
						// x = macro (@:check $x ?? throw "null pointer dereference");
					} else {
						final ct = toComplexType(named(path, methods, type, alias, params), info);
						addPointerSuffix(ct);
						if (!isRefValue(type)) {
							x = macro @:notptr (stdgo.Go.pointer($x) : $ct);
						} else {
							x = macro @:check2 $x;
						}
					}
				case refType(_.get() => elem):
					switch elem {
						case named(path, methods, type, alias, params):
							var recvPointerBool = false;
							for (method in methods) {
								if (method.name != sel)
									continue;
								switch typeof(expr.sel, info, false) {
									case signature(_, _.get() => params, _.get() => results, _.get() => recv, _.get() => typeParams):
										// trace(getVar(recv));
										// trace(getElem(getVar(recv)));
										// trace(sel);
									default:
								}
								// trace(getElem(method.recv.get()), isRefValue(getElem(method.recv.get())));
								recvPointerBool = isRef(method.recv.get());
								// trace(recvPointerBool, method.name, method.recv.get());
								break;
							}
							if (!recvPointerBool) {
								// trace("here?");
								// x = macro $x.value;
								if (expr.x.id != "CallExpr")
									x = macro(@:checkr $x ?? throw "null pointer dereference");
							} else {
								final ct = toComplexType(named(path, methods, type, alias, params), info);
								addPointerSuffix(ct);
								if (!isRefValue(type)) {
									x = macro @:notptrr2 (stdgo.Go.pointer($x) : $ct);
								} else {
									x = macro @:check2r $x;
								}
							}
						default:
					}
				// x = macro @:check4 ($x ?? throw "null pointer dereference");
				default:
					// throw "needs to be named type: " + typeX;
			}
		}
	}
	final restrictedFields:Array<String> = [];
	// onlyEmbeds = false
	final fields = getStructFields(typeX, restrictedFields, false);
	if (fields.length > 0) {
		var chains:Array<String> = []; // chains together a field selectors
		function recursion(path:String, fields:Array<FieldType>, depth:Int) {
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
		var setSel = sel;
		for (chain in chains) {
			final newFieldSize = chain.split(".").length;
			final field = chain.substr(chain.lastIndexOf(".") + 1);
			// trace(newFieldSize, chain, );
			if (field == sel && newFieldSize < fieldSize) {
				fieldSize = newFieldSize;
				setSel = chain;
				// trace("set to chain: " + chain);
			}
		}
		sel = setSel;
	}
	final e = macro $x.$sel;
	// trace(printer.printExpr(e), kind, typeX);
	return e.expr; // EField
}