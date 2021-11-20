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
	final paths = ["stdgo.time.Time", "stdgo.math.Math",];
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
	final moduleTypes = Context.getModule("stdgo.internal.injector." + modulePath.substring(index + 1));
	for (type in moduleTypes) {
		switch type {
			case TInst(t, _):
				final t = t.get();
				final stats = t.statics.get();
				final fieldEnding = "_Fields_";
				for (stat in stats) {
					for (field in fields) {
						switch field.kind {
							case FFun(f):
								if (field.name != stat.name)
									continue;
								switch stat.expr().expr {
									case TFunction(tfunc):
										var expr = Context.getTypedExpr(tfunc.expr);
										f.expr = expr;
									default:
								}
								break;
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
