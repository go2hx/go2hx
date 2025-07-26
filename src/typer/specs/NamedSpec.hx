package typer.specs;

function typeNamed(spec:GoAst.TypeSpec, info:Info):TypeDefinition {
	final name = className(spec.name.name, info);
	info.global.renameClasses[spec.name.name] = name;
	// info.renameIdents[spec.name.name] = name + "_static_extension";
	// info.classNames[spec.name.name] = name + "_static_extension";
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = gen.Doc.getDocComment(spec, spec) + gen.Doc.getSource(spec, info);
	var ct = TPath({name: name, pack: []});
	var t = typeof(spec.type, info, false);
	switch t {
		case structType(fs):
			final path = getTypePath(ct, info);
			final superClass = path;
			final argExprs:Array<Expr> = [];
			final args:Array<FunctionArg> = [];
			for (field in fs) {
				final name = field.name;
				argExprs.push(macro $i{name});
				args.push({opt: true, name: name});
			}
			final meta:Metadata = [{name: ":structInit", pos: null}, {name: ":named", pos: null}];
			final params = typer.fields.FieldList.getParams(spec.params, info, true); // named struct
			final p:TypePath = {name: name, pack: []};
			if (params != null && params.length > 0)
				p.params = HaxeAst.typeParamDeclsToTypeParams(params);
			final td = macro class $name {
				public function new() {}

				public function __copy__() {}
			};
			switch td.fields[0].kind {
				case FFun(f):
					f.args = args;
					f.expr = macro super($a{argExprs});
				default:
			}
			switch td.fields[1].kind {
				case FFun(f):
					f.expr = macro new $p($a{argExprs});
				default:
			}
			td.meta = meta;
			td.doc = gen.Doc.getDocComment(spec);
			td.isExtern = isTitle(spec.name.name);
			td.kind = TDClass(superClass);
			return td;
		case interfaceType(empty, _):
			if (empty) {
				final meta:Metadata = [{name: ":follow", pos: null}];
				final params = typer.fields.FieldList.getParams(spec.params, info, true); // no meta :genericBuild
				return {
					name: name,
					pos: null,
					pack: [],
					params: params,
					isExtern: isTitle(spec.name.name),
					fields: [],
					doc: gen.Doc.getDocComment(spec),
					meta: meta,
					kind: TDAlias(HaxeAst.anyInterfaceType()),
				};
			}
			final meta:Metadata = [];
			final params = typer.fields.FieldList.getParams(spec.params, info, true);
			return {
				name: name,
				pos: null,
				params: params,
				pack: [],
				doc: gen.Doc.getDocComment(spec),
				isExtern: isTitle(spec.name.name),
				fields: [],
				meta: meta,
				kind: TDAlias(ct)
			};
		case refType(_.get() => named(path, _, t, _, _)), pointerType(_.get() => named(path, _, t, _, _)):
			switch t {
				case refType(_.get() => elem):
					switch elem {
						case named(path2, _, invalidType, _, _):
							if (path == path2) {
								final td = macro class $name {
									public function new() {}

									public function __copy__() {}
								};
								td.meta = [{name: ":onlynameref", pos: null}];
								return td;
							}
						default:
					}
				default:
			}
		default:
	}
	if (getUnderlying(t) == invalidType) {
		t = refToPointerWrapper(t);
	}
	var uct = t == invalidType ? HaxeAst.invalidComplexType() : toComplexType(t, info);
	final meta:Metadata = [{name: ":named", pos: null}];
	final params = typer.fields.FieldList.getParams(spec.params, info, true);
	return {
		name: name,
		pos: null,
		pack: [],
		fields: [],
		isExtern: isTitle(spec.name.name),
		doc: gen.Doc.getDocComment(spec),
		params: params,
		meta: meta,
		kind: TDAlias(uct),
	}
}
