import haxe.macro.Expr;

function interopGen(td:TypeDefinition,path:String, cl:TypeDefinition):Array<TypeDefinition> {
    // exceptions
    if (td.name == "__go2hxdoc__package") {
        cl.doc = td.doc;
		return []; // TODO pull doc information
	}
    if (StringTools.endsWith(td.name, "_static_extension")
    || StringTools.endsWith(td.name, "_asInterface") 
    || StringTools.startsWith(td.name, "T_") 
    || td.name == "__init_go2hx__") {
        return [];
    }
    switch td.kind {
        case TDAlias(_), TDClass(_, _, _, _, _):
            if (StringTools.startsWith(td.name, "T_"))
                return [];
            return [interopType(td, cl, path)];
        case TDField(kind, access):
            return switch kind {
				case FVar(_, _):
					interopGenVar(td, path);
				case FFun(f):
					final access = access == null ? [] : access.copy();
					/*if (access.indexOf(AInline) == -1)
						access.push(AInline);*/
					// at static level
					cl.fields.push({
						name: td.name,
						pos: td.pos,
						doc: td.doc,
						access: [AStatic, APublic, AInline],
						kind: FFun(interopGenFun(td.name, f, path)),
					});
					[];
				case FProp(_, _, _, _):
					throw "FProp not supported";
			}
        default:
            throw "interop type not supported: " + td.kind;
    }
}

private function interopType(td:TypeDefinition, cl:TypeDefinition, path:String):TypeDefinition {
    final pack = path.split("/");
    pack.push(Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
    final params:Array<TypeParam> = [];
    final p:TypePath = {pack: pack, name: td.name, params: params};
    final ct = TPath(p);
    return interopGenAlias({
        name: td.name,
        pack: [],
        fields: [],
        pos: null,
        kind: TDAlias(ct),
    }, cl, path);
}

function interopGenVar(td:TypeDefinition, path:String):Array<TypeDefinition> {
	switch td.kind {
		case TDField(FVar(type, e), access):
			final access = access == null ? [] : access.copy();
			final pack = path.split("/");
			pack.push(Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
			final name = macro $p{pack.concat([td.name])};
			if (access.indexOf(AFinal) != -1) {
				return [{
					name: td.name,
					pos: td.pos,
					pack: td.pack,
					fields: td.fields,
					kind: TDField(FVar(type)),
				}];
			}
			access.push(APrivate);
			access.remove(APublic);
			return [{
				name: td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FProp("get", "set", type)),
			},{
				name: "get_" + td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FFun({
					args: [],
					ret: type,
					expr: macro return $name,
					params: [],
				}), access),
			},{
				name: "set_" + td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FFun({
					args: [{name: "v", type: type}],
					ret: type,
					expr: macro {
						$name = v;
						return v;
					},
					params: [],
				}), access),
			}];
		default:
			throw "FVar expected";
	};
}

private function interopGenAlias(td:TypeDefinition, cl:TypeDefinition, path:String):TypeDefinition {
	return switch td.kind {
		case TDAlias(_):
			final pack = path.split("/");
			final isNameUsed = td.name == cl.name;
			final meta:Array<MetadataEntry> = [];
			if (StringTools.startsWith(td.name, "T_"))
				meta.push({name: ":dox", params: [macro hide], pos: null});
			{
				name: isNameUsed ? td.name + "_" : td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				meta: meta,
				kind: TDAlias(TPath({sub: td.name, name: Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase(), pack: pack, params: td.params?.map(f -> TPType(TPath({name: f.name, pack: []})))})),
				isExtern: td.isExtern,
			};
		default:
			throw "TDAlias expected";
	}
}


function interopGenFun(name:String, f:Function, path:String, staticExtensionName:String=""):Function {
	final args:Array<FunctionArg> = f.args.copy();
	final args:Array<FunctionArg> = [for (arg in args) {
		name: removeUnderline(arg.name),
		type: arg.type,
	}];
	final exprArgs = args.map(arg -> macro $i{arg.name});
	
	final pathArray = path.split("/");
	var last = Typer.title(pathArray[pathArray.length - 1]);
	if (staticExtensionName != "") {
		pathArray.push(last + "_" + staticExtensionName.toLowerCase());
		pathArray.push(staticExtensionName);
	}else{
		pathArray.push(last + "_" + name.toLowerCase());
	}
	pathArray.push(name);
	var expr = macro $p{pathArray}($a{exprArgs});
	if (!Typer.isVoid(f.ret))
		expr = macro return $expr;
	final block:Array<Expr> = [];
	for (i in 0...args.length) {
		final name = args[i].name;
		final e = macro $i{name};
		if (e != null)
			block.push(macro final $name = $e);
	}
	block.push(expr);
	return  {
		args: args,
		ret: f.ret,
		expr: macro $b{block},
		params: f.params,
	};
}

function removeUnderline(name:String):String {
	if (name.charAt(0) == "_" && name.charCodeAt(1) < '0'.code && name.charCodeAt(1) > '9'.code ) {
		name = name.substring(1);
		if (Typer.reserved.indexOf(name) != -1)
			name = "_" + name;
	}
	return name;
}