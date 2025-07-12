package stdgo;

#if target.threaded
import sys.thread.Thread;
#end
import haxe.Rest;
import haxe.macro.Expr;

/**
 * Almost all macro functions to provide ease of use, using go2hx code in a Haxe manner.
 */
class Go {
	/**
	 * Where the recover_exception is stored in case `recover` is called.
	 */
	public static var recover_exception:stdgo.AnyInterface = null;

	public static var globalMutex = #if target.threaded new sys.thread.Mutex(); #else {acquire: () -> {}, release: () -> {}}; #end
	// GOROUTINE
	public static var goroutines = 0; // goroutine watching, to make sure they all complete i.e. no leaks

	static final GOMAXPROCS = 1024; // really this is the max threads in operation

	#if (target.threaded)
	public static var grMutex = new sys.thread.Mutex();
	#end

	public static function routine(func:Void->Void) {
		if (goroutines >= GOMAXPROCS)
			throw "too many active goroutines";
		#if js
		/*js.Syntax.code("var __a__ = async function() {
			{0}();
		}; __a__();", func);*/
		#elseif (target.threaded)
		Thread.createWithEventLoop(() -> {
			/*try {
					func();
				}catch(e) {
					throw e;
			}*/
			grMutex.acquire();
			goroutines++;
			grMutex.release();
			func();
			grMutex.acquire();
			goroutines--;
			grMutex.release();
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
	public static macro function copySlice<T>(dst:Expr, src:Expr):Expr;

	@:dox(hide)
	@:deprecated
	public static macro function unquote(qvalue:Expr):Expr;

	@:dox(hide)
	@:deprecated
	public static macro function typeFunction(e:Expr):Expr;

	/**
	 * Assert that a type is the checkType complexType, if not throw.
	 * @param expr must follow the format ($expr: $ct)
	 * @return Expr
	 */
	public static function typeAssert(e:AnyInterface, toType):Any {
		var t = new stdgo._internal.internal.reflect.Reflect._Type(toType);
		// trace(e.type._common());
		// trace(t._common());
		// trace(toType);
		// trace(e.type._common());
		final b = e.type.assignableTo(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t));
		if (!b) {
			// trace(e.type.string().toString());
			// trace(t.string().toString());
			throw "unable to assert";
		}
		// interface kind check
		// interface
		return if (t.kind() == 20) {
			var isPointer = false;
			var asInterface = false;
			final typ = std.Type.typeof(e.value);
			switch typ {
				case TClass(cl):
					final className = std.Type.getClassName(cl);
					if (StringTools.endsWith(className, "_asInterface")) {
						asInterface = true;
					} else if (className == "stdgo.PointerData") {
						isPointer = true;
					}
				default:
					var _ = false;
			}
			if (asInterface) {
				e.value;
			} else {
				var gt = e.type._common();
				if (isPointer) {
					gt = stdgo._internal.internal.reflect.Reflect.getElem(gt);
				}
				stdgo._internal.internal.reflect.Reflect.asInterfaceValue(e.value, gt);
			}
		} else {
			// exclude basic types from using __underlying__ field access
			if (t.kind() >= 0 && t.kind() <= 17 || t.kind() == 19) {
				e.value;
			} else if ((e.value : Dynamic).__underlying__ == null) {
				e.value;
			} else {
				var value:Dynamic = (e.value : Dynamic).__underlying__().value;
				if (!(value is stdgo.Pointer.PointerData) && t.kind() == 22) {
					switch toType {
						case refType(_):
							value;
						default:
							stdgo.Go.pointer(value);
					}
				} else {
					value;
				}
			}
		}
	}

	/**
	 * Check if type is equal to the checkType complexType.
	 * @param expr must follow the format ($expr: $ct)
	 * @return Expr Bool
	 */
	public static function typeEquals(e:AnyInterface, t2):Bool {
		final __i__ = e;
		return if (__i__ == null) {
			// null AnyInterface
			false;
		} else {
			final t = __i__.type;
			// used for pointer can not be final
			var t2 = new stdgo._internal.internal.reflect.Reflect._Type(t2);
			try {
				final b = t.assignableTo(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t2), t2));
				if (b) {
					if (t2.kind() != stdgo._internal.internal.reflect.Reflect.KindType.pointer
						&& t.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer
						&& !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(t)) {
						if ((untyped (e : Dynamic).value is stdgo.Pointer.PointerData)) {
							final gt = stdgo._internal.internal.reflect.Reflect.getElem(t._common());
							untyped e.value = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((e.value : stdgo.Pointer<Dynamic>).value,
								gt);
						}
					}
				}
				b;
			} catch (_) {
				false;
			}
		}
	}

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
