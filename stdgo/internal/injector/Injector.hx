package stdgo.internal.injector;

import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.TypeTools;
import haxe.macro.TypedExprTools;

#if macro
function run() {
	final paths = [
		"stdgo.time.Time",
		"stdgo.math.Math",
		"stdgo.syscall.Syscall",
		// "stdgo.syscall.js.Js",
	];
	for (path in paths)
		Compiler.addGlobalMetadata(path, "@:build(stdgo.internal.injector.Injector.build())", true, true, false);
}

function build():Array<Field> {
	final cl = Context.getLocalClass();
	final className = cl.get().name;
	final modulePath = Context.getLocalModule();
	final fields = Context.getBuildFields();

	final index = modulePath.indexOf(".");
	final realPath = modulePath.substring(index + 1);
	final moduleTypes = Context.getModule("stdgo.internal.injector." + realPath);

	if (!StringTools.endsWith(className, "_Fields_")) { // modify class type
		for (type in moduleTypes) {
			switch type {
				case TInst(_.get() => t, _):
					if (t.meta.has(":local"))
						return fields;
					if (t.name == className + "_mod") {
						final stats = t.fields.get();
						for (stat in stats) {
							for (field in fields) {
								final expr = stat.expr();
								switch field.kind {
									case FVar(_, e):
										e.expr = Context.getTypedExpr(expr).expr;
										stat.meta.add(":local", [], Context.currentPos());
									case FFun(f):
										switch expr.expr {
											case TFunction(tfunc):
												var expr = Context.getTypedExpr(tfunc.expr);
												f.expr = expr;
											default:
										}
									default:
										throw "field: " + field.name + " kind not supported: " + field.kind;
								}
							}
						}
					}
				default:
			}
		}
		return fields;
	}

	for (type in moduleTypes) { // injector
		switch type {
			case TInst(_.get() => t, _):
				final stats = t.statics.get();
				final fieldEnding = "_Fields_";
				for (stat in stats) { // injector fields
					var resolved = false;
					if (stat.meta.has(":local")) {
						continue;
					}
					for (field in fields) { // std fields
						if (field.name != stat.name)
							continue;
						switch field.kind {
							case FFun(f):
								final expr = stat.expr();
								if (expr != null) {
									switch expr.expr {
										case TFunction(tfunc):
											var expr = Context.getTypedExpr(tfunc.expr);
											f.expr = expr;
											resolved = true;
											break;
										default:
									}
								}
								break;
							case FVar(_, e):
								final expr = stat.expr();
								if (expr != null) {
									resolved = true;
									switch expr.expr {
										case TVar(v, expr):
											e.expr = Context.getTypedExpr(expr).expr;
											stat.meta.add(":local", [], Context.currentPos());
										default:
											// trace(expr.expr.getName());
									}
									break;
								}
							default:
								throw "field: " + field.name + " kind not supported: " + field.kind;
						}
					}
					if (!resolved) {
						// add new stats field to fields
						switch stat.kind {
							case FVar(_, _):
								final e = stat.expr();
								final expr = Context.getTypedExpr(e);
								final t = TypeTools.toComplexType(e.t);
								final p = new haxe.macro.Printer();
								fields.push({
									name: stat.name,
									pos: stat.pos,
									doc: stat.doc,
									kind: FVar(t, expr),
								});
							// trace("add new field!: " + stat.name + " " + new haxe.macro.Printer().printExpr(expr));
							default:
						}
					}
				}
			default:
				trace(type);
		}
	}
	return fields;
}
#end
