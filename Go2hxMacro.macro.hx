import haxe.macro.Compiler;
import haxe.macro.PositionTools;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.Context;

using Lambda;

class Go2hxMacro {
	// this stays in macro only context
	// @:persistent
	public static final nameTypes:Map<String, Expr> = [];

	public static function getTypeInfoData(path:String):Expr {
		if (!nameTypes.exists(path))
			throw "path not found in nameTypes: " + path;
		return macro stdgo.TypeInfo.n[$v{path}];
	}

	public static function setTypeInfoData(path:String, e:Expr):Expr {
		nameTypes[path] = e;
		return getTypeInfoData(path);
	}
	public static function init() {
		var run = false;
		Context.onAfterTyping(_ -> {
			if (run)
				return;
			run = true;
			final exprs:Array<Expr> = [];
			for (name => e in @:privateAccess Go2hxMacro.nameTypes) {
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
