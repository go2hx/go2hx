package typer.stmts;

function typeForStmt(stmt:GoAst.ForStmt, info:Info):MacroExpr {
	final init = typer.stmts.Stmt.typeStmt(stmt.init, info);
	final cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typer.exprs.Expr.typeExpr(stmt.cond, info);
	var body = typer.stmts.Block.typeBlockStmt(stmt.body, info, false);

	final expr = if (stmt.post != null) {
		var post = typer.stmts.Stmt.typeStmt(stmt.post, info);
		body = cforPostContinue(post, body);
		macro while ($cond) {
			@:mergeBlock $body;
			$post;
		};
	} else {
		macro while ($cond)
			$body;
	}
	return if (init != null) {
		macro {
			$init;
			$expr;
		};
	} else {
		expr;
	}
}

function cforPostContinue(post:MacroExpr, e:Expr):MacroExpr {
	return switch e.expr {
		case EMeta({pos: _, name: ":fallthrough", params: null}, _):
			return e;
		case EFor(_, _), EWhile(_, _, _):
			return e;
		case EContinue:
			macro {
				$post;
				$e;
			};
		default:
			HaxeAst.mapExprWithData(e, post, cforPostContinue);
	}
	return e;
}
