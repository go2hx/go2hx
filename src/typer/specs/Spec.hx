package typer.specs;

function typeSpec(spec:GoAst.TypeSpec, info:Info, local:Bool = false):TypeDefinition {
	var hash:UInt = 0;
	if (spec.type.type != null) {
		if (spec.type.type != null && spec.type.type.hash != null)
			hash = spec.type.type.hash;
		if (!info.locals.exists(hash) || hash == 0) {
			final path = spec.name.type.path == null ? spec.name.name : spec.name.type.path;
			var nameType:GoType = if (spec.type.id == "InterfaceType") {
				final t = typeof(spec.type.type, info, true, [path]);
				named(className(path, info), [], t, false, {get: () -> null});
			} else {
				final t = typeof(spec.type, info, false);
				info.localUnderlyingNames[path] = t;
				t;
			}
			switch nameType {
				case structType(fields):
					nameType = named(className(path, info), [], structType(fields), spec.assign != 0 || local, {get: () -> null});
				default:
			}
			/*if (hash != 0) {
				info.locals[hash] = nameType;
			}*/
			// trace(className(path, info));
			// Do not add T__interface_ as another local type, it behaves differently
			if (StringTools.startsWith(className(path, info), "T__struct_") && spec.type != null) {
				info.locals[hash] = nameType;
			}
		}
	}
	if (spec.type != null) {
		if (spec.assign != 0 && spec.type.id != "InterfaceType") {
			var name = className(spec.name.name, info);
			var type = typeExprType(spec.type, info);
			if (type == null)
				return null;
			return {
				name: name,
				pos: null,
				pack: [],
				isExtern: isTitle(spec.name.name),
				doc: codegen.Doc.getDocComment(spec),
				meta: [{name: ":follow", pos: null}],
				fields: [],
				kind: TDAlias(type),
			}
		}
	}
	return switch spec.type.id {
		case "StructType", "InterfaceType": typer.specs.TypeSpec.typeType(spec, info, local, hash);
		default: typer.specs.NamedSpec.typeNamed(spec, info);
	}
}
