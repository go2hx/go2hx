package go;

class Fmt {
	public static inline function println(v:Dynamic, ?v1:Any, ?v2:Any, ?v3:Any, ?v4:Any) {
		var str = _print(v, v1, v2, v3, v4);
		#if js
		js.Browser.console.log(str);
		#elseif sys
		Sys.println(str);
		#end
	}

	public static inline function print(v:Dynamic, ?v1:Any, ?v2:Any, ?v3:Any, ?v4:Any) {
		var str = _print(v, v1, v2, v3, v4);
		#if js
		js.Browser.console.log(str);
		#elseif sys
		Sys.print(str);
		#end
	}

	public static inline function printf(v:Dynamic, ?v1:Any, ?v2:Any, ?v3:Any, ?v4:Any) {
		var str = _print(v, v1, v2, v3, v4);
		#if js
		js.Browser.console.log(str);
		#elseif sys
		Sys.print(str);
		#end
	}

	private static inline function _print(v:Dynamic, ?v1:Any, ?v2:Any, ?v3:Any, ?v4:Any):String {
		function value(v:Any):String {
			return (v != null ? ' $v' : "");
		}
		return v + value(v1) + value(v2) + value(v3) + value(v4);
	}

	// TODO: Turn this into macro function using Sys.println or Browser.console
}
