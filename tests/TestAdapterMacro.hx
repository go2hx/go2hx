import _testadapter.data.TestPositions;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.PositionTools;

using StringTools;

macro function assert(suiteName:Expr, testName:Expr, cond:Expr, ?posExpr:Expr) {
	switch posExpr.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") posExpr = macro 0;
				case _:
			}
		case _:
	}
	var cl = Context.getLocalClass().get();
	var name = cl.name;
	final fieldsName = "_Fields_";
	if (StringTools.endsWith(name, fieldsName))
		name = name.substr(0, name.length - fieldsName.length);
	var fileName = name;
	var pack = cl.pack;
	if (pack.length > 1) { // built only for modules
		pack.pop();
		fileName = pack.join(".") + "." + fileName;
	}

	final pos = Context.currentPos();
	final line = haxe.macro.PositionTools.toLocation(pos).range.start.line - 1;
	final line2 = haxe.macro.PositionTools.toLocation(cl.pos).range.start.line - 1;
	final fileName = Context.getPosInfos(pos).file;
	var suiteName = suiteName; // macro $v{Context.getLocalMethod()};
	final add = macro untyped results.add(SuiteNameAndPos($suiteName, $v{fileName}, $v{line2}), TestNameAndPos($testName, $v{fileName}, $v{line} + $posExpr),
		0, $cond ? Success : Failure, "", null);
	return add;
}
