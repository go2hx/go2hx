package typer.stmts;

function typeRangeStmt(stmt:GoAst.RangeStmt, info:Info):MacroExpr { // for stmt
	var x = typer.exprs.Expr.typeExpr(stmt.x, info);
	var xType = typeof(stmt.x, info, false);
	var isChan = false;
	var isArray = false;
	switch getUnderlying(xType) {
		case chanType(_, _):
			isChan = true;
		case arrayType(_, _):
			isArray = true;
		default:
	}
	x = HaxeAst.destructureExpr(x, xType).x;
	final assign = stmt.tok == ASSIGN;
	var key = null;
	var value = null;
	if (!assign) {
		if (stmt.key != null && stmt.key.id == "Ident") {
			key = macro $i{typer.exprs.Ident.nameIdent(stmt.key.name, false, true, info)};
		}
		if (stmt.value != null && stmt.value.id == "Ident") {
			value = macro $i{typer.exprs.Ident.nameIdent(stmt.value.name, false, true, info)};
		}
	}

	if (key == null)
		key = stmt.key == null ? macro _ : typer.exprs.Expr.typeExpr(stmt.key, info); // iterator int
	if (value == null)
		value = stmt.value == null ? macro _ : typer.exprs.Expr.typeExpr(stmt.value, info); // value of x[key]
	var body = typer.stmts.Block.typeBlockStmt(stmt.body, info, false);
	// both key and value
	if (assign) { // non var
		switch body.expr {
			case EBlock(exprs):
				if (stmt.value != null && (stmt.value.id != "Ident" || stmt.value.name != "_")) {
					value = HaxeAst.removeCoalAndCheckType(value);
					exprs.unshift(macro $value = __value__);
				}
				if (stmt.key != null && (stmt.key.id != "Ident" || stmt.key.name != "_")) {
					key = HaxeAst.removeCoalAndCheckType(key);
					exprs.unshift(macro $key = __key__);
				}
			default:
		}
	}
	x = typer.exprs.Expr.toGoType(x);
	if (assign) {
		key = macro __key__;
		value = macro __value__;
	}
	if (isChan) {
		return macro for ($key in $x) $body;
	}
	if (isArray) {
		return macro for ($key => $value in $x.__copy__()) $body;
	}
	return macro if ($x != null) for ($key => $value in $x) $body;
}
