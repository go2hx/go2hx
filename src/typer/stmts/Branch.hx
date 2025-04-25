package typer.stmts;

function typeBranchStmt(stmt:GoAst.BranchStmt, info:Info):ExprDef {

	return switch stmt.tok {
		case CONTINUE:
			if (stmt.label != null) {
				final label = makeExpr(stmt.label.name);
				(macro @:jump($label) continue).expr;
			} else {
				EContinue;
			}
		case BREAK:
			if (stmt.label != null) {
				final label = makeExpr(stmt.label.name);
				(macro @:jump($label) break).expr;
			} else {
				EBreak;
			}
		case GOTO:
			final name = makeString(stmt.label.name);
			return HaxeAst.typeGoto(name).expr;
		case FALLTHROUGH:
			final e = info.switchTag;
			final index = makeExpr(info.switchIndex + 1);
			(macro @:fallthrough {
				__switchIndex__ = $index;
				__run__ = true;
				continue;
			}).expr;
		default:
			(macro @:unknown_branch_stmt break).expr;
	}
}