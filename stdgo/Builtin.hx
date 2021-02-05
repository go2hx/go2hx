package stdgo;

import haxe.macro.TypeTools;
import haxe.macro.ComplexTypeTools;
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

inline function copy<T>(dst:Slice<T>, src:Slice<T>) {
	final length = dst.length > src.length ? src.length : dst.length;
	for (i in 0...length) {
		dst[i] = src[i]; //TODO: copy contents so that are no longer linked
	}
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

macro function create(t:Expr) { // new pointer
	var type = follow(ComplexTypeTools.toType, Context.getExpectedType, Context.followWithAbstracts, getType(t));
	if (type == null)
		return macro null;
	return macro null;
}
macro function make(t:Expr,?size:Expr,?cap:Expr) { //for slice/array and map
	var type = follow(ComplexTypeTools.toType, Context.getExpectedType, Context.followWithAbstracts, getType(t));
	if (type == null)
		return macro null;
	return macro null;
}
macro function literal(t:Expr,params:Array<Expr>):Expr { //composite literal
	var type = follow(ComplexTypeTools.toType, Context.getExpectedType, Context.followWithAbstracts, getType(t));
	if (type == null)
		return macro null;
	switch type {
		case TAnonymous(fields):
			return createAnonType(Context.currentPos(),fields,params);
		default:
			trace("create type: " + t.expr);
	}
	return macro null;
}
function createAnonType(pos:Position,fields:Array<Field>,params:Array<Expr>):Expr {
	return {pos: pos, expr: EObjectDecl([for (i in 0...fields.length) {
		var expr:Expr = macro null;
		if (params[i] == null) {
			switch fields[i].kind {
				case FVar(t, e):
					expr = defaultValue(t);
				default: //FFunc is nil by default
			}
		}else{
			expr = params[i];
		}
		{
			field: fields[i].name,
			expr: expr,
		};
	}])};
}
function defaultValue(t:ComplexType):Expr {
	switch t {
		case TPath(p):
			var name = p.sub;
			switch name {
				case "UInt","UInt8","UInt16","UInt32","UInt64","Int","Int8","Int16","Int32","Int64","Float32","Float64","Complex64","Complex128":
					return macro 0;
				case "GoString","String":
					return macro "";
				case "Bool":
					return macro false;
				case "Slice","Vector","Array":
				default:
					trace("default type missing: " + name);
			}
		default:
	}
	return macro null;
}
function follow(toType:(c:ComplexType) -> Null<haxe.macro.Type>, getExpectedType:() -> Null<haxe.macro.Type>, followWithAbstracts:(t:haxe.macro.Type, ?once:Bool) -> haxe.macro.Type, type:ComplexType):ComplexType {
	if (type == null) {
		var expect = getExpectedType();
		if (expect == null)
			return null;
		type = TypeTools.toComplexType(expect);
	}
	if (type == null)
		return null;
	type =  TypeTools.toComplexType(followWithAbstracts(toType(type)));
	return type;
}
private function getType(expr:Expr):ComplexType {
	var type:ComplexType = null;
	if (expr == null)
		return type;
	switch expr.expr {
		case EParenthesis(e):
			return getType(e);
		case ECheckType(e, t):
			type = t;
		default:
	}
	return type;
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
