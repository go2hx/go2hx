package stdgo;

import haxe.macro.PositionTools;
import haxe.macro.ComplexTypeTools;
import haxe.macro.TypeTools;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

class Go {
	public static macro function copy(expr) { // slices and maps are ref types
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
										if (s == "Go" || s == "Map" || s == "Array" || s == "Slice") // map and array is by ref
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
			case EArray(e1, e2): //expr[i] : passthrough
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
						return 0;//Context.getPosInfos(a.pos).min - Context.getPosInfos(b.pos).min;
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
	public static macro function isNull(expr:Expr) {
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "Slice":
						return macro $expr.length == 0;
				}
			default:
				trace("unknown type: " + type);
		}
		return expr;
	}
	public static macro function divide(a:Expr,b:Expr) {
		var aType = Context.follow(Context.typeof(a));
		var bType = Context.follow(Context.typeof(b));

		function checkInt(t:haxe.macro.Type) {
			switch t {
				case TAbstract(t, params):
					var name = t.get().name;
					if (["Float","Float32","Float64"].indexOf(name) == -1)
						return true;
				default:
			}
			return false;
		}
		var isInt = checkInt(aType);
		if (!isInt)
			isInt = checkInt(bType);
		if (isInt)
			return macro Std.int($a / $b);
		return macro $a / $b;
	}
	public static macro function destruct(exprs:Array<Expr>) {
		var expr = exprs.pop(); //expr to destructure
		var type = Context.followWithAbstracts(Context.typeof(expr));
		var fields:Array<String> = [];
		switch expr.expr {
			case ECall(e, params):
				switch e.expr {
					case EField(e2, field):
						if (field == "assert" && e2.expr.match(EConst(CIdent("Go")))) {
							params.push(macro null);
							expr = macro Go.assert($a{params});
						}
					default:
				}
			default:
		}
		switch type {
			case TAnonymous(a):
				var f = a.get().fields;
				f.sort(function(a, b) {
					return Context.getPosInfos(a.pos).min - Context.getPosInfos(b.pos).min;
				});
				for (field in f) {
					fields.push(field.name);
				}
			case TDynamic(t):
				if (t != null) {
					trace("unknown dynamic type destruct: " + t);
				}else{
					
				}
			default:
				trace("unknown destruct type: " + type);
		}
		var valueType = Context.typeof(exprs[0]);
		var isDefine:Bool = false;
		switch valueType {
			case TInst(t, params):
				var t = t.get();
				if (t.name == "String")
					isDefine = true;
			default:
		}
		var main:Var = {
			name: "_obj",
			expr: expr,
		};

		if (isDefine) {
			var vars:Array<Var> = [];
			for (i in 0...exprs.length) {
				var name:String = "";
				switch exprs[i].expr {
					case EConst(c):
						switch c {
							case CString(s, kind):
								name = s;
							default:
						}
					default:
				}
				vars.push({
					name: name,
					expr: Context.parse("_obj." + fields[i],Context.currentPos()),
				});
			}
			vars.unshift(main);
			return {expr: EVars(vars),pos: Context.currentPos()};
		}
		//assign
		var v:Expr = {expr: EVars([main]),pos: Context.currentPos()};
		var set:Array<Expr> = [];
		for (i in 0...exprs.length) {
			set.push(macro ${exprs[i]} = ${Context.parse("_obj." + fields[i],Context.currentPos())});
		}
		return macro {
			$v;
			$b{set};
		}
	}
	public static macro function set(params:Array<Expr>) {
		var t = Context.toComplexType(Context.getExpectedType());
		switch t {
			case TPath(p):
				return macro new $p($a{params});
			case TFunction(args, ret):
				return macro null;
			case TAnonymous(fields):
				fields.sort((a,b) -> {
					return PositionTools.getInfos(a.pos).min - PositionTools.getInfos(b.pos).min;
				});
				var anon = createAnonType(Context.currentPos(),fields,params);
				return anon;
			default:
				throw ("unknown go set type: " + t);
		}
		return macro null;
	}
	public static macro function setKeys(expr:Expr) {
		var t = Context.toComplexType(Context.getExpectedType());
		return macro ($expr : $t);
	}

	
