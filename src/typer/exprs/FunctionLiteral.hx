package typer.exprs;

function typeFuncLit(expr:GoAst.FuncLit, info:Info):MacroExpr {
	final info = info.copy();
	info.global.gotoSystem = false;
	final args = typer.decls.Function.typeFieldListArgs(expr.type.params, info);
	final ret = typer.decls.Function.typeFieldListReturn(expr.type.results, info, true);
	// defer stmt
	// label stmt = goto system
	// Call expr recover

	final prevDeferBool = info.global.deferBool;
	final prevGotoSystem = info.global.gotoSystem;
	info.global.deferBool = false;
	info.global.gotoSystem = false;
	var block = typer.stmts.Block.typeBlockStmt(expr.body, info, true);
	block = typer.decls.Function.argsTranslate(args, block, expr.type.params, info, null);
	info.global.deferBool = prevDeferBool;
	info.global.gotoSystem = prevGotoSystem;
	// allows multiple nested values
	return toExpr(EFunction(FAnonymous, {
		ret: ret,
		args: args,
		expr: block != null ? block : null,
	}));
}
