package stdgo;

import stdgo.reflect.Reflect.Type;
import haxe.macro.PositionTools;
import haxe.macro.ComplexTypeTools;
import haxe.macro.TypeTools;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

class Go {
	public static var addressIndex:Int = 1;

	public static var addresses = new Map<Int,{value:String,type:Type}>();

	static function getMetaLength(meta:Metadata):ExprDef {
		for (m in meta) {
			if (m.name != ":length")
				continue;
			return m.params[0].expr;
		}
		return EConst(CIdent("0"));
	}

	static private function getData(expr:Expr):Expr {
		return switch expr.expr {
			case ECheckType(e, t): return e;
			case EParenthesis(e): return getData(e);
			default: expr;
		}
	}

	static private function getType(expr:Expr):ComplexType {
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

	public static macro function copy<T>(dst:Expr, src:Expr) {
		var type = Context.toComplexType(Context.followWithAbstracts(Context.typeof(dst)));
		var srcType = Context.toComplexType(Context.followWithAbstracts(Context.typeof(src)));
		var isString = switch srcType {
			case TPath(p):
				p.name == "String" && p.pack.length == 0;	
			default:
				false;
		}
		if (isString)
			src = macro ($src : GoString);
		switch type {
			case TPath(p):
				switch p.name {
					case "SliceData":
						return macro {
							var src = $src;
							var dst = $dst;
							var length = dst.length >= src.length ? src.length : dst.length; // min length
							for (i in 0...length.toBasic()) {
								dst[i] = src[i];
							}
							length;
						}
					default:
						throw("unknown copy type path: " + p.name + " type: " + type);
				}
			default:
				trace("unknown copy type: " + type);
		}
		return src;
	}

	public static macro function fromInterface(expr) {
		function parens(expr) {
			return switch expr.expr {
				case EParenthesis(e): parens(e);
				default: expr;
			}
		}
		expr = parens(expr);
		switch expr.expr {
			case ECheckType(e, ct):
				var t = Context.follow(ComplexTypeTools.toType(ct));
				var isInterface = false;
				switch t {
					case TInst(t, params):
						isInterface = t.get().isInterface;
					default:
				}
				if (isInterface) {
					return macro $e.valueInterface != null ? ($e.valueInterface : $ct) : ($e.value : $ct);
				}
				return macro ($e.value : $ct);
			default:
				throw "not a checkType";
		}
	}
	// GOROUTINE
	public static macro function routine(expr) {
		return expr;
	}

	public static macro function toInterface(expr) {
		var t = Context.follow(Context.typeof(expr));
		switch t {
			case TAbstract(t, params):
				var t = t.get();
				if (t.name == "AnyInterface" && t.pack.length == 1 && t.pack[0] == "stdgo") {
					return expr; //prevent interface{} inside interface{}
				}
			default:
		}
		var ty = gtDecode(t);
		var exprInterface = macro null;
		switch t {
			case TAbstract(t, params):
				var t = t.get();
				if (t.impl != null) {
					var fields = t.impl.get().statics.get();
					for (field in fields) {
						if (field.name == "__toInterface__") {
							exprInterface = macro $expr.__toInterface__();
						}
					}
				}
			default:
		}
		return macro new AnyInterface($expr,$exprInterface,new stdgo.reflect.Reflect.Type($ty));
	}
	
	public static macro function smartcast(expr:Expr) {
		function panicWrap(e:Expr) {
			return macro {var e = $e; e == null ? throw "panic: conversion" : e;};
		}
		switch expr.expr {
			case ECast(e, ct):
				var et = Context.typeof(e);
				switch et {
					case TInst(cl, params):
						var cl = cl.get();
						if (cl.isInterface) {
							var t = ComplexTypeTools.toType(ct);
							switch t {
								case TAbstract(_, _):
									return panicWrap(macro ($e.__underlying__() : $ct));
								default:
							}
						}
					default:
				}
			default:
		}
		return panicWrap(expr);
	}

	public static macro function assignable(expr:Expr) {
		function parens(expr) {
			return switch expr.expr {
				case EParenthesis(e): parens(e);
				default: expr;
			}
		}
		expr = parens(expr);
		switch expr.expr {
			case ECheckType(e, t):
				var t = Context.follow(ComplexTypeTools.toType(t));
				if (t == null)
					throw "complexType converted to type is null";
				var et = Context.follow(Context.typeof(e));
				var value = gtDecode(t);
				switch et {
					case TInst(cl, params):
						var cl = cl.get();
						if (cl.isInterface)
							e = macro $e.__underlying__();
					default:
				}
				return macro $e.type.assignableTo(new stdgo.reflect.Reflect.Type($value));
			default:
				throw "unknown assignable expr: " + expr.expr;
		}
	}

	static function escapeParens(expr:Expr):Expr {
		return switch expr.expr {
			case EParenthesis(e):
				escapeParens(e);
			default:
				expr;
		}
	}
	public static macro function unsafePointer(expr:Expr) {
		//uintptr -> Pointer
		//pointer -> Pointer
		
		return macro null;
	}
	public static macro function pointer(expr:Expr) {
		expr = escapeParens(expr);
		var declare:Bool = false;
		switch expr.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						switch s {
							case "null":
								return macro null;
							case "this","false", "true":
								declare = true;
						}
					default:
						declare = true;
				}
			case EArray(e1, e2):
				var t = Context.follow(Context.typeof(e1));
				switch t {
					case TAbstract(t, params):
						var t = t.get();
						switch t.name {
							case "Slice":
								return macro {
									var _offset_ = ${e1}.getOffset();
									var e2 = (${e2} : GoInt).toBasic();
									var _address_ = ${e1}._address_ + _offset_ + e2;
									new stdgo.Pointer(
										new stdgo.Pointer.PointerData(() -> ${e1}.getUnderlying()[e2 + _offset_],
										(v) -> ${e1}.getUnderlying()[e2 + _offset_] = v, _address_)
									);
								};
							case "GoArray":
								return macro {
									var e2 = (${e2} : GoInt).toBasic();
									var _address_ = ${e1}._address_ + e2;
									new stdgo.Pointer(
										new stdgo.Pointer.PointerData(() -> $expr,
										(v) -> $expr = v, _address_)
									);
								}
						}
					default:
				}
			case EObjectDecl(_):
				declare = true;
			case ENew(_, _):
				declare = true;
			case ECheckType(e, _):
				switch e.expr {
					case EConst(_), EObjectDecl(_):
						declare = true;
					default:
				}
			default:
		}
		var t = Context.follow(Context.typeof(expr));
		switch t {
			case TInst(t, params):
				var t = t.get();
				if (t.isInterface) {
					return macro null;
				}
			default:
		}
		if (declare)
			return macro {
				var e = $expr;
				new stdgo.Pointer(new stdgo.Pointer.PointerData(() -> e, (v) -> e = v, ++Go.addressIndex));
			};
		return macro new stdgo.Pointer(new stdgo.Pointer.PointerData(() -> $expr, (v) -> $expr = v, ++Go.addressIndex));
	}

	public static macro function recover() {
		return untyped macro {
			var r = stdgo.runtime.Runtime.newRuntime(recover_exception.toString());
			recover_exception = null;
			r;
		}
	}

	public static macro function cfor(cond, post, expr) {
		#if !display
		var func = null;
		func = function(expr:haxe.macro.Expr) {
			return switch (expr.expr) {
				case EContinue: macro {$post; $expr;}
				case EWhile(_, _, _): expr;
				case ECall(macro cfor, _): expr;
				case EFor(_): expr;
				// case EIn(_): expr;
				default: haxe.macro.ExprTools.map(expr, func);
			}
		}
		expr = func(expr);
		#end
		var exprMacro = macro {
			while ($cond) {
				$expr;
				$post;
			}
		};
		return exprMacro;
	}

	static function isBasic(type:haxe.macro.Type):Bool {
		return switch type {
			case TAbstract(t, params):
				switch (t.get().name) {
					case "Bool":
					case "Float":
					case "Int":
					case "String", "GoString":
					default:
						false;
				}
				true;
			default:
				false;
		}
	}
	#if macro
	//reflect decode
	private static function gtParams(params:Array<haxe.macro.Type>):Array<Expr> {
		var pTypes = [];
		for (i in 0...params.length)
			pTypes.push(gtDecode(params[i]));
		return pTypes;
	}

	static var marked = new Map<String,Bool>();
	static var markedEmpty = true;
	
	public static function gtDecode(t:haxe.macro.Type):Expr {
		var ret = macro stdgo.reflect.Reflect.GT_enum.GT_invalid;
		switch (t) {
			case TMono(ref):
				var ref = ref.get();
				var elem = ref == null ? ret : gtDecode(ref);
				return macro stdgo.reflect.Reflect.GT_enum.GT_unsafePointer($elem);
			case TType(ref, params):
				var ref = ref.get();
				var t = gtDecode(ref.type);
				var methods = macro [];
				var interfaces = macro [];
				ret = macro stdgo.reflect.Reflect.GT_enum.GT_namedType($v{ref.pack.join(".")},$v{parseModule(ref.module)},$v{ref.name},$methods,$interfaces,$t);
			case TAbstract(ref, params):
				var sref:String = ref.toString();
				switch (sref) {
					case "haxe.Rest":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_variadic($a{gtParams(params)});
					case "stdgo.Slice":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_slice($a{gtParams(params)});
					case "stdgo.GoArray":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_array(${gtParams(params)[0]}, -1); // TODO go2hx does not store the length in the type
					case "stdgo.Pointer":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_ptr($a{gtParams(params)});
					case "stdgo.unsafe.Pointer":
						throw "cannot gtDecode an unsafePointer expected to be done via macro";
					case "stdgo.GoMap":
						var ps = gtParams(params);
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_map($a{ps});
					case "stdgo.GoInt8":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_int8;
					case "stdgo.GoInt16":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_int16;
					case "stdgo.GoInt32":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_int32;
					case "stdgo.GoInt", "Int":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_int;
					case "stdgo.GoInt64":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_int64;
					case "stdgo.GoUInt8":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_uint8;
					case "stdgo.GoUInt16":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_uint16;
					case "stdgo.GoUInt":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_uint;
					case "stdgo.GoUInt32":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_uint32;
					case "stdgo.GoUInt64":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_uint64;
					case "stdgo.GoString", "String":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_string;
					case "stdgo.GoComplex64":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_complex64;
					case "stdgo.GoComplex128":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_complex128;
					case "stdgo.ComplexType":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_complex128;
					case "stdgo.GoFloat32":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_float32;
					case "stdgo.GoFloat64":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_float64;
					case "stdgo.FloatType":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_float64;
					case "Bool":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_bool;
					case "stdgo.AnyInterface":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_interface("","","interface{}",[]);
					case "Void":
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_invalid; // Currently no value is supported for Void however in the future, there will be a runtime value to match to it. HaxeFoundation/haxe-evolution#76
					default:
						var ref = ref.get();
						var interfaces:Array<Expr> = [];
						for (t in ref.to) {
							switch t.t {
								case TInst(tt, params):
									if (tt.get().isInterface)
										interfaces.push(gtDecode(t.t));
								default:
							}
						}
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_namedType(
							$v{ref.pack.join(".")},
							$v{ref.module},$v{ref.name},
							[],
							$a{interfaces},
							${gtDecode(ref.type)}
						);
				}
			case TInst(ref, params):
				var ref = ref.get();
				if (!marked.exists(ref.module + "." + ref.name)) {
					var init = false;
					if (markedEmpty) {
						markedEmpty = false; 
						init = true;
					}
					marked[ref.module + "." + ref.name] = true;
					if (params.length == 1 && ref.pack.length == 1 && ref.pack[0] == "stdgo" && ref.name == "Chan") {
						ret = macro stdgo.reflect.Reflect.GT_enum.GT_chan($a{gtParams(params)});
					}else{
						if (ref.isInterface) {
							ret = gtDecodeInterfaceType(ref);
						}else{
							ret = gtDecodeClassType(ref);
						}
					}
					if (init) {
						markedEmpty = true;
						marked.clear();
					}
				}
			case TAnonymous(a):
				var a = a.get();
				a.fields.sort((a,b) -> {
					return haxe.macro.Context.getPosInfos(a.pos).min - haxe.macro.Context.getPosInfos(b.pos).min;
				});
				var fields = [];
				for (field in a.fields) {
					var t = gtDecode(field.type);
					var name:Expr = macro $v{field.name};
					fields.push(macro stdgo.reflect.Reflect.GT_enum.GT_field($name,$t,""));
				}
				var fields = macro $a{fields};
				ret = macro stdgo.reflect.Reflect.GT_enum.GT_struct($fields);
			case TFun(a, result):
				var args = [];
				for (arg in a) {
					args.push(gtDecode(arg.t));
				}
				var results = []; //TODO handle multi return
				var isVoid = false;
				switch result {
					case TAbstract(t, params):
						if (t.toString() == "Void")
							isVoid = true;
					default:
				}
				if (!isVoid)
					results.push(gtDecode(result));
				ret = macro stdgo.reflect.Reflect.GT_enum.GT_func($a{args},$a{results});
			case TDynamic(t):
				ret = macro stdgo.reflect.Reflect.GT_enum.GT_interface(
					"","",
					"interface{}",
					[]
				);
			case TLazy(f):
				ret = gtDecode(f());
			case TEnum(_, _): ret = macro stdgo.reflect.Reflect.GT_enum.GT_invalid;
			default:
				throw "reflect.cast_AnyInterface - unhandled typeof " + t;
		}
		return ret;
	}
	
	static function gtDecodeInterfaceType(ref:haxe.macro.Type.ClassType):Expr {
		var methods = [];
		for (method in ref.fields.get()) {
			methods.push(macro stdgo.reflect.Reflect.GT_enum.GT_field($v{method.name},${gtDecode(method.type)},""));
		}
		return macro stdgo.reflect.Reflect.GT_enum.GT_interface($v{ref.pack.join(".")},$v{ref.module},$v{ref.name},$a{methods});
	}
	
	static function gtDecodeClassType(ref:haxe.macro.Type.ClassType):Expr {
		var methods:Array<Expr> = [];
		var fields:Array<Expr> = [];
		var interfaces = [];
		if (ref.module == "String")
			return macro stdgo.reflect.Reflect.GT_enum.GT_string;
		for (inter in ref.interfaces) {
			var inter = inter.t.get();
			interfaces.push(gtDecodeInterfaceType(inter));
		}
		var fs = ref.fields.get();
		var module = parseModule(ref.module);
		for (field in fs) {
			switch field.kind {
				case FMethod(k):
					switch field.name {
						case "new", "__copy__", "__underlying__":
							continue;
					}
					switch field.type {
						case TLazy(f):
							field.type = f();
						default:
					}
					switch field.type {
						case TFun(args, ret):
							var params = [];
							var rets = [];
							for (arg in args) {
								params.push(gtDecode(arg.t));
							}
							switch ret {
								case TAnonymous(a):
									var fs = a.get().fields;
									for (f in fs) {
										rets.push(macro stdgo.reflect.Reflect.GT_enum.GT_field(f.name,gtDecode(f.type),""));
									}
								default:
									if (field.name == "toString") {
										switch ret {
											case TInst(t, params):
												var t = t.get();
												if (t.name == "String")
													continue;
											default:
										}
									}
									rets.push(gtDecode(ret));
							}
							params.unshift(macro stdgo.reflect.Reflect.GT_enum.GT_field("this", stdgo.reflect.Reflect.GT_enum.GT_previouslyNamed($v{module} + "." + $v{ref.name}),"")); //recv
							methods.push(macro stdgo.reflect.Reflect.GT_enum.GT_field($v{field.name}, stdgo.reflect.Reflect.GT_enum.GT_func($a{params},$a{rets}),""));
						default:
							throw "method needs to be a function: " + field.type;
					}
				default:
					if (field.name == "_address_")
						continue;
					var t = gtDecode(field.type);
					fields.push(macro stdgo.reflect.Reflect.GT_enum.GT_field($v{field.name},$t,""));
			}
		}
		var fields = macro $a{fields};
		var t = macro stdgo.reflect.Reflect.GT_enum.GT_struct($fields);
		var pack = ref.pack.join(".");
		return macro stdgo.reflect.Reflect.GT_enum.GT_namedType($v{pack},$v{module}, $v{ref.name},$a{methods}, $a{interfaces},$t);
	}
	#end
	public static macro function setKeys(expr:Expr) {
		var t = Context.toComplexType(Context.getExpectedType());
		return macro($expr : $t);
	}

	public static macro function multireturn(expr:Expr):Expr {
		function getFields(t:ComplexType) {
			switch t {
				case TPath(p):
					switch p.params[0] {
						case TPType(t):
							switch t {
								case TAnonymous(fields):
									fields.sort((a,b) -> {
										return Context.getPosInfos(a.pos).min - Context.getPosInfos(b.pos).min;
									});
									return fields;
								default:
									throw "not anon type: " + t;
							}
						default:
					}
				default:
					throw "not multireturn type: " + t;
			}
			return [];
		}
		function parens(expr) {
			return switch expr.expr {
				case EParenthesis(e): parens(e);
				default: expr;
			}
		}
		expr = parens(expr);
		switch expr.expr {
			case ECheckType(e, t):
				var fields2 = getFields(t);
				var t = Context.toComplexType(Context.typeof(e));
				var fields = getFields(t);
				var struct = {expr: EObjectDecl([
					for (i in 0...fields.length) {
						var fieldName = fields[i].name;
						{
							field: fields2[i].name,
							expr: macro obj.$fieldName,
						};
					}
				]), pos: Context.currentPos()};
				return macro {
					var obj = $e;
					$struct;
				}
			default:
		}
		return macro null;
	}

	private static function parseModule(module:String):String {
		var index = module.lastIndexOf(".");
		var name = module.substr(index + 1);
		module = module.substr(0,index);
		module = module.substr(module.lastIndexOf(".") + 1);
		if (module == name.charAt(0).toLowerCase() + name.substr(1))
			module = "main";
		return module;
	}
}
