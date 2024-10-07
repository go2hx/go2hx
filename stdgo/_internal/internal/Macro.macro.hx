package stdgo._internal.internal;

import haxe.macro.PositionTools;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.Context;

using Lambda;

class Macro {
	public static function initHxb(startingPath:String) {
        var run = false;
		Context.onAfterTyping(_ -> {
			if (run)
				return;
			run = true;
			final printer = new haxe.macro.Printer();
			final exprs:Array<Expr> = [];
			for (name => e in @:privateAccess Go.nameTypes) {
				exprs.push(macro $v{name} => $e);
			}
			//trace("hxb types:", exprs.length);
			final e = macro $a{exprs};
			final className = "TypeInfoData_go2hx_hxb";
			final cl = macro class T {
				public var names:stdgo._internal.internal.TypeInfo.TypeInternalMap = [];
				public function new() {}
			};
			cl.name = className;
			var path = haxe.io.Path.join(cl.pack.concat([cl.name + ".hx"]));
			path = startingPath + "/" + path;
			//Context.defineType(cl);
			trace("SAVE");
			sys.io.File.saveContent(path, printer.printTypeDefinition(cl));
		});
    }
	public static function init() {
		var run = false;
		Context.onAfterTyping(_ -> {
			if (run)
				return;
			run = true;
			final exprs:Array<Expr> = [];
			for (name => e in @:privateAccess Go.nameTypes) {
				exprs.push(macro $v{name} => $e);
			}
			//trace("non hxb types:", exprs.length);
			final e = macro $a{exprs};
			final className = "TypeInfoData_go2hx_";
			final cl = macro class T {
				public var names:stdgo._internal.internal.TypeInfo.TypeInternalMap = $e;
				public function new() {}
			};
			cl.meta.push({name: ":keep", pos: haxe.macro.Context.currentPos()});
			cl.name = className;
			Context.defineType(cl);
		});
	}

	private static function exprToString(e:Expr):String {
		switch e.expr {
			case EConst(CString(s)):
				return s;
			default:
				throw "invalid expr for exprToString: " + e.expr;
		}
	}

	public static macro function stack(body:Expr) {
		final stack = "__stack__";
		var f:Expr->Expr = null;
		f = expr -> {
			switch expr.expr {
				case EBlock(exprs):
					var j = 0;
					var newExprs = [];
					for (expr in exprs) {
						final location = PositionTools.toLocation(expr.pos);
						final pos = location.range.start.line;
						final fileName = location.file.toString();
						newExprs.push(macro $i{stack}.pos = $v{pos});
						newExprs.push(macro $i{stack}.fileName = $v{fileName});
						newExprs.push(ExprTools.map(expr,f));
					}
					expr.expr = EBlock(newExprs);
					return expr;
				default:
					return ExprTools.map(expr,f);
			}
		}
		body = f(body);
		final location = PositionTools.toLocation(Context.currentPos());
		final fileName = location.file.toString();
		var pos = location.range.start.line;

		var traceExpr = macro Sys.println('stacktrace: ' + $i{stack}.fileName + ':' + $i{stack}.pos);
		
		final e = macro {
			var $stack = {pos: $v{pos}, fileName: $v{fileName}};
			//$traceExpr;
			//try {
				$body;
			/*}catch(e) {
				trace(e);
				trace($i{stack});
				Sys.println('stack: ' + $i{stack}.fileName + ':' + $i{stack}.pos);
				throw e;
			}*/
		};
		e.pos = Context.currentPos();
		return e;
	}

