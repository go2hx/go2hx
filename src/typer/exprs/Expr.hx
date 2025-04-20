package typer.exprs;

function typeExpr(expr:Dynamic, info:Info):Expr {

	if (expr == null)
		return null;
	var def = switch expr.id {
		case "Ident": Ident.typeIdent(expr, info, false);
		case "CallExpr": Call.typeCallExpr(expr, info);
		case "BasicLit": BasicLit.typeBasicLit(expr, info);
		case "UnaryExpr": Unary.typeUnaryExpr(expr, info);
		case "SelectorExpr": Selector.typeSelectorExpr(expr, info);
		case "BinaryExpr": Binary.typeBinaryExpr(expr, info);
		case "FuncLit": FunctionLiteral.typeFuncLit(expr, info);
		case "CompositeLit": CompositeLiteral.typeCompositeLit(expr, info);
		case "SliceExpr": Slice.typeSliceExpr(expr, info);
		case "TypeAssertExpr": Assert.typeAssertExpr(expr, info);
		case "IndexExpr": Index.typeIndexExpr(expr, info);
		case "StarExpr": Star.typeStarExpr(expr, info);
		case "ParenExpr": Parenthesis.typeParenExpr(expr, info);
		case "Ellipsis": Ellipsis.typeEllipsis(expr, info);
		case "MapType": MapType.typeMapType(expr, info);
		case "InterfaceType": InterfaceType.typeInterfaceType(expr, info);
		case "IndexListExpr": IndexList.typeIndexListExpr(expr, info);
		case "BadExpr": Bad.typeBad(expr, info);
		default:
			trace("unknown expr id: " + expr.id);
			null;
			// (macro throw "unknown expr").expr;
	};
	if (def == null)
		throw info.panic() + "expr null: " + expr.id;
	return toExpr(def);
} 