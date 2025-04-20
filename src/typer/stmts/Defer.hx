package typer.stmts;

function typeDeferStmt(stmt:GoAst.DeferStmt, info:Info):ExprDef {

	info.global.deferBool = true;
	var exprs:Array<Expr> = [];
	final localIdents = [];
	for (i in 0...stmt.call.args.length) {
		var arg = typer.exprs.Expr.typeExpr(stmt.call.args[i], info);
		var name = "_a" + i;
		localIdents.push(name);
		exprs.push(macro var $name = $arg);
		stmt.call.args[i] = {id: "Ident", name: 'a$i', type: stmt.call.args[i].type}; // switch out call arguments
	}
	info.localIdents = info.localIdents.concat(localIdents);
	// otherwise its Ident, Selector etc
	var call = toExpr(typer.exprs.Call.typeCallExpr(stmt.call, info));
	switch call.expr {
		case ECall(e, params):
			exprs.push(macro final __f__ = $e);
			call = macro __f__($a{params});
		default:
	}

	info.localIdents = info.localIdents.slice(0, info.localIdents.length - localIdents.length);
	var e = macro __deferstack__.unshift({ran: false, f: () -> $call});
	return EBlock(exprs.concat([e]));
} 