	public static macro function controlFlow(body:Expr) {
		final selectName = "____select____";
		final innerName = "____inner____";
		final exitName = "____exit____";
		final breakName = "____break____";
		var func = null;
		var cases:Array<Case> = [];
		var vars:Array<Var> = [];

		var ret:Expr = null; // get return at end of block so the compiler is happy since the control flow is wrapped inside a while loop
		switch body.expr {
			case EBlock(exprs):
				switch exprs[exprs.length - 1].expr {
					case EReturn(_):
						ret = exprs.pop();
						body.expr = EBlock(exprs);
					default:
				}
			default:
		}
		function loop(e:Expr, inLoop:Bool,label:Expr):Expr {
			final exprs = [e,macro if ($i{exitName})
			${
				inLoop?macro break:macro if (!$i{breakName})
					continue
			}];
			if (inLoop) {
				if (label != null) {
					exprs.push(macro if ($i{innerName}) {
						// trace("inner");
						if ($i{selectName} == $label) {
							$i{innerName} = false;
							if ($i{breakName}) {
								// trace("breakName");
								break;
							}else{
								// trace("nonBreakName");
								continue;
							}
						}else{
							// trace("non selected name");
							break;
						}
					}else{
						// trace("outer");
					});
				}else{
					exprs.push(macro if ($i{innerName}) {
						// trace("inner set to false");
						//$i{innerName} = false;
						if ($i{breakName}) {
							// trace("break other");
							break;
						}else{
							continue;
						}
					});
				}
			}
			return macro $b{exprs};
		}

		// label:Expr
		func = function(expr:haxe.macro.Expr, inLoop:Bool, scopeIndex:Int,label:Expr,initLabelSet:Bool,previousLabel:Expr):Expr {
			return switch (expr.expr) {
				case EMeta(s, e):
					switch s.name {
						case ":recv":
							expr;
						case ":label":
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex,s.params[0],true,label)),
								pos: Context.currentPos(),
							};
						case ":jump":
							final name:Expr= s.params[0];
							final noJump = label == null ? false : exprToString(name) == exprToString(label);
							switch e.expr {
								case EBlock(exprs):
									if (noJump) {
										e;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = false;
											${exprs[0]}
											break;
										}
									}
								case EContinue:
									if (noJump) {
										e;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = false;
											break;
										}
									}
								case EBreak:
									if (noJump) {
										macro break;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = true;
											break;
										}
									}
								default:
									trace(Context.currentPos());
									throw "invalid jump expr: " + new haxe.macro.Printer().printExpr(e);
							}
						case ":goto":
							macro {
								$i{selectName} = $e;
								${inLoop ? macro {$i{exitName} = true; break;} : macro continue};
							};
						default:
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel)),
								pos: Context.currentPos(),
							};
					}
				case EWhile(econd, e, normalWhile):
					expr.expr = EWhile(econd, func(e,true,scopeIndex, initLabelSet ? label : null,false,null), normalWhile);
					expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
					expr;
				case EFor(it, e):
					expr.expr = EFor(it, func(e,true,scopeIndex, initLabelSet ? label : null,false,null));
					expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
					expr;
				case EBlock(exprs):
					scopeIndex++;
					for (i in 0...exprs.length)
						exprs[i] = func(exprs[i], inLoop, scopeIndex,label,initLabelSet,previousLabel);
					expr.expr = EBlock(exprs);
					expr;
				case EIf(econd, eif, eelse):
					expr.expr = EIf(econd, func(eif, inLoop, scopeIndex,label,initLabelSet,previousLabel), eelse == null ? null : func(eelse, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EVars(v):
					if (scopeIndex == 0) {
						for (obj in v)
							obj.isFinal = false; // all vars need to be able to be reassigned
						vars = vars.concat(v);
						if (v.length == 1) {
							macro $i{v[0].name} = ${v[0].expr};

						} else {
							{
								expr: EBlock([for (v in vars) macro $i{v.name} = ${v.expr}]),
								pos: Context.currentPos(),
							};
						}
					} else {
						expr;
					}
				case ECall(e, params):
					var printer = new haxe.macro.Printer();
					final str = printer.printExpr(e);
					if (str == "stdgo.Go.cfor" || str == "Go.cfor") {
						var block = params.pop();
						block = func(block,true,scopeIndex,initLabelSet ? label : null,false,null);
						params.push(block);
						expr.expr = ECall(e, params);
						expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
						expr;
					}
					expr;
				/*case EBinop(op, e1, e2):
					expr.expr = EBinop(op, func(e1, inLoop, scopeIndex,label,initLabelSet,previousLabel), func(e2, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EField(e, field, kind):
					expr.expr = EField(func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel), field, kind);
					expr;
				case EBreak, EContinue:
					expr;
				case EReturn(e):
					expr.expr = EReturn(func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EThrow(e):
					expr.expr = EThrow(func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EConst(_):
					expr;
				case EUnop(op, postFix, e):
					expr.expr = EUnop(op, postFix, func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EParenthesis(e):
					expr.expr = EParenthesis(func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EArray(e1, e2):
					expr.expr = EArray(func(e1, inLoop, scopeIndex,label,initLabelSet,previousLabel), func(e2, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case ECheckType(e, t):
					expr.expr = ECheckType(func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel), t);
					expr;
				case EObjectDecl(fields):
					for (field in fields)
						field.expr = func(field.expr, inLoop, scopeIndex,label,initLabelSet,previousLabel);
					expr;
				default:
					throw expr.expr.getName();*/
				default:
					expr;
			}
		}
		body = func(body, false, -1, macro "",false,null);
		switch body.expr {
			case EBlock(exprs):
				for (i in 0...exprs.length) {
					switch exprs[i].expr {
						case EMeta(s, e):
							switch s.name {
								case ":label":
									if (cases.length == 0) {
										// first case
										cases.push({values: [macro ""], expr: {expr: EBlock(exprs.slice(0, i)), pos: Context.currentPos()}});
									}
									cases.push({values: [s.params[0]], expr: {expr: EBlock(exprs.slice(i)), pos: Context.currentPos()}});

									switch e.expr { // takes out labled Vars statement from scoped block
										case EBlock(exprs2):
											if (exprs2.length == 1) {
												switch exprs2[0].expr {
													case EVars(_):
														exprs[i].expr = exprs2[0].expr;
													default:
												}
											}
										default:
									}
							}
						default:
					}
				}
				body.expr = EBlock(exprs);
			default:
		}
		if (cases.length == 0) {
			cases.push({values: [macro ""], expr: body});
		}
		for (i in 0...cases.length) {
			switch cases[i].expr.expr {
				case EBlock(exprs):
					final name = i == cases.length - 1 ? macro "" : cases[i + 1].values[0];
					exprs.push(macro $i{selectName} = $name);
					cases[i].expr.expr = EBlock(exprs);
				default:
			}
		}
		var switchStmt:Expr = {expr: ESwitch(macro $i{selectName}, cases, null), pos: Context.currentPos()};
		final v:Expr = {expr: EVars(vars), pos: Context.currentPos()};
		final e = macro {
			var $selectName = "";
			var $exitName = false;
			var $breakName = false;
			var $innerName = false;
			$v;
			@:pos(Context.currentPos()) do {
				$i{exitName} = false;
				$switchStmt;
			} while ($i{selectName} != "");
		};
		e.pos = Context.currentPos();
		if (ret != null) {
			switch e.expr {
				case EBlock(exprs):
					exprs.push(ret);
					e.expr = EBlock(exprs);
				default:
			}
		}
		// trace(new haxe.macro.Printer().printExpr(e),Context.currentPos());
		return e;
	}

	public static function buildUnknown()
		return null;

	public static macro function intEnum():Array<Field> {
		switch (Context.getLocalClass().get().kind) {
			case KAbstractImpl(_.get() => {type: TAbstract(_.get() => {name: "Int"}, _)}):
			default:
				Context.error("This macro should only be applied to abstracts with base type Int", Context.currentPos());
		}
		var fields:Array<Field> = Context.getBuildFields();
		var nextIndex:Int = 0;
		for (field in fields) {
			switch (field.kind) {
				case FVar(t, {expr: EConst(CInt(i))}):
					{ // `var some = 1;`
						nextIndex = Std.parseInt(i) + 1;
					};
				case FVar(t, null):
					{ // `var some;`
						var expr = EConst(CInt(Std.string(nextIndex++)));
						field.kind = FVar(t, {expr: expr, pos: field.pos});
					};
				default:
			}
		}
		return fields;
	}

	public static function isNumber(name:String):Bool {
		return switch name {
			case "Int", "Int8", "Int16", "Int32", "Int64", "UInt", "UInt8", "UInt16", "UInt32", "UInt64", "Complex64", "Complex128", "Float":
				true;
			default:
				false;
		}
	}

	static function isHaxeStd(path:String):Bool {
		return [
			"cpp", "cs", "eval", "flash", "haxe", "hl", "java", "js", "jvm", "lua", "neko", "php", "python", "sys", "Any", "Array", "Class", "Date",
			"DateTools", "EReg", "Enum", "EnumValue", "IntIterator", "Lambda", "List", "Map", "Math", "Reflect", "Std", "StdTypes", "String", "StringBuf",
			"StringTools", "Sys", "Type", "UInt", "UnicodeString", "Xml", "_UInt", "_EnumValue", "_Any", "polygonal",

		].indexOf(path) > -1;
	}
}
