package stdgo._internal.internal;

import haxe.macro.PositionTools;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.Context;

using Lambda;

class Macro {
	public static function init() {
		var run = false;
		Context.onAfterTyping(_ -> {
			if (run)
				return;
			run = true;
			final exprs:Array<Expr> = [];
			for (name => e in @:privateAccess Go.nameTypes) {
				exprs.push(macro $v{name} => $e);
			}
			//trace("non hxb types:", exprs.length);
			final className = "TypeInfoData_go2hx_";
			final cl = macro class T {
				public var names:stdgo.TypeInfo.TypeInternalMap = $a{exprs};
				public function new() {}
			};
			cl.meta.push({name: ":keep", pos: haxe.macro.Context.currentPos()});
			cl.name = className;
			Context.defineType(cl);
		});
	}
}
