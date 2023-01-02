package stdgo.internal;

import haxe.macro.Compiler;
import haxe.macro.ComplexTypeTools;
import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.TypeTools;

using Lambda;

class Macro {
	#if macro
	public static function init() {
		var run = false;
		Context.onAfterTyping(_ -> {
				if (run)
					return;
				run = true;
				final exprs:Array<Expr> = [];
				//var count = 4;
				for (name => e in @:privateAccess Go.nameTypes) {
					exprs.push(macro $v{name} => $e);
					//if (--count <= 0)
					//	break;
				}
				final e = macro $a{exprs};
				//trace(@:privateAccess Lambda.count(Go.nameTypes));
				final cl = macro class TypeInfoData {
					public var names:Map<String,stdgo.internal.reflect.Reflect.GoType> = null;
					public function new() {
						try {
							names = $e;
							//trace(Lambda.count(names));
						}catch(e) {
							trace(e.details());
						}
					}
				}
				Context.defineType(cl);
				sys.io.File.saveContent("TestTypeInfoData.hx","function main() {trace(new TypeInfoData().names);}\n" + new haxe.macro.Printer().printTypeDefinition(cl));
				Sys.command("haxelib run formatter -s TestTypeInfoData.hx");
				//trace("defineType");
			});
	}
	#end

	public static macro function controlFlow(body:Expr) {
		final selectionName = "____select____";
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

		function loop(e:Expr, inLoop:Bool):Expr {
			return macro {
				$e;
				if ($i{exitName})
					${
						inLoop?macro break:macro if (!$i{breakName})
							continue
					};
			}
		}
		func = function(expr:haxe.macro.Expr, inLoop:Bool, scopeIndex:Int):Expr {
			return switch (expr.expr) {
				case EMeta(s, e):
					switch s.name {
						case ":goto":
							macro {
								$i{selectionName} = $e;
								${inLoop ? macro {$i{exitName} = true; break;} : macro continue};
							};
						default:
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex)),
								pos: Context.currentPos(),
							};
					}
				case EWhile(econd, e, normalWhile):
					expr.expr = EWhile(econd, func(e, true, scopeIndex), normalWhile);
					expr = loop(expr, inLoop);
					expr;
				case EFor(it, e):
					expr.expr = EFor(it, func(e, true, scopeIndex));
					expr = loop(expr, inLoop);
					expr;
				case EBlock(exprs):
					scopeIndex++;
					for (i in 0...exprs.length)
						exprs[i] = func(exprs[i], inLoop, scopeIndex);
					expr.expr = EBlock(exprs);
					expr;
				case EIf(econd, eif, eelse):
					expr.expr = EIf(econd, func(eif, inLoop, scopeIndex), eelse == null ? null : func(eelse, inLoop, scopeIndex));
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
					if (str == "Go.cfor") {
						var block = params.pop();
						block = func(block, true, scopeIndex);
						params.push(block);
						expr.expr = ECall(e, params);
						expr = loop(expr, inLoop);
						expr;
					}
					expr;
				default:
					expr;
			}
		}
		body = func(body, false, -1);
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
		for (i in 0...cases.length) {
			switch cases[i].expr.expr {
				case EBlock(exprs):
					final name = i == cases.length - 1 ? macro "" : cases[i + 1].values[0];
					exprs.push(macro $i{selectionName} = $name);
					cases[i].expr.expr = EBlock(exprs);
				default:
			}
		}
		var switchStmt:Expr = {expr: ESwitch(macro $i{selectionName}, cases, null), pos: Context.currentPos()};
		final v:Expr = {expr: EVars(vars), pos: Context.currentPos()};
		final e = macro {
			var $selectionName = "";
			var $exitName = false;
			var $breakName = false;
			$v;
			do {
				$i{exitName} = false;
				$switchStmt;
			} while ($i{selectionName} != "");
		};
		if (ret != null) {
			switch e.expr {
				case EBlock(exprs):
					exprs.push(ret);
					e.expr = EBlock(exprs);
				default:
			}
		}
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
