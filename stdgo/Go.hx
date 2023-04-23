package stdgo;

import haxe.macro.Expr;

class Go {
	public static var recover_exception:stdgo.StdGoTypes.AnyInterface = null;

	public static function string(s:Dynamic):String {
		if ((s is stdgo.StdGoTypes.AnyInterfaceData)) {
			s = s.value;
		}
		if (!(s is String) && Reflect.isObject(s) && s.error != null)
			s = s.error();
		if ((s is haxe.io.Bytes)) // GoString is haxe.io.Bytes
			s = ((s : GoString) : String);
		return if (haxe.Int64.isInt64(s)) {
			haxe.Int64.toStr(s);
		} else {
			'$s';
		}
	}

	// GOROUTINE
	public static function routine(func:Void->Void) {
		#if js
		js.Syntax.code("var __a__ = async function() {
			{0}();
		}; __a__();", func);
		#elseif (target.threaded)
		sys.thread.Thread.createWithEventLoop(() -> {
			func();
		});
		#end
	}

	public static macro function map(exprs:Array<Expr>):Expr;

	public static macro function copySlice<T>(dst:Expr, src:Expr):Expr;

	public static macro function unquote(qvalue:Expr):Expr;

	public static macro function typeFunction(e:Expr):Expr;

	public static macro function expectedValue(value):Expr;

	public static macro function typeAssert(expr:Expr):Expr;

	public static macro function typeEquals(expr:Expr):Expr;

	public static macro function pointer(expr:Expr, hasSet:Bool = false):Expr;

	public static macro function asInterface(expr:Expr):Expr;

	public static macro function toInterface(expr:Expr):Expr;

	public static macro function str(expr:Expr):Expr;

	public static macro function cfor(cond, post, expr):Expr;

	public static macro function setKeys(expr:Expr):Expr;

	public static macro function select(expr:Expr):Expr;

	public static macro function multireturn(expr:Expr):Expr;

	public static macro function setRef(expr:Expr):Expr;
}