public static function createAnonType(pos:Position,fields:Array<Field>,params:Array<Expr>):Expr {
	return {pos: pos, expr: EObjectDecl([for (i in 0...fields.length) {
		var expr:Expr = macro null;
		if (params[i] == null) {
			switch fields[i].kind {
				case FVar(t, e):
					expr = stdgo.Builtin.defaultValue(t,pos);
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
public static macro function pointer(expr) {
	var isRealPointer = false;
	var type = Context.follow(Context.typeof(expr));
	switch type {
		case TMono(t):
			type = t.get();
		default:
	}
	if (type == null)
		return macro null;
	switch type {
		case TAbstract(t, params):
			var t = t.get();
			switch t.name {
				case "GoArray":
					return macro new stdgo.GoArray.GoArrayPointer($expr);
				case "Slice", "Map":
					return expr;
				case "GoString","String","Bool","Int","Float","UInt","Rune","Byte","Int8","Int16","Int32","Int64","UIn8","UInt16","UInt32","UInt64","Complex","Complex64","Complex128":
					isRealPointer = true;
				case "Pointer","PointerWrapper": //double or even triple pointer
					isRealPointer = true;
			}
		case TAnonymous(a):
		case TInst(t, params):
		case TDynamic(t):
			return macro null;
		default:
			trace("unknown make pointer type: " + type);
	}
	if (isRealPointer)
		return macro new Pointer(new stdgo.Pointer.PointerData(() -> $expr,(v) -> $expr = v));
	return macro new PointerWrapper($expr);
}
	public static macro function assert(expr:Expr,?ok:Expr) {
		var func = null;
		var okBool = true;
		switch ok.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						if (s == "null")
							okBool = false;
					default:
				}
			default:
		}
		function typeName(t:ComplexType):String {
			if (t == null)
				return "";
			switch t {
				case TPath(p):
					if (p.sub != null)
						return p.sub;
					return p.name;
				default:
					return "";
			}
		}
		function assertPointer() {
			
		}
		func = function():Expr {
			switch expr.expr {
				case ECheckType(e, t):
					var to = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
					switch e.expr {
						case EConst(CIdent("null")):
							return Builtin.defaultValue(t,Context.currentPos());
						default:
					}
					function standard() {
						return macro {
							var x:$to = $e;
							x;
						}
					}
					var from = Context.toComplexType(Context.follow(Context.typeof(e)));
					if (from == null) {
						//most likely pointer
						return standard() ;
					}
					if (to == null)
						trace("could not resolve types: " + e.expr + " : " + t);
					var fromString = typeName(from);
					var toString = typeName(to);
					function assertString() {
						return macro (Std.string($e) : GoString);
					}
					if (fromString == toString)
						return e;
					//trace(fromString + " -> " + toString);
					switch fromString {
						case "String", "GoString":
							switch toString {
								case "Slice":
									return macro new stdgo.Slice(...($e.toArray()));
							}
						case "Int":
							switch toString {
								case "Float":
									return macro ($e : Float);
								case "UInt":
									return macro ($e : UInt);
								case "GoString":
									return assertString();
							}
						case "UInt":
							switch  toString {
								case "Int":
									return macro ($e : Int);
							}
						case "Float":
							switch toString {
								case "Int64":
									return macro new stdgo.StdTypes.Int64(haxe.Int64Helper.fromFloat($e));
								default:
							}
						case "Any":
							switch toString {
								case "Slice":
									return standard();
							}
					}
					var param:ComplexType = null;
					switch t {
						case TPath(p):
							if (p.params != null && p.params[0] != null) {
								switch p.params[0] {
									case TPType(t):
										param = t;
									default:
								}
							}
						default:
					}
					switch toString {
						case "Pointer":
							if (okBool) {
								return macro {value: new Pointer($e), ok: true};
							}else{
								return macro new Pointer(($e : $param));
							}
						case "PointerWrapper":
							if (okBool) {
								return macro {value: new PointerWrapper($e), ok: true};
							}
							return macro {
								var e:$param = $e;
								new PointerWrapper(e);
							}
					}
				return standard();
				case EParenthesis(e):
					expr = e;
					return func();
				default:
					trace("unknown expr def for assert: " + expr.expr);
			}
			return expr;
		}
		return func();
	}
	//GOROUTINE
	public static macro function routine(expr) {
		return expr;
	}
	public static macro function range(expr) {
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TMono(t): type = t.get();
			default:
		}
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "GoString","Slice","GoArray","Array","GoMap":
						return macro $expr.keyValueIterator();
					default:
						trace("unknown type abstract range: " + t.name);
				}
			case TAnonymous(a):
				trace("a: " + a.get().fields);
			default:
				trace("unknown range type: " + type);
		}
		return macro null;
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
}
