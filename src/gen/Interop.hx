package gen;

import haxe.macro.Expr;

function interopGen(td:TypeDefinition, path:String, cl:TypeDefinition):Array<TypeDefinition> {
	// exceptions
	if (td.name == "__go2hxdoc__package") {
		cl.doc = td.doc;
		return []; // TODO pull doc information
	}
	if (StringTools.endsWith(td.name, "_static_extension")
		//|| StringTools.endsWith(td.name, "_asInterface")
		|| StringTools.startsWith(td.name, "T_")
		|| td.name == "__init_go2hx__") {
		return [];
	}
	switch td.kind {
		case TDAlias(_), TDClass(_, _, _, _, _), TDStructure:
			// Do not handle unexported types
			if (StringTools.startsWith(td.name, "T_"))
				return [];
			return [interopType(td, cl, path)];
		case TDField(kind, access):
			// Do not handle unexported types
			if (td.name.charAt(0) == "_")
				return [];
			return switch kind {
				case FVar(_, _):
					interopGenVar(td, path, cl);
				case FFun(f):
					if (td.name.indexOf("__tp__") != -1)
						return [];
					final access = access == null ? [] : access.copy();
					/*if (access.indexOf(AInline) == -1)
						access.push(AInline); */
					// at static level
					final newAccess = [AStatic, APublic, AInline];
					if (access.indexOf(AExtern) != -1)
						newAccess.push(AExtern);
					if (access.indexOf(AOverload) != -1)
						newAccess.push(AOverload);
					cl.fields.push({
						name: td.name,
						pos: td.pos,
						doc: seeDoc(td.doc, td.name, path),
						access: newAccess,
						kind: FFun(interopGenFun(td.name, f, path, cl)),
					});
					[];
				case FProp(_, _, _, _):
					throw "FProp not supported";
			}
		default:
			throw "interop type not supported: " + td.kind + " " + path;
	}
}

private function seeDoc(doc, name, path:String) {
	if (doc == null)
		return doc;
	path = path.substr("go/_internal/".length);
	final seeLine = "\n* @see https://pkg.go.dev/" + path + "/#" + title(name);
	doc += seeLine;
	return doc;
}

