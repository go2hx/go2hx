import Pointer.InternalPointer;
import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

// typedef Byte = haxe.io.Bytes


function str(v:Dynamic):String {
	return v.toString();
}
inline function slice<T>(src:Vector<T>,low:Int,high:Int=0,max:Int=0):Vector<T> {
	Vector.blit(src,low,src,low + high,low + high + max);
	return src;
}

macro function copy(expr) { //slices and maps are ref types
	var type = Context.followWithAbstracts(Context.typeof(expr));
	var exception = false;
	//trace("expr: " + expr.expr);
	switch expr.expr {
		case ENew(t, params):
			exception = true;
		case EArrayDecl(values):
			exception = true;
		case EObjectDecl(fields):
			exception = true;
		case EIs(e, t):
			exception = true;
		case EConst(c):
			exception = true;
		case EBinop(op, e1, e2):
			exception = true;
		case ECall(e, params):
			switch e.expr {
				case EField(f, field):
					switch f.expr {
						case EConst(c):
							switch c {
								case CIdent(s):
									trace("s: " + s);
									if (s == "Go" || s == "Map") //map is by ref
										exception = true;
								default:
							}
						default:
					}
				default:
			}
			//trace("e: " + e);
		default:
			trace("expr: " + expr.expr);
	}
	if (isBasic(type) || exception) {
		return expr;
	}else{
		switch type {
			case TInst(t, params):
				var t = t.get();
				var fields = t.fields.get();
				fields.sort(function(a, b) {
					return 0;
				});
				var values = [];
				var main = ExprTools.toString(expr);
				for (field in fields) {
					values.push('$main.' + field.name);
				}
				var str = "new " + t.pack.join(".") + t.name+ '(${values.join(",")})';
				//trace("copy str: " + str);
				var init = Context.parse(str,Context.currentPos());
				return macro $init;
			case TMono(t):
				var t = t.get();
				switch t {
					default:
						trace("unknown tmono type: " + t);
				}
			default:
				trace("copy type unknown: " + type);
		}
		return macro expr;
	}
}

macro function setMulti(cond, expr) {
	var type = Context.typeof(expr);
	var values:Array<haxe.macro.Expr> = [];
	var index:Int = -1;
	switch cond.expr {
		case EArrayDecl(array):
			for (v in array) {
				switch v.expr {
					case EConst(c):
						switch c {
							case CIdent(s):
								if (s == "null") {
									values.push(null);
								} else {
									values.push(v);
								}
							default:
								trace("not indent " + c);
						}
					case EArray(e1, e2):
						values.push(v);
					default:
						trace("not constant " + v.expr);
				}
			}
		default:
			throw "needs array for set multi";
	}
	var set:Array<haxe.macro.Expr> = [];
	function anonFields(a:haxe.macro.Type.AnonType) {
		var fields = a.fields;
		fields.sort(function(a, b) {
			return 0;
		});
		for (field in fields) {
			index++;
			if (values[index] == null)
				continue;
			if (index >= values.length)
				continue;
			var get = Context.parse('tmp.${field.name}', Context.currentPos());
			var value = values[index];
			set.push(macro $value = $get);
		}
	}
	function getAbstract(t:haxe.macro.Type.Ref<haxe.macro.Type.AbstractType>, params) {
		switch t.get().type {
			case TAbstract(tt, params):
				getAbstract(t, params);
			default:
				trace("TAbstract unknown " + t.get().type);
		}
	}
	switch type {
		case TInst(t, params):
			var value = values[0];
			set.push(macro $value = $expr);
		case TFun(args, ret):
			switch ret {
				case TAbstract(t, params):
					var value = values[0];
					var get = expr;
					set.push(macro $value = $get);
				default:
					trace("not abstract");
			}
		case TType(t, params):
			switch t.get().type {
				case TAnonymous(a):
					anonFields(a.get());
				default:
					trace("ttype unknown " + t.get().type);
			}
		case TAbstract(t, params):
			getAbstract(t, params);
		case TAnonymous(a):
			anonFields(a.get());
		default:
			trace("not an inst or func " + type);
	}
	return macro {
		var tmp = $expr;
		$b{set}
	}
}

macro function range(key, value, x, expr) {
	var print = new Printer();
	function getName(expr:haxe.macro.Expr) {
		switch expr.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						return s;
					default:
				}
			default:
		}
		return "";
	}
	var keyName = getName(key);
	if (keyName == "null")
		keyName = "i";
	var init = Context.parse('var $keyName = 0;', Context.currentPos());
	var post = Context.parse('$keyName++', Context.currentPos());
	var set = macro null;
	var valueName = getName(value);
	if (valueName != "_") {
		set = Context.parse('var $valueName = tmp;', Context.currentPos());
	}
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
	var xType = Context.followWithAbstracts(Context.typeof(x));
	switch xType {
		case TInst(t, params):
			var name = t.get().name;
			switch (name) {
				case "Array":
				case "String":
					//x = macro new haxe.iterators.StringIterator($x);
					x = macro $x.split("");
				default:
					trace('unknown iterator inst name: $name');
			}
		default:
			trace('unknown iterator type: $xType');
	}
	return macro {
		$init;
		for (tmp in $x) {
			$set;
			$expr;
			$post;
		}
	}
}

macro function cfor(cond, post, expr) {
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
	return macro {
		while ($cond) {
			$expr;
			$post;
		}
	};
}
macro function makePointer(expr) {
	var type = Context.typeof(expr);
	if (isBasic(type)) {
		return macro new Pointer(InternalPointer.make(() -> $expr,(tmp) -> $expr = tmp));
	}else{
		return macro new Pointer($expr);
	}
	return macro null;
}
macro function star(expr) {
	var isReal = isRealPointer(Context.typeof(expr));
	return isReal ? macro $expr.value : macro $expr;
}
macro function addressPointer(expr) {
	var type = Context.typeof(expr);
	return macro null;
}
private function isRealPointer(type:haxe.macro.Type):Bool {
	switch type {
		case TAbstract(t, params):
			if (params.length == 0)
				return false;
			var param = params[0];
			switch param {
				case TInst(t, params):
					var name = t.get().name;
					trace("name: " + name);
					if (name == "InternalPointer")
						return true;
				default:
			}
			return false;
		default:
			return false;
	}
	
}
private function isBasic(type:haxe.macro.Type):Bool {
	return switch type {
		case TAbstract(t, params):
			switch (t.get().name) {
				case "Bool":
				case "Float":
				case "Int":
				case "String":
				default:
					false;
			}
			true;
		default:
			false;
	}
}
@:generic
typedef ErrorReturn<T> = {value:T, ?error:Exception};
