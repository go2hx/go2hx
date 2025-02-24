/**
	For of dts2hx (@haxiomic) Fork of hxargs by Simon Krajewski (@simn)
	Fork: https://github.com/haxiomic/dts2hx/blob/master/src/hxargs/Args.hx
	Original: https://github.com/Simn/hxargs
*/

package;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.MacroStringTools;

using StringTools;
using haxe.macro.Tools;

typedef ArgHandler = {
	var options:Array<{
		flags:Array<String>,
		args:Array<{
			name:String,
			type:Null<String>,
			value:Null<String>,
			opt:Bool,
		}>,
		doc:Null<String>
	}>;
	function parse(args:Array<Dynamic>):Void;
}

class Args {
	macro static public function generate(definition:Expr, ?interactive:Bool = false) {
		var p = Context.currentPos();
		var el = switch (definition.expr) {
			case EArrayDecl(el): el;
			case _: Context.error("Command mapping expected", p);
		}

		var unknownArgCallback = macro null; // throw "Unknown command: " + arg;

		var cases = [];

		function addCase(cmds:Expr, action) {
			var args = [];
			var fArgs = switch (action.expr) {
				case EFunction(name, func):
					for (i in 0...func.args.length) {
						var e = macro __args[__index + $v{i}];
						var e = switch [func.args[i].type, func.args[i].value] {
							case [null, null]: e;
							case [TPath({name: "String"}), _] | [null, macro $v{(_ : String)}]: e;
							case [TPath({name: "Int"}), _] | [null, macro $v{(_ : Int)}]: macro Std.parseInt($e);
							case [TPath({name: "Float"}), _] | [null, macro $v{(_ : Float)}]: macro Std.parseFloat($e);
							case [TPath({name: "Bool"}), _] | [null, (macro true) | (macro false)]: macro $e == "true" ? true : false;
							case [t, _]: Context.error('Unsupported argument type: $t', action.pos);
						}
						args.push(e);
					}
					func.args;
				case _: Context.error("Function expected", action.pos);
			}
			var doc:String = null;
			cmds = switch (cmds) {
				case macro @doc($v{(s : String)}) $e:
					doc = s;
					e;
				case _: cmds;
			}
			var cmds = switch (cmds.expr) {
				case EArrayDecl(el):
					for (e in el) {
						switch (e.expr) {
							case EConst(CString(_)):
							case _: Context.error("String expected", e.pos);
						}
					}
					el;
				case EConst(CIdent("_")):
					unknownArgCallback = macro $action(arg);
					return;
				case EConst(CString(_)): [cmds];
				case _: Context.error("[commands] or command expected", cmds.pos);
			}

			var e = if (!interactive) macro {
				if (__index + $v{fArgs.length} > __args.length) {
					if (!$a{
						fArgs.map(function(arg) return macro $v{
							arg.opt
							|| arg.value != null})
					}
						[__args.length - 1])
						throw "Not enough arguments: " + __args[__index - 1] + " expects " + $v{fArgs.length};
				}
				${action}($a{args});
				__index += $v{fArgs.length};
			} else macro {
				var __argInfo = $a{
					fArgs.map(function(arg) {
						var arg = {
							name: arg.name.replace("_", " "),
							type: arg.type,
							opt: arg.opt || arg.value != null,
							value: macro $v{arg.value == null ? null : arg.value.getValue()}
						}
						return macro $v{arg};
					})
				};
				while (__index + $v{fArgs.length} > __args.length) {
					var currentArg = __argInfo[__args.length - 1];
					Sys.print(currentArg.name
						+ (currentArg.value != null ? " (default = " + currentArg.value + ")" : currentArg.opt ? " (optional)" : "")
						+ ": ");
					var s = Sys.stdin().readLine();
					if (s == "") {
						if (currentArg.opt) {
							__args.push(currentArg.value);
						} else {
							Sys.println("Cannot skip non-optional argument " + currentArg.name);
						}
					} else {
						__args.push(s);
					}
				}
				${action}($a{args});
				__index += $v{fArgs.length};
			}
			cases.push({
				builtIn: false,
				values: cmds,
				guard: null,
				doc: doc,
				args: fArgs,
				expr: e
			});
		}

		for (e in el) {
			switch (e.expr) {
				case EBinop(OpArrow, cmds, action):
					addCase(cmds, action);
				case _:
					Context.error("Command mapping expected", e.pos);
			}
		}

		cases.push({
			builtIn: true,
			values: [macro arg],
			guard: null,
			doc: null,
			args: [],
			expr: unknownArgCallback
		});

		var eswitch = {
			expr: ESwitch(macro __args[__index++], cases, null),
			pos: p
		};

		return macro {
			options: $a{
				cases.filter(c -> !c.builtIn).map(c -> macro {
					flags: $v{
						c.values.map(v -> switch v.expr {
							case EConst(CString(s)), EConst(CIdent(s)): s;
							default: throw 'Unhandled expression';
						})
					},
					args: $v{
						c.args.map(a -> {
							type: a.type != null ? a.type.toString() : null,
							name: a.name,
							value: a.value != null ? Std.string(a.value.getValue()) : null,
							opt: a.opt == null ? false : a.opt,
						})
					},
					doc: ${c.doc != null ? MacroStringTools.formatString(c.doc, p) : macro $v{c.doc}}
				})
			},
			parse: function(__args:Array<Dynamic>) {
				var __index = 0;
				while (__index < __args.length) {
					$eswitch;
				}
			}
		}
	}
}