private function interopType(td:TypeDefinition, cl:TypeDefinition, path:String):TypeDefinition {
	final pack = path.split("/");
	pack.push(io.Path.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
	final params:Array<TypeParam> = td.params == null ? null : typer.HaxeAst.typeParamDeclsToTypeParams(td.params.copy());
	final p:TypePath = {pack: pack, name: td.name, params: params};
	final ct = TPath(p);
	return interopGenAlias({
		name: td.name,
		pack: [],
		meta: [{name: ":eager", pos: null}, {name: ":follow", pos: null}],
		fields: [],
		doc:  seeDoc(td.doc, td.name, path),
		params: td.params,
		pos: null,
		kind: TDAlias(ct),
	}, cl, path);
}

function interopGenVar(td:TypeDefinition, path:String, cl:TypeDefinition):Array<TypeDefinition> {
	switch td.kind {
		case TDField(FVar(type, e), access):
			final access = access == null ? [] : access.copy();
			final pack = path.split("/");

			pack.push(io.Path.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
			final name = macro $p{pack.concat([td.name])};
			final convertedType = convertComplexType(type, path, cl);
			if (access.indexOf(AFinal) != -1) {
				return [
					{
						name: td.name,
						pos: td.pos,
						doc: td.doc,
						pack: td.pack,
						fields: td.fields,
						kind: TDField(FVar(convertedType, e)),
					}
				];
			}
			access.push(APrivate);
			access.remove(APublic);
			return [
				{
					name: td.name,
					pos: td.pos,
					doc: td.doc,
					pack: td.pack,
					fields: td.fields,
					kind: TDField(FProp("get", "set", convertedType)),
				},
				{
					name: "get_" + td.name,
					pos: td.pos,
					pack: td.pack,
					fields: td.fields,
					kind: TDField(FFun({
						args: [],
						ret: convertedType,
						expr: macro return $name,
						params: [],
					}), access),
				},
				{
					name: "set_" + td.name,
					pos: td.pos,
					pack: td.pack,
					fields: td.fields,
					kind: TDField(FFun({
						args: [{name: "v", type: convertedType}],
						ret: type,
						expr: macro {
							$name = v;
							return v;
						},
						params: [],
					}), access),
				}
			];
		default:
			throw "FVar expected";
	};
}

private function interopGenAlias(td:TypeDefinition, cl:TypeDefinition, path:String):TypeDefinition {
	return switch td.kind {
		case TDAlias(_):
			final pack = path.split("/");
			final isNameUsed = td.name == cl.name;
			final meta:Array<MetadataEntry> = [{name: ":eager", pos: null}];
			if (StringTools.startsWith(td.name, "T_"))
				meta.push({name: ":dox", params: [macro hide], pos: null});
			{
				name: isNameUsed ? td.name + "_" : td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				params: td.params,
				meta: meta,
				doc: td.doc,
				kind: TDAlias(TPath({
					sub: td.name,
					name: io.Path.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase(),
					pack: pack,
					params: td.params == null ? null : typer.HaxeAst.typeParamDeclsToTypeParams(td.params.copy()),
				})),
				isExtern: td.isExtern,
			};
		default:
			throw "TDAlias expected";
	}
}

function interopGenFun(name:String, f:Function, path:String, cl:TypeDefinition, staticExtensionName:String = ""):Function {
	final args:Array<FunctionArg> = f.args.copy();
	final args:Array<FunctionArg> = [
		for (arg in args)
			{
				name: removeUnderline(arg.name),
				type: convertComplexType(arg.type, path, cl),
			}
	];
	final exprArgs = args.map(arg -> macro $i{arg.name});
	if (args.length > 0) {
		switch args[args.length - 1].type {
			case TPath({name: "Rest", pack: ["haxe"], params: [TPType(t)]}):
				exprArgs[exprArgs.length - 1] = macro...[for (i in ${exprArgs[exprArgs.length - 1]}) i];
			default:
		}
	}
	final pathArray = path.split("/");
	var last = io.Path.title(pathArray[pathArray.length - 1]);
	if (staticExtensionName != "") {
		pathArray.push(last + "_" + staticExtensionName.toLowerCase());
		pathArray.push(staticExtensionName);
	} else {
		pathArray.push(last + "_" + name.toLowerCase());
	}
	pathArray.push(name);
	var expr = macro $p{pathArray}($a{exprArgs});
	//trace(path, name, f.ret);
	if (!typer.HaxeAst.isVoid(f.ret))
		expr = macro return $expr;
	final block:Array<Expr> = [];
	return {
		args: args,
		ret: f.ret,
		expr: expr,
		params: f.params,
	};
}

function removeUnderline(name:String):String {
	if (name.charAt(0) == "_" && name.charCodeAt(1) < '0'.code && name.charCodeAt(1) > '9'.code) {
		name = name.substring(1);
		if (io.Data.reserved.indexOf(name) != -1)
			name = "_" + name;
	}
	return name;
}

function convertComplexType(ct:ComplexType, path:String, cl:TypeDefinition):ComplexType {
	if (ct == null)
		return null;
	// To extern version
	switch ct {
		case TNamed(n, t):
			return TNamed(n, convertComplexType(t, path, cl));
		case TFunction(args, ret):
			return TFunction(args.map(arg -> convertComplexType(arg, path, cl)), convertComplexType(ret, path, cl));
		case TPath(p):
			if (StringTools.startsWith(p.name, "T_")) {
				return ct;
			}
			final b = (p.pack.slice(0, p.pack.length - 1).join("/")) == path;
			if (b) {
				ct = TPath({
					name: p.name,
					pack: [],
					sub: p.sub,
					params: p.params
				});
			} else {
				if (p.pack.length > 1 && p.pack[0] == "_internal") {
					final pack = p.pack.copy();
					pack.shift();
					// regexp2,syntax,Syntax_code
					pack.pop();
					final lastPack = pack.pop();
					pack.push(lastPack);
					pack.push(io.Path.title(lastPack));
					ct = TPath({
						name: p.name,
						pack: pack,
						sub: p.sub,
						params: p.params
					});
				} else {
					ct = TPath({
						name: p.name,
						pack: p.pack,
						sub: p.sub,
						params: p.params
					});
				}
			}
		default:
	}
	// Other cases
	switch ct {
		case TAnonymous(fields):
			// tuple
			if (fields.length <= 6) {
				var isTuple = true;
				for (i in 0...fields.length) {
					if (fields[i].name != "_" + i) {
						isTuple = false;
						break;
					}
				}
				if (isTuple) {
					final types = [];
					for (field in fields) {
						switch field.kind {
							case FVar(type, _):
								types.push(TPType(convertComplexType(type, path, cl)));
							default:
								throw "Field kind not supported: " + field.kind;
						}
					}
					final is2 = fields.length == 2;
					final name = "Tuple";
					final sub = is2 ? null : "Tuple" + fields.length;
					return TPath({
						name: name,
						sub: sub,
						pack: ["go"],
						params: types
					});
				}
			}
			return TAnonymous([
				for (field in fields) {
					switch field.kind {
						case FVar(type, _):
							{
								pos: null,
								name: field.name,
								kind: FVar(convertComplexType(type, path, cl), null),
							}
						default:
							throw "Field kind not supported: " + field.kind;
					}
				}
			]);
		case TPath({name: "Bool", pack: [], params: _}):
			return ct;
		case TPath(p) if (p.pack != null && p.pack.length > 0 && p.pack[0] == "go"):
			return ct;
		case TPath({name: name, pack: pack, params: params}):
			return TPath({
				name: name == cl.name ? name + "_" : name,
				pack: pack,
				params: params == null ? null : params.map(param -> switch param {
					case TPType(t):
						TPType(convertComplexType(t, path, cl));
					default:
						throw "unreachable";
				})
			});
		case TIntersection(tl):
			// skip over go.StructType
			return TIntersection([convertComplexType(tl[1], path, cl)]);
		case TExtend(p, fields):
			return TExtend(p.map(p -> {
				final ct = convertComplexType(TPath(p), path, cl);
				switch ct {
					case TPath(p):
						p;
					default:
						throw "unknown ct: " + ct;
				}
			}), fields);
		default:
			throw "unknown: " + ct;
	}
	return ct;
	// return TPath({name: "Dynamic", pack: [], params: [TPType(ct)]});
}
