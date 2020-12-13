import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

class Builtin { // https://golang.org/pkg/builtin/
	public static macro function append(cond:Expr, args:Array<Expr>) {
		return macro {
			var src = $a{args};
			haxe.ds.Vector.fromArrayCopy($cond.toArray().concat(src));
		}
	}

	public function cap(v) {
		return macro null;
	}

	public static macro function close(expr) {
		return macro null;
	}

	public static macro function complex(r, i) {
		return macro null;
	}

	public static macro function copy(dst, src) {
		return macro null;
	}

	public static macro function delete(map:Expr, key:Expr) {
		return macro null;
	}

	public static macro function imag(c) {
		return macro null;
	}

	public static macro function len(expr) {
        var ty = Context.typeof(expr);
        var name = "";
		switch (ty) {
			case TInst(t, params):
				name = t.get().name;
            case TAbstract(t, params):
                name = t.get().name;
			default:
        }
        switch name {
            case "Array", "haxe.ds.Vector", "Vector":
                return macro $expr.length;
            case "Iterable", "Map":
                return macro Lambda.count($expr);
        }
		return macro $expr;
	}

	public static macro function create(t) { // new
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
