package stdgo.internal;

import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.macro.Expr;

using Lambda;

class Macro {
	public static macro function initLocals() {
		// Grab the variables accessible in the context the macro was called.
		var locals = Context.getLocalVars();
		var fields = Context.getLocalClass().get().fields.get();
		var exprs:Array<Expr> = [];
		for (local in locals.keys()) {
			if (fields.exists(function(field) return field.name == local)) {
				exprs.push(macro this.$local = $i{local});
			} else {
				throw new Error(Context.getLocalClass() + " has no field " + local, Context.currentPos());
			}
		}
		// Generates a block expression from the given expression array
		return macro $b{exprs};
	}

	public static function struct() {
		var fields = Context.getBuildFields();
		var cl = Context.getLocalClass().get();
		if (!cl.meta.has(":extend"))
			return fields;
		var extend = cl.meta.extract(":extend");
		for (param in extend[0].params) {
			var t = Context.follow(Context.typeof(param));
			switch t {
				case TAnonymous(f):
					var f = f.get();
					switch f.status {
						case AClassStatics(t):
							var t = t.get();
							var fs = t.fields.get();
							for (f in fs) {
								var t:ComplexType = Context.toComplexType(f.type);
								var kind:FieldType = null;
								switch f.kind {
									case FVar(read, write): //var
										//kind = FVar(t,Context.getTypedExpr(f.expr()));
										kind = FVar(t,null);
									case FMethod(k): //function
										
								}
								fields.push({
									name: f.name,
									doc: f.doc,
									pos: f.pos,
									meta: f.meta.get(),
									kind: kind,
									access: f.isPublic ? [APublic] : [],
								});
							}
						default:
					}
				default:
			}
		}
		return fields;
	}

	public static macro function intEnum():Array<Field> {
		switch (Context.getLocalClass().get().kind) {
			case KAbstractImpl(_.get() => {type: TAbstract(_.get() => {name: "Int"}, _)}):
			default:
				Context.error("This macro should only be applied to abstracts with base type Int", Context.currentPos());
		}
		var fields:Array<Field> = Context.getBuildFields();
		var nextIndex:Int = 0;
		for (field in fields) {
			switch (field.kind) {
				case FVar(t, {expr: EConst(CInt(i))}):
					{ // `var some = 1;`
						nextIndex = Std.parseInt(i) + 1;
					};
				case FVar(t, null):
					{ // `var some;`
						var expr = EConst(CInt(Std.string(nextIndex++)));
						field.kind = FVar(t, {expr: expr, pos: field.pos});
					};
				default:
			}
		}
		return fields;
	}

	static function isHaxeStd(path:String):Bool {
		return [
			"cpp", "cs", "eval", "flash", "haxe", "hl", "java", "js", "jvm", "lua", "neko", "php", "python", "sys", "Any", "Array", "Class", "Date",
			"DateTools", "EReg", "Enum", "EnumValue", "IntIterator", "Lambda", "List", "Map", "Math", "Reflect", "Std", "StdTypes", "String", "StringBuf",
			"StringTools", "Sys", "Type", "UInt", "UnicodeString", "Xml", "_UInt", "_EnumValue", "_Any", "polygonal",

		].indexOf(path) > -1;
	}
}
