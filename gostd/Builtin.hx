package gostd;

import haxe.Rest;
import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

// https://golang.org/pkg/builtin/
inline function append<T>(array:Array<T>, args:Rest<Dynamic>) {
	array = array.concat(cast args.toArray());
	return array;
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
	dst = Go.copy(src);
}

inline function delete<K, V>(map:Map<K, V>, key:K) {
	map.remove(key);
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
		case TType(t, params):
			name = t.get().name;
		default:
			trace("ty: " + ty);
	}
	switch name {
		case "Array", "haxe.ds.Vector", "Vector", "String", "GoString":
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
