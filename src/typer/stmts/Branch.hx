package typer.stmts;

/**
 * branch statements translated into equivalent Haxe Exprs
 * a branch statement for example:
 * continue
 * break
 * fallthrough (unique to Go)
 * goto (unique to Go)
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Continue_statements
 * @see https://go.dev/ref/spec#BreakStmt
 * @see https://go.dev/ref/spec#Fallthrough_statements
 * @see https://go.dev/ref/spec#Goto_statements
 */
function typeBranchStmt(stmt:GoAst.BranchStmt, info:Info):MacroExpr {
	return switch stmt.tok {
		case CONTINUE:
			if (stmt.label != null) {
				final label = makeExpr(stmt.label.name);
				macro @:jump($label) continue;
			} else {
				macro continue;
			}
		case BREAK:
			if (stmt.label != null) {
				final label = makeExpr(stmt.label.name);
				macro @:jump($label) break;
			} else {
				macro break;
			}
		case GOTO:
			final name = HaxeAst.makeString(stmt.label.name);
			return HaxeAst.typeGoto(name);
		case FALLTHROUGH:
			final e = info.switchTag;
			final index = makeExpr(info.switchIndex + 1);
			macro @:fallthrough {
				__switchIndex__ = $index;
				__run__ = true;
				continue;
			};
		default:
			macro @:unknown_branch_stmt break;
	}
}
