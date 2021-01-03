package gostd;

import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

function str(v:Dynamic):String {
	return v.toString();
}

macro function slice(src:Expr, low:ExprOf<Int>, high:ExprOf<Int> = null, max:ExprOf<Int> = null) {
	var type = Context.followWithAbstracts(Context.typeof(src));
	var isString = false;
	switch type {
		case TInst(t, params):
			var t = t.get();
			switch t.pack.join(".") + t.name {
				case "String":
					isString = true;
				default:
			}
		default:
	}
	if (high == null)
		high = macro 0;
	if (max == null)
		max = macro 0;
	if (isString) {
		return macro $src.substring($low, $high).substr($max);
	} else {
		return macro $src.slice($low, $high).slice($max);
	}
	/*var slice = src.slice(low,high);
		if (max > 0)
			return slice.slice(0,max);
		return slice; */
}

macro function copy(expr) { // slices and maps are ref types
	var type = Context.followWithAbstracts(Context.typeof(expr));
	var exception = false;
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
			switch c {
				case CIdent(s):
					if (s == "null") exception = true;
				default:
			}
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
									if (s == "Go" || s == "Map" || s == "Array") // map and array is by ref
										exception = true;
								default:
							}
						default:
					}
				default:
			}
		case EField(e, field):
			exception = true;
		// trace("e: " + e);
		case EArray(e1, e2):
			return macro $expr.copy();
		default:
			trace("expr: " + expr.expr);
	}
	if (isBasic(type) || exception) {
		return expr;
	} else {
		switch type {
			case TInst(t, params):
				var t = t.get();
				switch t.pack.join(".") + t.name {
					case "Errors":
						return macro $expr.copy();
				}
				var fields = t.fields.get();
				fields.sort(function(a, b) {
					return 0;
				});
				var values = [];
				var main = ExprTools.toString(expr);
				for (field in fields) {
					switch field.kind {
						case FVar(read, write):
							values.push('$main.' + field.name);
						case FMethod(k):
					}
				}
				values.sort(function(a, b) {
					return 0;
				});
				var str = "new " + t.pack.join(".") + t.name + '(${values.join(",")})';
				var init = Context.parse(str, Context.currentPos());
				return macro $init;
			case TMono(t):
				var t = t.get();
				switch t {
					case null:
					default:
						trace("unknown tmono type: " + t);
				}
			case TDynamic(t):
				trace("t " + t.getName());
			default:
				trace("copy type unknown: " + type);
		}
		return expr;
	}
}

macro function setMulti(cond, expr) {
	var type = Context.followWithAbstracts(Context.typeof(expr));
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
	switch type {
		case TInst(t, params):
			trace("type: " + type + " expr: " + new Printer().printExpr(expr), " exprdef: " + expr.expr);
			switch expr.expr {
				case EArray(e1, e2):
					var value = values[0];
					var ok = values[1];
					set.push(macro $value = $expr);
					set.push(macro $ok = $value != null);
				default:
					var value = values[0];
					set.push(macro $value = $expr);
			}
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
		case TAnonymous(a):
			anonFields(a.get());
		case TMono(t):

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
		keyName = "_iterate";
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
				case "String", "GoString":
					// x = macro new haxe.iterators.StringIterator($x);
					x = macro $x.split("");
				case "StringMap", "Map", "IntMap", "HashMap", "ObjectMap", "UnsafeStringMap", "WeakMap":
					x = macro $x.keys();
					var string = 'var $keyName = tmp;';
					if (valueName != "_") {
						string += 'var $valueName = ${ExprTools.toString(x)}[tmp];';
					}
					set = Context.parse(string, Context.currentPos());
					init = macro null;
					post = macro null;
				default:
					trace('unknown iterator inst name: $name');
			}
		default:
			trace('unknown iterator type: $xType');
	}
	var exprMacro = macro {
		$init;
		for (tmp in $x) {
			$set;
			$expr;
			$post;
		}
	};
	return exprMacro;
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
	var exprMacro = macro {
		while ($cond) {
			$expr;
			$post;
		}
	};
	return exprMacro;
}

private function isBasic(type:haxe.macro.Type):Bool {
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
