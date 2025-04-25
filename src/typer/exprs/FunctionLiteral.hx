package typer.exprs;

function typeFuncLit(expr:GoAst.FuncLit, info:Info):ExprDef {
	final info = info.copy();
	info.global.gotoSystem = false;
	var args = typer.decls.Function.typeFieldListArgs(expr.type.params, info);
	var ret = typer.decls.Function.typeFieldListReturn(expr.type.results, info, true);
	final prevDeferBool = info.global.deferBool;
	final prevRecoverBool = info.global.recoverBool;
	final prevGotoSystem = info.global.gotoSystem;
	info.global.deferBool = false;
	info.global.recoverBool = false;
	info.global.gotoSystem = false;
	var block = typer.stmts.Block.typeBlockStmt(expr.body, info, true);
	block = typer.decls.Function.argsTranslate(args, toExpr(block), expr.type.params, info, null).expr;
	info.global.deferBool = prevDeferBool;
	info.global.recoverBool = prevRecoverBool;
	info.global.gotoSystem = prevGotoSystem;
	// allows multiple nested values
	return EFunction(FAnonymous, {
		ret: ret,
		args: args,
		expr: block != null ? toExpr(block) : null,
	});
}
