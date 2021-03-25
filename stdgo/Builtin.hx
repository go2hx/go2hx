package stdgo;

import haxe.macro.ExprTools;
import haxe.macro.PositionTools;
import haxe.macro.TypeTools;
import haxe.macro.ComplexTypeTools;
import haxe.Rest;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.Context;
import stdgo.Slice;
import stdgo.StdGoTypes.Error;

// https://golang.org/pkg/builtin/
inline function append<T>(slice:Slice<T>, args:Rest<T>):Slice<T> {
	if (args.length == 0)
		return slice;
	return slice.append(args);
}

inline function close(v) {}
inline function complex(r, i) {
	return 0; //TODO: implement complex function
}

macro function copy<T>(dst:Expr, src:ExprOf<Slice<T>>) {
	var type = Context.toComplexType(Context.follow(Context.typeof(dst)));
	switch type {
		case TPath(p):
			switch p.name {
				case "Slice":
					return macro {
						var src = $src;
						var dst = $dst;
						var length = dst.length >= src.length ? src.length : dst.length; // min length
						for (i in 0...length) {
							dst[i] = src[i];
						}
						length;
					}
				default:
					trace("unknown copy type path: " + p.name);
			}
		default:
			trace("unknown copy type: " + type);
	}
	return src;
}

inline function delete<K, V>(map:GoMap<K, V>, key:K) {
	map.remove(key);
}

function imag(c) {}

macro function make(t:Expr, ?size:Expr, ?cap:Expr) { // for slice/array and map
	//convert from int64 to int
	if (size == null || size.expr.match(EConst(CIdent("null"))))
		size = macro 0;
	if (cap == null || cap.expr.match(EConst(CIdent("null"))))
		cap = macro 0;
	size = macro ($size : Int);
	cap = macro ($cap : Int);

	var t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(getType(t))));
	if (t == null)
		throw t;
	var func = null;
	func = function():Expr {
		switch t {
			case TPath(p):
				var name = p.name;
				switch name {
					case "Slice":
						if (size == null)
							return macro new $p();
						var value:Expr = null;
						switch p.params[0] {
							case TPType(t):
								t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
								value = defaultValue(t, Context.currentPos());
							default:
						}
						return macro {
							var slice = new $p();
							var size = $size;
							var value = $value;
							slice.grow($size);
							for (i in 0...size) {
								slice[i] = value;
							}
							slice;
						};
					case "GoArray":
						throw("cannot make GoArray must be type generated");
					case "GoMap":
						return macro new $p();
					case "Chan":
						return macro new $p($size);
					default:
						trace("make unknown: " + p);
						return null;
				}
			default:
				trace("make unknown: " + t);
				return null;
		}
	}
	return func();
}

function defaultValue(t:ComplexType, pos:Position):Expr {
	switch t {
		case TFunction(args, ret):
			return macro null;
		case TPath(p):
			var name = p.name;
			if (p.name == "StdGoTypes")
				name = p.sub;
			switch name {
				case "Void":
					return null;
				case "GoArray":
					return macro new $p();
				case "GoByte", "GoRune", "GoInt", "GoUInt", "GoUInt8", "GoUInt16", "GoUInt32", "GoUInt64", "GoInt8", "GoInt16", "GoInt32", "GoInt64",
					"GoFloat32", "GoFloat64", "GoComplex64", "GoComplex128":
					return macro (0 : $t);
				case "GoDynamic", "Any", "Dynamic", "AnyInterface":
					return macro null;
				case "Bool":
					return macro false;
				case "Pointer", "PointerWrapper", "GoArrayPointer":
					return macro null;
				default:
					return macro new $p();
			}
		case TAnonymous(fields):
			return {
				pos: pos,
				expr: EObjectDecl([
					for (field in fields) {
						var type:ComplexType = null;
						switch field.kind {
							case FVar(t, e):
								type = t;
							default:
						}
						{
							field: field.name,
							expr: defaultValue(type, pos),
						};
					}
				])
			};
		default:
			trace("unknown type for default value: " + t);
	}
	return macro null;
}

function getMetaLength(meta:Metadata):ExprDef {
	for (m in meta) {
		if (m.name != ":length")
			continue;
		return m.params[0].expr;
	}
	return EConst(CIdent("0"));
}

private function getData(expr:Expr):Expr {
	return switch expr.expr {
		case ECheckType(e, t): return e;
		case EParenthesis(e): return getData(e);
		default: expr;
	}
}

private function getType(expr:Expr):ComplexType {
	var type:ComplexType = null;
	if (expr == null)
		return type;
	switch expr.expr {
		case ECheckType(e, t):
			type = t;
		case EParenthesis(e):
			type = getType(e);
		default:
	}
	return type;
}

inline function panic(v) {
	return throw v;
}

inline function print(args:Rest<Dynamic>) {
	return stdgo.fmt.Fmt.print(...args);
}

inline function println(args:Rest<Dynamic>) {
	return stdgo.fmt.Fmt.println(...args);
}

inline function real(c) {}
inline function recover():Error {
	return null;
}
