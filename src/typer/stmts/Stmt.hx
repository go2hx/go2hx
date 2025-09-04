package typer.stmts;
/**
 * statements switch
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Statements
 */
function typeStmt(stmt:GoAst.Stmt, info:Info):MacroExpr {
	if (stmt == null)
		return null;
	var def = switch stmt.id {
		case "ReturnStmt": Return.typeReturnStmt(stmt, info);
		case "IfStmt": If.typeIfStmt(stmt, info);
		case "ExprStmt": ExprStmt.typeExprStmt(stmt, info); // *
		case "AssignStmt": Assign.typeAssignStmt(stmt, info); // *
		case "ForStmt": For.typeForStmt(stmt, info);
		case "SwitchStmt": Switch.typeSwitchStmt(stmt, info); // TODO: cleanup
		case "TypeSwitchStmt": TypeSwitch.typeTypeSwitchStmt(stmt, info);
		case "DeclStmt": Decl.typeDeclStmt(stmt, info);
		case "RangeStmt": Range.typeRangeStmt(stmt, info);
		case "DeferStmt": Defer.typeDeferStmt(stmt, info);
		case "IncDecStmt": IncDec.typeIncDecStmt(stmt, info);
		case "LabeledStmt": Label.typeLabeledStmt(stmt, info);
		case "BlockStmt": Block.typeBlockStmt(stmt, info, false);
		case "GoStmt": Go.typeGoStmt(stmt, info);
		case "BranchStmt": Branch.typeBranchStmt(stmt, info);
		case "SelectStmt": Select.typeSelectStmt(stmt, info);
		case "SendStmt": Send.typeSendStmt(stmt, info);
		case "EmptyStmt": Empty.typeEmptyStmt();
		case "BadStmt": Bad.typeBadStmt(info);
		default: throw info.panic() + "unknown stmt id: " + stmt.id;
	}
	if (def == null)
		throw info.panic() + "stmt null: " + stmt.id;
	return def;
}
