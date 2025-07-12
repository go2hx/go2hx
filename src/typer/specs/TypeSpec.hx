package typer.specs;

function typeType(spec:GoAst.TypeSpec, info:Info, local:Bool = false, hash:UInt = 0):TypeDefinition {
	var name = className(spec.name.name, info);
	info.global.renameClasses[spec.name.name] = name;
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = codegen.Doc.getDocComment(spec, spec) + codegen.Doc.getSource(spec, info);
	final patchName = info.global.module.path + ":" + name;
	final replaceExpr = codegen.Patch.replace[patchName];
	final printer = new codegen.Printer();
	if (replaceExpr != null) {
		final td:TypeDefinition = {
			name: name,
			pos: null,
			pack: [],
			kind: TDAlias(TPath({name: printer.printExpr(replaceExpr), pack: []})),
			fields: [],
			meta: null, // prevents adding @:using or other metadata
			isExtern: true,
		};
		return td;
	}
	switch spec.type.id {
		case "StructType":
			var struct:GoAst.StructType = spec.type;
			var fields = typer.fields.FieldList.typeFieldListFields(struct.fields, info, [APublic], true);
			var meta:Metadata = [{name: ":structInit", pos: null}];
			info.renameIdents[spec.name.name] = splitDepFullPathName(name + "_static_extension", info);
			info.classNames[spec.name.name] = splitDepFullPathName(name + "_static_extension", info);
			// add to fields patch structs
			final structExpr = codegen.Patch.structs[patchName];
			var structAddFieldsIndex = -1;
			if (structExpr != null) { // patch modify struct
				switch structExpr.expr {
					case EBlock(exprs):
						// exprs.pop();
						for (expr in exprs) {
							var meta:Array<MetadataEntry> = [];
							switch expr.expr {
								case EMeta(s, e):
									meta = [s];
									expr = e;
								default:
							}
							switch expr.expr {
								case EFunction(FNamed(name, _), f):
									fields.push({
										name: name,
										pos: null,
										access: [ADynamic, APublic],
										meta: meta,
										kind: FFun(f)
									});
								case EVars(_[0] => v):
									if (structAddFieldsIndex == -1)
										structAddFieldsIndex = fields.length;
									final access:Array<Access> = [APublic];
									for (m in meta) {
										if (m.name == ":local") {
											access.remove(APublic);
											break;
										}
									}
									fields.push({
										name: v.name,
										pos: null,
										meta: meta,
										access: access,
										kind: FVar(v.type, v.expr),
									});
								default:
							}
						}
					default:
				}
			}
			final names = [for (field in fields) field.name];
			final exprs:Array<Expr> = [
				for (name in names)
					macro if ($i{name} != null) this.$name = $i{name}
			];
			final params = typer.fields.FieldList.getParams(spec.params, info, true);
			var p:TypePath = {name: name, pack: [], params: params.map(p -> TPType(TPath({name: p.name, pack: []})))};
			if (!local) {
				fields.push({
					name: "new",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [
							for (field in fields)
								{
									name: field.name,
									opt: true,
									type: switch field.kind {
										case FVar(t, _): t;
										default: null;
									}
								}
						],
						expr: macro $b{exprs},
					}),
				});
				final underlying = typer.exprs.Expr.toAnyInterface(macro this, typeof(spec.type, info, false), info);
				fields.push({
					name: "__underlying__",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [],
						expr: macro return $underlying,
					})
				});
				final pAsInterface:TypePath = {name: splitDepFullPathName(p.name + "_asInterface", info), params: p.params, pos: p.pos, pack: p.pack};
				fields.push({
					name: "__asInterface__",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [],
						expr: macro {
							final obj = __underlying__();
							var value = this;
							new $pAsInterface(cast stdgo.Go.pointer(value), obj.type);
						},
					})
				});
			}
			/*if (params != null && params.length > 0)
				p.params = typeParamDeclsToTypeParams(params); */
			var args:Array<Expr> = [];
			var sets:Array<Expr> = [];
			for (field in fields) {
				switch field.kind {
					case FVar(t, e):
						final fieldName = field.name;
						args.push(macro $i{fieldName});
						sets.push(macro this.$fieldName = __tmp__.$fieldName);
					default:
				}
			}
			sets.push(macro return this);
			final localEmbeddedFields:Array<Field> = [];
			var prevRenameIdents = info.renameIdents.copy();
			for (method in spec.methods) { // covers both embedded interfaces and structures
				// embedded methods
				if (structAddFieldsIndex > -1 && structAddFieldsIndex <= method.index[0])
					continue;
				final fieldIndex = method.index[0];
				final field = fields[fieldIndex];
				if (field == null)
					continue;
				final name = field.name;
				// can conflict with imports, without prevRenameIdents
				info.renameIdents[name] = name;
				info.restricted = [];
				final type = typeof(method.type, info, false);
				switch type {
					case signature(variadic, _.get() => sigParams, _.get() => results, _):
						final args:Array<Expr> = [];
						final params:Array<FunctionArg> = [];
						for (i in 0...sigParams.length) {
							switch sigParams[i] {
								case _var(oldName, _.get() => t):
									final name = formatHaxeFieldName(oldName, info);
									args.push(macro $i{name});
									params.push({
										name: name,
										type: toComplexType(t, info),
									});
								default:
									final name = "_" + i;
									args.push(macro $i{name});
									params.push({
										name: name,
										type: toComplexType(sigParams[i], info),
									});
							}
						}
						if (variadic) {
							var last = params.pop();
							switch last.type {
								case TPath(p):
									p.name = "Rest";
									p.pack = ["haxe"];
									p.sub = null;
									last.type = TPath(p);
								default:
							}
							args.push(macro...${args.pop()});
							params.push(last);
						}
						final fieldName = typer.exprs.Ident.nameIdent(method.name, false, true, info);
						info.localIdents.remove(fieldName);
						var ret:ComplexType = null;
						if (results.length > 0) {
							if (results.length == 1) {
								ret = toComplexType(results[0], info);
							} else {
								var i = -1;
								ret = TAnonymous([
									for (res in results) {
										i++;
										switch res {
											case _var(_, _.get() => res):
												{
													name: "_" + i,
													pos: null,
													kind: FVar(toComplexType(res, info)),
												}
											default:
												{
													name: "_" + i,
													pos: null,
													kind: FVar(toComplexType(res, info)),
												}
										}
									}
								]);
							}
						}
						final methodRecv = typeof(method.recv, info, false);
						final methodPointer = isPointer(methodRecv);
						var fieldPointerBool = false;
						// var elemType:ComplexType = null;
						switch field.kind {
							case FVar(TPath({name: "Pointer", pack: ["stdgo"], params: params}), _):
								switch params[0] {
									case TPType(TPath(p)):
										// elemType = TPath({name: p.name, pack: p.pack.copy(), sub: p.sub});
									default:
								}
								fieldPointerBool = true;
							default:
						}
						if (methodPointer) {
							if (fieldPointerBool) {
								args.unshift(macro $i{name});
							} else {
								args.unshift(macro stdgo.Go.pointer($i{name}));
							}
						}
						final methodName = formatHaxeFieldName(method.name, info);
						var expr = if (fieldPointerBool) {
							// trace(methodRecv);
							// macro @:check41 this.$name.value.$fieldName;
							switch methodRecv {
								case pointerType(_.get() => elem):
									if (isNamed(elem)) {
										final ct = toComplexType(elem, info);
										addPointerSuffix(ct, info);
										macro @:check420 (stdgo.Go.pointer(this.$name) : $ct).$fieldName;
									} else {
										macro @:check50 (this.$name ?? throw "null pointer dereference").$fieldName;
									}
								default:
									if (!isRef(getUnderlying(methodRecv))) {
										macro @:check310 (this.$name ?? throw "null pointer dereference").value.$fieldName;
									} else {
										macro @:check320 this.$name.value.$fieldName;
									}
							}
						} else {
							switch methodRecv {
								case pointerType(_.get() => elem):
									if (isNamed(elem)) {
										final ct = toComplexType(elem, info);
										addPointerSuffix(ct, info);
										macro @:check42 ((stdgo.Go.pointer(this.$name) : $ct) ?? throw "null pointer dereference").$fieldName;
									} else {
										macro @:check5 (this.$name ?? throw "null pointer dereference").$fieldName;
									}
								default:
									// trace(getUnderlying(methodRecv));
									if (!isRef(getUnderlying(methodRecv))) {
										macro @:check31 (this.$name ?? throw "null pointer dereference").$fieldName;
									} else {
										macro @:check32 this.$name.$fieldName;
									}
							}
						}
						if (info.global.externBool && !StringTools.endsWith(info.global.module.path, "_test")) {
							// expr = results.length == 1 ? typer.exprs.Expr.defaultValue(results[0], info) : macro @:typeType null;
						}
						if (ret == null)
							ret = TPath({name: "Void", pack: []});
						final ftype = TFunction(params.map(param -> param.type), ret);
						final field:Field = {
							name: methodName,
							pos: null,
							access: [APublic],
							/*kind: FFun({
								args: params,
								ret: ret,
								expr: isVoid(ret) ? expr : macro return $expr,
							}),*/
							kind: FProp("get", "never", ftype),
						};
						final fieldGet:Field = {
							name: "get_" + methodName,
							pos: null,
							meta: [{name: ":embedded", pos: null}],
							access: [APublic],
							kind: FFun({
								args: [],
								ret: ftype,
								expr: macro return $expr,
								params: [],
							}),
						};
						if (local) {
							localEmbeddedFields.push(field);
							localEmbeddedFields.push(fieldGet);
						} else {
							fields.push(field);
							fields.push(fieldGet);
						}
					default:
						throw info.panic() + "method not a signature";
				}
				info.restricted = [];
			}
			info.renameIdents = prevRenameIdents;
			if (local) { // local type created from analysis/local
				final def:TypeDefinition = {
					name: name,
					pack: [],
					pos: null,
					fields: [],
					meta: [{name: ":local", pos: null, params: []}],
					kind: TDAlias(TAnonymous(fields.map(field -> {
						switch field.kind {
							case FVar(t, e):
								field.kind = FVar(t, null);
							default:
						}
						field;
					}))),
				}
				// if (localEmbeddedFields.length > 0) {
				final ct:ComplexType = TPath({
					name: splitDepFullPathName(def.name + "Pointer", info),
					pack: [],
					params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []}))),
				});
				// type alias pointer
				final aliasPointerName = def.name + "Pointer";
				final aliasPointer:TypeDefinition = {
					name: aliasPointerName,
					pos: null,
					pack: [],
					kind: TDAlias(TPath({
						name: "Pointer",
						pack: ["stdgo"],
						params: [
							TPType(TPath({
								pack: [],
								name: splitDepFullPathName(def.name, info),
								params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []})))
							}))
						]
					})),
					params: def.params,
					fields: [],
					isExtern: true,
					meta: [{name: ":keep", pos: null}, {name: ":follow", pos: null},],
				};
				if (!HaxeAst.alreadyExistsTypeDef(aliasPointer, info))
					info.data.defs.push(aliasPointer);
				final staticExtensionName = def.name + "_static_extension";
				final wrapperName = def.name + "_asInterface";
				final fieldWrapper = [info.global.filePath, wrapperName];
				final globalPath = getGlobalPath(info);
				if (globalPath != "")
					fieldWrapper.unshift(globalPath);
				final staticExtension:TypeDefinition = {
					name: staticExtensionName,
					pos: null,
					pack: [],
					kind: TDClass(),
					fields: [],
					isExtern: true,
					meta: [
						{name: ":keep", pos: null},
						{name: ":allow", pos: null, params: [toExpr(EConst(CIdent(fieldWrapper.join("."))))]}
					],
				};
				final wrapper = HaxeAst.createWrapper(wrapperName, ct);
				wrapper.isExtern = true;
				wrapper.params = def.params;
				if (!HaxeAst.alreadyExistsTypeDef(wrapper, info))
					info.data.defs.push(wrapper);
				// embedding
				aliasPointer.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
				def.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
				if (!HaxeAst.alreadyExistsTypeDef(staticExtension, info))
					info.data.defs.push(staticExtension);
				var embedded = false;
				for (field in localEmbeddedFields) { // embedded
					if (field.meta != null) {
						embedded = false;
						for (meta in field.meta) {
							if (meta.name == ":embedded") {
								embedded = true;
								break;
							}
						}
						if (embedded) { // embedded method already exists create it for staticExtension
							switch field.kind {
								case FFun(fun):
									field.name = field.name.substr("_get".length);
									field.meta.push({name: ":localembedfields", pos: null});
									switch fun.ret {
										case TFunction(args, ret):
											fun.ret = ret;
											fun.args = [for (i in 0...args.length) {name: '_$i', type: args[i]}];
										default:
									}
									final t = TPath({name: splitDepFullPathName(def.name, info), pack: []});
									final fArgs = fun.args.map(arg -> macro $i{arg.name});
									if (fun.args.length > 0 && HaxeAst.isRestType(fun.args[fun.args.length - 1].type)) {
										fArgs[fArgs.length - 1] = macro...$e{fArgs[fArgs.length - 1]};
									}
									fun.args.unshift({
										name: "__self__",
										type: t,
										meta: [],
									});
									fun.expr = macro ${fun.expr}($a{fArgs});
									final expr = {expr: fun.expr.expr, pos: null};
									final fieldName = field.name;
									final args = fun.args.slice(0).map(a -> macro $i{a.name});
									switch fun.args[fun.args.length - 1].type {
										case TPath(p):
											if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...$e{
												args[args.length - 1]
											};
										default:
									}
									fun.expr = typer.exprs.Ident.replaceIdent(["this" => "__self__"], fun.expr);
									switch expr.expr {
										case EReturn(_):
											fun.expr = macro return ${fun.expr};
										default:
									}
									// embedded unnamed structs
									HaxeAst.addLocalMethod(field.name, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
										true, def.params != null
										&& def.params.length > 0);
								default:
							}
						}
					}
				}
				// }
				return def;
				// meta.push({name: ":local", pos: null});
			}
			/*if (!externBool)
				meta.push({name: ":private", pos: null}); */
			var cl:TypeDefinition = {
				name: name,
				pos: null,
				fields: fields,
				pack: [],
				params: params,
				doc: doc,
				isExtern: true,
				meta: meta,
				kind: TDClass(),
			};
			cl.fields.push({
				name: "__copy__", // internally used
				pos: null,
				access: [APublic],
				kind: FFun({
					args: [],
					expr: macro {
						return new $p($a{args});
					},
				}),
			});
			return cl;
		case "InterfaceType": // type interface
			var struct:GoAst.InterfaceType = spec.type;

			final params = typer.fields.FieldList.getParams(spec.params, info, true);

			if (struct.methods.list.length == 0 && !struct.incomplete) {
				final meta:Metadata = [{name: ":follow", pos: null}];
				return {
					name: name,
					pos: null,
					fields: [],
					pack: [],
					doc: codegen.Doc.getDocComment(spec),
					params: params,
					isExtern: externBool,
					meta: meta,
					kind: TDAlias(HaxeAst.anyInterfaceType()),
				}
			}
			final staticExtensionName = name + "_static_extension";
			final staticExtension:TypeDefinition = {
				name: staticExtensionName,
				pos: null,
				pack: [],
				kind: TDClass(),
				fields: [],
				isExtern: true,
				meta: [{name: ":keep", pos: null},],
			};
			if (!HaxeAst.alreadyExistsTypeDef(staticExtension, info))
				info.data.defs.push(staticExtension);
			final fields:Array<haxe.macro.Expr.Field> = typer.fields.FieldList.typeFieldListMethods(struct.methods, info);
			final wrapper = macro class Wrapper {};
			for (i in 0...fields.length) {
				final field = fields[i];
				switch field.kind {
					case FProp(_, _, TFunction(args, ret), _):
						throw "use this prop";
						// f.args.unshift({})
						final fargs = [for (i in 0...args.length) macro $i{'_$i'}];
						if (args.length > 0 && HaxeAst.isRestType(args[args.length - 1])) {
							fargs[fargs.length - 1] = macro...$e{fargs[fargs.length - 1]};
						}
						final fieldName = field.name;
						final f:haxe.macro.Expr.Function = {args: []};
						f.params = params;
						f.args = [
							for (i in 0...args.length)
								({
									name:'_$i', type:args[i]
								} : haxe.macro.Expr.FunctionArg)
						];
						f.expr = macro t.$fieldName($a{fargs});
						f.ret = ret;
						if (!HaxeAst.isVoid(f.ret))
							f.expr = macro return ${f.expr};
						field.meta.push({name: ":interfacetypefprop", pos: null});
						f.args.unshift({name: "t", type: TPath({name: splitDepFullPathName(name, info), pack: [], params: typer.HaxeAst.typeParamDeclsToTypeParams(params)})});
						// interface struct creation
						HaxeAst.addLocalMethod(field.name, field.pos, field.meta, null, [], f, staticExtension, wrapper, false, false);
						f.expr = null;
						f.args.shift();
					case FFun(f):
						f.params = params;
						final args = [for (arg in f.args) macro $i{arg.name}];
						if (f.args.length > 0 && HaxeAst.isRestType(f.args[f.args.length - 1].type)) {
							args[args.length - 1] = macro...$e{args[args.length - 1]};
						}
						final fieldName = field.name;
						f.expr = macro t.$fieldName($a{args});
						if (!HaxeAst.isVoid(f.ret))
							f.expr = macro return ${f.expr};
						f.args.unshift({name: "t", type: TPath({name: splitDepFullPathName(name, info), pack: [], params: typer.HaxeAst.typeParamDeclsToTypeParams(params)})});
						if (field.meta == null)
							field.meta = [];
						field.meta.push({name: ":interfacetypeffun", pos: null});
						// interface struct creation
						HaxeAst.addLocalMethod(field.name, field.pos, field.meta, null, [], f, staticExtension, wrapper, false, false);
						f.expr = null;
						f.args.shift();
					default:
				}
			}
			for (field in fields)
				field.access.push(ADynamic);
			var meta = [{name: ":interface", pos: null}];
			// embedded interfaces
			final implicits:Array<TypePath> = [];
			if (struct.methods != null && struct.methods.list != null)
				if (struct.methods.list.length == 1 && struct.methods.list[0].names.length == 0) {
					if (struct.methods.list[0].type.id == "BinaryExpr") {
						// union contract interface type
						final meta:Metadata = [{name: ":union", pos: null}];
						final params = typer.fields.FieldList.getParams(spec.params, info, true);
						return {
							name: name,
							pack: [],
							pos: null,
							fields: [],
							params: params,
							isExtern: externBool,
							meta: meta,
							kind: TDStructure, // TDAlias(TPath({name: "Any", pack: []})),
						};
					}
				}

			for (method in struct.methods.list) {
				if (method.names.length == 0) {
					var t = typeof(method.type, info, false);
					t = getUnderlying(t);
					switch t {
						case interfaceType(_, methods):
							final ct = typeExprType(method.type, info);
							final tp = getTypePath(ct, info);
							if (tp == null) {} else {
								// implicits.push(tp);
								for (method in methods) {
									final name = method.name; // formatHaxeFieldName(method.name, info);
									switch toComplexType(method.type.get(), info) {
										case TFunction(args, ret):
											var hasFieldName = false;
											for (field in fields) {
												if (field.name == name) {
													hasFieldName = true;
													break;
												}
											}
											if (!hasFieldName) {
												fields.push({
													name: name,
													pos: null,
													access: [APublic, ADynamic],
													kind: FFun({
														args: [
															for (i in 0...args.length)
																({
																	name:'_$i', type:args[i]
																} : haxe.macro.Expr.FunctionArg)
														],
														ret: ret,
													}),
												});
											}
										default:
									}
								}
							}
						default:
					}
				}
			}
			final params = typer.fields.FieldList.getParams(spec.params, info, true);
			if (struct.incomplete) {
				switch name {
					case "Error":
						implicits.push(switch HaxeAst.errorType() {
							case TPath(p):
								p;
							default:
								throw "invalid";
						});
					default:
						trace("struct incomplete: " + name);
				}
			}
			return {
				name: name,
				pack: [],
				pos: null,
				doc: doc,
				params: params,
				fields: [],
				isExtern: externBool,
				meta: meta,
				kind: TDAlias(TIntersection([
					TPath({
						name: "StructType",
						pack: ["stdgo"]
					}),
					TExtend(implicits, fields)
				]))
			};
		default:
			return null;
	}
}
