package stdgo.internal.injector;

import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.TypeTools;
import haxe.macro.TypedExprTools;
#if macro
import haxe.macro.Compiler;

function run() {
	final paths = ["stdgo.time.Time", "stdgo.math.Math"];
	for (path in paths)
		Compiler.addGlobalMetadata(path, "@:build(stdgo.internal.injector.Injector.build())", true, true, false);
}

function build():Array<Field> {
	final cl = Context.getLocalClass();
	final className = cl.get().name;
	final modulePath = Context.getLocalModule();
	final fields = Context.getBuildFields();
	if (!StringTools.endsWith(className, "_Fields_"))
		return fields;
	final index = modulePath.indexOf(".");
	final realPath = modulePath.substring(index + 1);
	final moduleTypes = Context.getModule("stdgo.internal.injector." + realPath);
	for (type in moduleTypes) {
		switch type {
			case TInst(t, _):
				final t = t.get();
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
