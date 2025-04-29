package typer.specs;

import haxe.macro.Expr.Position;

function typeValue(value:GoAst.ValueSpec, info:Info, pkg:typer.Package.IntermediatePackageType, constant:Bool):Array<TypeDefinition> {
	final elem = hashTypeToExprType(value.names[0].type.elem, info);
	var type:ComplexType = null;
	var interfaceBool = false;
	if (value.type.id != null) {
		type = typeExprType(value.type, info);
		interfaceBool = isAnyInterface(typeof(value.type, info, false));
	}
	var values:Array<TypeDefinition> = [];
	// destructure
	if (value.names.length > value.values.length && value.values.length > 0) {
		var t = typeof(value.values[0], info, false);
		var tmp = "__tmp__" + (info.blankCounter++);
		var tmpExpr = macro $i{splitDepFullPathName(tmp, info)};
		var func = typer.exprs.Expr.typeExpr(value.values[0], info);
		func = GoAst.castTranslate(value.values[0], func, info) ?? func;
		info.blankCounter++;
		final posMin = info.blankCounter;
		final pos:Position = cast {min: posMin, max: 0, file: ""};
		values.unshift({
			name: tmp,
			pos: pos,
			pack: [],
			fields: [],
			kind: TDField(FVar(null, func))
		});
		var emptyNames = true;
		for (i in 0...value.names.length) {
			var fieldName = "_" + i;
			var nameStr = value.names[i]?.name;
			if (nameStr == null) {
				nameStr = fieldName;
			} else {
				if (nameStr != "_")
					emptyNames = false;
			}
			final name = typer.exprs.Ident.nameIdent(nameStr, false, true, info);
			info.localIdents.remove(name);
			var e = macro $tmpExpr.$fieldName;
			final toType = typeof(value.names[i], info, false);
			e = typer.exprs.Expr.explicitConversion(t, toType, e, info, false);
			final pos:Position = cast {min: posMin, max: 0, file: ""};
			values.push({
				name: name,
				pos: pos,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i]?.name ?? ""),
				kind: TDField(FVar(type, e), [])
			});
		}
		if (emptyNames)
			pkg.varOrder.push(tmp);
	} else {
		// normal
		for (i in 0...value.names.length) {
			var expr:Expr = null;
			if (value.values[i] == null) {
				if (type != null) {
					expr = typer.exprs.Expr.defaultValue(typeof(value.type, info, false), info);
				} else {
					if (!info.global.externBool
						|| StringTools.endsWith(info.global.module.path, "_test")
						|| StringTools.endsWith(info.global.module.path, "_test")) {
						expr = typer.exprs.Expr.typeExpr(info.lastValue, info);
						expr = typer.exprs.Expr.explicitConversion(typeof(info.lastValue, info, false), info.lastType, expr, info);
					} else {
						expr = typer.exprs.Expr.defaultValue(info.lastType, info);
					}
				}
			} else {
				info.lastValue = value.values[i];
				info.lastType = typeof(value.type, info, false);
				final t = typeof(value.values[i], info, false);
				final nameType = typeof(value.names[i], info, false);
				if (!info.global.externBool || StringTools.endsWith(info.global.module.path, "_test")) {
					expr = typer.exprs.Expr.typeExpr(value.values[i], info);
					expr = typer.exprs.Expr.explicitConversion(t, info.lastType, expr, info);
				} else {
					if (info.lastType != null && info.lastType != invalidType) {
						expr = typer.exprs.Expr.defaultValue(info.lastType, info);
					} else {
						if (t == invalidType) {
							expr = typer.exprs.Expr.defaultValue(nameType, info);
						} else {
							expr = typer.exprs.Expr.defaultValue(t, info);
						}
					}
				}
				type = toComplexType(nameType, info);
			}
			if (expr == null)
				continue;
			var name = typer.exprs.Ident.nameIdent(value.names[i].name, false, true, info);
			info.localIdents.remove(name);
			// empty name
			if (value.names[i].name == "_")
				pkg.varOrder.push(name);
			var doc:String = codegen.Doc.getDocComment(value, value); // + getSource(value, info);
			var access = [];
			// if (!isTitle(value.names[i].name))
			//	access.push(APrivate);
			if (constant)
				access.push(AFinal);
			final patchName = info.global.module.path + ":" + name;
			var patch = null;
			#if !macro
			patch = codegen.Patch2.getValue(info.global.module.path, name);
			#end
			if (patch == null) {
				// patch = codegen.Patch.list[patchName];
				if (patch != null) {
					throw "PATCHFAILED_VALUE: " + patchName;
				}
			}
			if (info.global.varTraceBool)
				if (expr != null) {
					expr = macro {
						trace("start var: " + ${makeExpr(name)});
						final value = $expr;
						trace("end var: " + ${makeExpr(name)});
						value;
					}
				}
			final nameType = typeof(value.names[i], info, false);
			// expr = typer.exprs.Expr.defaultValue(nameType, info);
			// expr = macro (() -> $expr)();
			values.push({
				name: name,
				pos: null,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i].name),
				doc: info.global.noCommentsBool ? "" : doc,
				kind: TDField(FVar(type, expr), access)
			});
		}
	}
	return values;
}
