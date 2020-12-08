package std;
import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;


class Builtin { //https://golang.org/pkg/builtin/
	public static macro function append(cond, expr) {
		return macro {
			$cond.push($expr);
		};
    }
    public function cap(v) {
        return macro null;
    }
    public static macro function close(expr) {
        return macro null;
    }
    public static macro function complex(r,i) {
        return macro null;
    }
    public static macro function copy(dst,src) {
        return macro null;
    }
    public static macro function delete(map:Expr,key:Expr) {
        return macro null;
    }
    public static macro function imag(c) {
        return macro null;
    }
    public static macro function len(expr) {
		var ty = Context.typeof(expr);
		switch (ty) {
			case TInst(t, params):
				switch (t.get().name) {
					case "Array", "Vector":
						return macro $expr.length;
					case "Iterable", "Map":
						return macro Lambda.count($expr);
					default:
				}
			default:
		}
		return macro $expr;
    }
    public static macro function make(type:Expr,length:ExprOf<Int>) {
		return macro null;
	}
    public static macro function create(t) { //new
        return macro null;
    }
    public static macro function panic(expr) {
        return macro throw $expr;
    }
    public static macro function print(args:Array<Expr>) {
        return macro null;
    }
    public static macro function println(args:Array<Expr>) {
        return macro null;
    }
    public static macro function real(c) {
        return macro null;
    }
    public static macro function recover() {
        return macro null;
    }
}