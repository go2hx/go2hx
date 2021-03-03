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

// https://golang.org/pkg/builtin/
inline function append<T>(slice:Slice<T>, args:Rest<T>):Slice<T> {
	if (args.length == 0)
		return slice;
	return slice.append(args);
}

inline function close(v) {}

inline function complex(r, i) {}

macro function copy<T>(dst:Expr,src:ExprOf<Slice<T>>) {
	var type = Context.toComplexType(Context.follow(Context.typeof(dst)));
	switch type {
		case TPath(p):
			switch p.name {
				case "Slice":
					return macro {
						var length = $dst.length > $src.length ? $src.length : $dst.length; //min length
						for (i in 0...length) {
							$dst[i] = $src[i];
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

macro function make(t:Expr,?size:Expr,?cap:Expr) { //for slice/array and map
	var t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(getType(t))));
	if (t == null)
		return macro null;
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
								value = defaultValue(t,Context.currentPos());
							default:
						}
						return macro {
							var slice = new $p();
							slice.grow($size);
							for (i in 0...$size) {
								slice[i] = $value;
							}
							slice;
						};
					case "GoArray":
						if (size == null)
							return macro new $p();
						var value:Expr = null;
						var meta:Metadata = [];

						switch size.expr {
							case EArrayDecl(values):
								meta = [
									for(value in values) {
										name: ":length",
										params: [value],
										pos: null,
									}
								];
							default:
						}
						switch p.params[0] {
							case TPType(tt):
								tt = Context.toComplexType(Context.follow(ComplexTypeTools.toType(tt)));
								value = defaultValue(tt,Context.currentPos(),meta);
							default:
						}
						var length:Expr = null;
						switch size.expr {
							case EArrayDecl(values):
								length = values[0];
							default:
						}
						return macro {
							var array = new $p();
							array.setSize($length);
							for (i in 0...array.length)
								array[i] = $value;
							array;
						};
					case "GoMap":
						return macro new $p();
					case "Chan":
						if (size == null || size.expr.match(EConst(CIdent("null"))))
							size = macro 0;
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
function defaultValue(t:ComplexType,pos:Position,meta:Null<Metadata>=null):Expr {
	switch t {
		case TFunction(args, ret):
			return macro null;
		case TPath(p):
			var name = p.name;
			if (p.name == "StdTypes")
				name = p.sub;
			switch name {
				case "GoArray":
					var exprs:Array<Expr> = [];
					if (meta == null) {
						throw("error Array metadata missing for length");
					}
					for (m in meta) {
						exprs.push(m.params[0]);
					}
					var a = macro $a{exprs};
					return macro make((_:$t),$a);
				case "Int","UInt","UInt8","UInt16","UInt32","UInt64","Int8","Int16","Int32","Int64","Float32","Float64","Complex64","Complex128":
					return macro 0;
				case "GoDynamic","Any","Dynamic":
					return macro null;
				case "Bool":
					return macro false;
				case "Pointer", "PointerWrapper","GoArrayPointer":
					return macro null;
				default:
					return macro new $p();
			}
		case TAnonymous(fields):
			return {pos: pos,expr: EObjectDecl([
				for (field in fields) {
					var type:ComplexType = null;
					switch field.kind {
						case FVar(t, e):
							type = t;
						default:
					}
					{
						field: field.name,
						expr: defaultValue(type,pos,field.meta),
					};
				}
			])};
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

inline function recover() {}
