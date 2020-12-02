package std;

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

	public static macro function star(expr) {
		if (isPointer(expr)) {
			return macro ${expr}.value;
		} else {
			return macro $expr;
		}
	}

	public static macro function address(expr) {
		if (isPointer(expr)) {
			return macro ${expr}.address();
		} else {
			return macro std.Pointer.make(() -> $expr, (tmp) -> $expr = tmp);
		}
		return macro null;
	}

	static function isPointer(expr:Expr):Bool {
		var type = Context.typeof(expr);
		var name:String = "";
		switch type {
			case TInst(t, params):
				var t = t.get();
				name = t.pack.join(".") + t.name;
			case TAbstract(t, params):
				var t = t.get();
				name = t.pack.join(".") + t.name;
				if (name == "Null") {
					var param = params[0];
					switch param {
						case TInst(t, params):
							var t = t.get();
							name = t.pack.join(".") + t.name;
						default:
					}
				}
			default:
		}
		return name == "stdPointer";
	}
}