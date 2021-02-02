package stdgo;

import haxe.Rest;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.Context;
import stdgo.Slice;

// https://golang.org/pkg/builtin/
inline function append<T>(slice:Slice<T>, args:Rest<Dynamic>):Slice<T> {
	if (args.length == 0)
		return slice;
	var pos = slice.length;
	slice.resize(args.length);
	var args = args.toArray();
	for (i in 0...args.length) {
		slice[i + pos] = args[i];
	}
	return slice;
}

inline function cap<T>(slice:Slice<T>) {
	return slice.cap;
}

inline function close(v) {}

inline function complex(r, i) {}

inline function copy(dst, src) {
	dst = Go.copy(src);
}

inline function delete<K, V>(map:Map<K, V>, key:K) {
	map.remove(key);
}

function imag(c) {}

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
		case "Slice","Array", "haxe.ds.Vector", "Vector", "String", "GoString":
			return macro $expr.length;
		case "Iterable", "Map":
			return macro Lambda.count($expr);
	}
	return macro $expr;
}

macro function create(t) { // new
	return macro null;
}

inline function panic(v) {
	return throw v;
}

inline function print(args:Rest<Dynamic>) {
	return Fmt.print(...args);
}

inline function println(args:Rest<Dynamic>) {
	return Fmt.println(...args);
}

inline function real(c) {}

inline function recover() {}
