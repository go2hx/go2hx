import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

// https://golang.org/pkg/builtin/
macro function append(cond:Expr, args:Array<Expr>) {
	return macro {
		var src = $a{args};
		haxe.ds.Vector.fromArrayCopy($cond.toArray().concat(src));
	}
}

function cap(v) {
	return macro null;
}

macro function close(expr) {
	return macro null;
}

macro function complex(r, i) {
	return macro null;
}

inline function copy(dst, src) {
	//dst = Go.copy(src);
}

macro function delete(map:Expr, key:Expr) {
	return macro null;
}

macro function imag(c) {
	return macro null;
}

macro function len(expr) {
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

macro function create(t) { // new
	return macro null;
}

macro function panic(expr) {
	return macro throw $expr;
}

macro function print(args:Array<Expr>) {
	return macro null;
}

macro function println(args:Array<Expr>) {
	return macro null;
}

macro function real(c) {
	return macro null;
}

macro function recover() {
	return macro null;
}
