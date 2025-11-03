package typer.stmts;
/**
 * defer statement translated
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Defer_statements
 */
function typeDeferStmt(stmt:GoAst.DeferStmt, info:Info):MacroExpr {
	info.global.deferBool = true;
	var exprs:Array<Expr> = [];
	final localIdents = [];
	// copy over
	final call:GoAst.CallExpr = {
		fun: stmt.call.fun,
		lparen: stmt.call.lparen,
		args: stmt.call.args.copy(),
		ellipsis: stmt.call.ellipsis,
		rparen: stmt.call.rparen,
		type: stmt.call.type,
		objType: stmt.call.objType,
		typeArgs: stmt.call.typeArgs,
	};
	for (i in 0...stmt.call.args.length) {
		var arg = typer.exprs.Expr.typeExpr(call.args[i], info);
		var name = "_a" + i;
		localIdents.push(name);
		final e = macro var $name = $arg;
		exprs.push(e);
		// trace(call.args[i].type);
		call.args[i] = {id: "Ident", name: 'a$i', type: call.args[i]}; // switch out call arguments
	}
	info.localIdents = info.localIdents.concat(localIdents);
	// otherwise its Ident, Selector etc
	var call = typer.exprs.Call.typeCallExpr(call, info);
	switch call.expr {
		case ECall(e, params):
			exprs.push(macro final __f__ = $e);
			call = macro __f__($a{params});
		default:
	}

	info.localIdents = info.localIdents.slice(0, info.localIdents.length - localIdents.length);
	var e = macro __deferstack__.unshift({ran: false, f: () -> $call});
	return macro $b{exprs.concat([e])};
}
