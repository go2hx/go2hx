package stdgo;

import haxe.Rest;
import haxe.macro.Expr;
class Go {
	public static var recover_exception:stdgo.AnyInterface= null;
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

	public static function print(args:Rest<Dynamic>) {
		for (i in 0...args.length) {
			_print(args[i]);
		}
	}

	public static function println(args:Rest<Dynamic>) {
		for (i in 0...args.length) {
			_print(args[i] + (i != args.length - 1 ? " " : ""));
		}
		_print("\n");
	}

	static function _print(arg:Dynamic) {
		#if (sys || hxnodejs)
		Sys.print(arg);
		#elseif js
		js.Syntax.code("console.log({0});", arg);
		#end
	}

	public static macro function map(exprs:Array<Expr>):Expr;

	public static macro function copySlice<T>(dst:Expr, src:Expr):Expr;

	public static macro function unquote(qvalue:Expr):Expr;

	public static macro function typeFunction(e:Expr):Expr;

	public static macro function expectedValue(value):Expr;

	public static macro function defaultValue(e:Expr):Expr;

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

	public static macro function refPointer(expr:Expr):Expr;
}