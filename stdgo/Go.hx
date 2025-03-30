package stdgo;

import haxe.Rest;
import haxe.macro.Expr;
/**
 * Almost all macro functions to provide ease of use, using go2hx code in a Haxe manner.
 */
class Go {
	/**
	 * Where the recover_exception is stored in case `recover` is called.
	 */
	public static var recover_exception:stdgo.AnyInterface= null;
	public static var globalMutex = #if target.threaded new sys.thread.Mutex(); #else {acquire: () -> {}, release: () -> {}}; #end
	// GOROUTINE
	public static function routine(func:Void->Void) {
		#if js
		/*js.Syntax.code("var __a__ = async function() {
			{0}();
		}; __a__();", func);*/
		#elseif (target.threaded)
		sys.thread.Thread.createWithEventLoop(() -> {
			/*try {
				func();
			}catch(e) {
				throw e;
			}*/
			func();
		});
		#end
	}
	public static function fromAsInterfaceToValue(value:Dynamic):Dynamic {
		if (value == null)
			return null;
		switch std.Type.typeof(value) {
			case TClass(c):
				final cl = std.Type.getClassName(c);
				if (StringTools.endsWith(cl, "_asInterface")) {
					return value.__underlying__().value;
				}
			default:
		}
		return value;
	}
	/**
	 * Simulate builtin print
	 * @param args 
	 */
	public static function print(args:Rest<Dynamic>) {
		for (i in 0...args.length) {
			_print(args[i]);
		}
	}
	/**
	 * Simulate builtin println
	 * @param args 
	 */
	public static function println(args:Rest<Dynamic>) {
		var s = "";
		for (i in 0...args.length) {
			s += args[i] + (i != args.length - 1 ? " " : "");
		}
		#if (hxnodejs || sys)
		_print('$s\n');
		#else
		_print(s);
		#end
	}
	@:dox(hide)
	static function _print(arg:Dynamic) {
		#if (sys || hxnodejs)
		Sys.print(arg);
		#elseif js
		js.Syntax.code("console.log({0});", arg);
		#end
	}
	@:dox(hide)
	@:deprecated
	public static macro function map(exprs:Array<Expr>):Expr;
	@:dox(hide)
	@:deprecated
	public static macro function copySlice<T>(dst:Expr, src:Expr):Expr;
	@:dox(hide)
	@:deprecated
	public static macro function unquote(qvalue:Expr):Expr;
	@:dox(hide)
	@:deprecated
	public static macro function typeFunction(e:Expr):Expr;
	/**
	 * Used in rare cases where Go compiler does not give type information for a type or is not possible and the job is handed off to the Haxe compiler.
	 * @param value 
	 * @return Expr
	 */
	public static macro function expectedValue(value):Expr;
	/**
	 * Create a default Go value for an `Expr`.
	 * @param e 
	 * @return Expr
	 */
	public static macro function defaultValue(e:Expr):Expr;
	/**
	 * Assert that a type is the checkType complexType, if not throw.
	 * @param expr must follow the format ($expr: $ct)
	 * @return Expr
	 */
	public static macro function typeAssert(expr:Expr):Expr;
	/**
	 * Check if type is equal to the checkType complexType.
	 * @param expr must follow the format ($expr: $ct)
	 * @return Expr Bool
	 */
	public static macro function typeEquals(expr:Expr):Expr;
	/**
	 * Create a simulated Go pointer in Haxe
	 * @param expr 
	 * @param hasSet 
	 * @return Expr
	 */
	public static macro function pointer(expr:Expr, hasSet:Bool = false):Expr;
	/**
	 * Create a simulated Go interface in Haxe, check if type with suffix _asInterface exists, and if so generate the type on the fly.
	 * @param expr 
	 * @return Expr
	 */
	public static macro function asInterface(expr:Expr):Expr;
	/**
	 * Create a simulated any/interface{} type
	 * @param expr 
	 * @return Expr stdgo.AnyInterface
	 */
	public static macro function toInterface(expr:Expr):Expr;
	/**
	 * Create a string
	 * @param expr 
	 * @return Expr
	 */
	@:dox(hide)
	public static macro function str(expr:Expr):Expr;
	@:deprecated
	@:dox(hide)
	public static macro function cfor(cond, post, expr):Expr;
	@:deprecated
	@:dox(hide)
	public static macro function setKeys(expr:Expr):Expr;
	@:deprecated
	@:dox(hide)
	public static macro function select(expr:Expr):Expr;
	@:deprecated
	@:dox(hide)
	public static macro function multireturn(expr:Expr):Expr;
	/**
	 * Create a Ref (simulated Go pointer but for a Haxe type that is pass by ref) regardless if the type is null or not.
	 * @param expr 
	 * @return Expr
	 */
	public static macro function setRef(expr:Expr):Expr;
	@:deprecated
	@:dox(hide)
	public static macro function refPointer(expr:Expr):Expr;

	public static macro function min(expr:Array<Expr>):Expr;
	public static macro function max(expr:Array<Expr>):Expr;
}