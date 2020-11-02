package go;
class Fmt {
	public static inline function println(v:Dynamic, ?v1:Any, ?v2:Any, ?v3:Any, ?v4:Any) {
		function value(v:Any):String
		{
			return (v != null ? ' $v' : "");
		}
		#if js 
		js.Browser.console.log(v);
		#elseif sys
		Sys.println(v + value(v1) + value(v2) + value(v3) + value(v4));
		#end
	}
	//TODO: Turn this into macro function using Sys.println or Browser.console
}