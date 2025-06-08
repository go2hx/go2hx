package typer;

/*typedef Node = {
	pos:Int
};*/
typedef Expr = Dynamic;
typedef Stmt = Dynamic;
typedef ExprType = Dynamic;
typedef Decl = Dynamic;
typedef Scope = Dynamic;
typedef ChanDir = Int;

typedef PackageType = {
	path:String,
	name:String,
	order:Array<String>,
	files:Array<FileType>,
	typeList:Array<Dynamic>,
	checksum:String,
};

typedef FileType = {
	path:String,
	location:String,
	decls:Array<Decl>,
	doc:GoAst.CommentGroup,
};

enum abstract ObjKind(Int) from Int to Int {
	public final bad = 0; // for error handling
	public final pkg = 1; // package
	public final con = 2; // constant
	public final typ = 3; // type
	public final _var = 4; // variable
	public final fun = 5; // function or method
	public final lbl = 7; // label
}

enum abstract BasicKind(Int) to Int {
	public final invalid_kind = 0;
	public final bool_kind;
	public final int_kind;
	public final int8_kind;
	public final int16_kind;
	public final int32_kind;
	public final int64_kind;
	public final uint_kind;
	public final uint8_kind;
	public final uint16_kind;
	public final uint32_kind;
	public final uint64_kind;
	public final uintptr_kind;
	public final float32_kind;
	public final float64_kind;
	public final complex64_kind;
	public final complex128_kind;
	public final string_kind;
	public final unsafepointer_kind;

	public final untyped_bool_kind;
	public final untyped_int_kind;
	public final untyped_rune_kind;
	public final untyped_float_kind;
	public final untyped_complex_kind;
	public final untyped_string_kind;
	public final untyped_nil_kind;

	@:to
	static function toString(x:Int):String {
		return switch x {
			case invalid_kind:
				"invalid_kind";
			case bool_kind:
				"bool_kind";
			case int_kind:
				"int_kind";
			case int8_kind:
				"int8_kind";
			case int16_kind:
				"int16_kind";
			case int32_kind:
				"int32_kind";
			case int64_kind:
				"int64_kind";
			case uint_kind:
				"uint_kind";
			case uint8_kind:
				"uint8_kind";
			case uint16_kind:
				"uint16_kind";
			case uint32_kind:
				"uint32_kind";
			case uint64_kind:
				"uint64_kind";
			case uintptr_kind:
				"uintptr_kind";
			case float32_kind:
				"float32_kind";
			case float64_kind:
				"float64_kind";
			case complex64_kind:
				"complex64_kind";
			case complex128_kind:
				"complex128_kind";
			case string_kind:
				"string_kind";
			case unsafepointer_kind:
				"unsafepointer_kind";
			case untyped_bool_kind:
				"untyped_bool_kind";
			case untyped_int_kind:
				"untyped_int_kind";
			case untyped_float_kind:
				"untyped_float_kind";
			case untyped_complex_kind:
				"untyped_complex_kind";
			case untyped_string_kind:
				"untyped_string_kind";
			case untyped_nil_kind:
				"untyped_nil_kind";
			default:
				throw 'Unknown BasicKind';
		}
	}
}

enum abstract BasicInfo(Int) from Int to Int {
	public final isBoolean = 1;
	public final isInteger = 2;
	public final isUnsigned = 4;
	public final isFloat = 8;
	public final isComplex = 16;
	public final isString = 32;
	public final isUntyped = 64;
	public final isOrdered = isInteger | isFloat | isString;
	public final isNumeric = isInteger | isFloat | isComplex;
	public final isConstType = isBoolean | isNumeric | isString;
}

typedef Comment = {
	text:String,
	pos:Int,
};

typedef CommentGroup = {
	list:Array<Comment>,
};

typedef Field = {
	doc:CommentGroup,
	names:Array<Ident>,
	type:Expr,
	tag:String,
	comment:CommentGroup,
};

typedef FieldList = {
	opening:Pos,
	list:Array<Field>,
	closing:Pos,
};

typedef BadExpr = {
	// > Node,
	from:Pos,
	to:Pos,
};

typedef Ident = {
	name:String,
	type:ExprType,
	?kind:ObjKind,
	objPath:String,
	typeArgs:Array<ExprType>,
}

typedef Ellipsis = {
	// > Node,
	ellipsis:Pos,
	elt:Expr,
};

typedef BasicLit = {
	// > Node,
	kind:BasicKind,
	token:Token,
	info:BasicInfo,
	value:String,
	type:ExprType,
	basic:Bool,
	raw:Bool,
};

typedef FuncLit = {
	// > Node,
	type:FuncType,
	body:BlockStmt,
};

typedef CompositeLit = {
	// > Node,
	type:Expr,
	exprType:Expr,
	lbrace:Pos,
	elts:Array<Expr>,
	rbrace:Pos,
	incomplete:Bool,
};

typedef ParenExpr = {
	// > Node,
	lparen:Pos,
	x:Expr,
	rparen:Pos,
};

typedef SelectorExpr = {
	// > Node,
	x:Expr,
	sel:Ident,
	recv:ExprType,
	type:ExprType,
};

typedef IndexExpr = {
	// > Node,
	x:Expr,
	lbrack:Pos,
	index:Expr,
	rbrack:Pos,
	type:ExprType,
};

typedef IndexListExpr = {
	x:Expr,
	indices:Array<Expr>,
	lbrack:Pos,
	rbrack:Pos,
	type:ExprType,
}

typedef SliceExpr = {
	// > Node,
	x:Expr,
	lbrack:Pos,
	low:Expr,
	high:Expr,
	max:Expr,
	slice3:Bool,
	rbrack:Pos,
	type:ExprType,
};

typedef TypeAssertExpr = {
	// > Node,
	x:Expr,
	lparen:Pos,
	type:Expr,
	rparen:Pos,
};

typedef CallExpr = {
	// > Node,
	fun:Expr,
	lparen:Pos,
	args:Array<Expr>,
	ellipsis:Pos,
	rparen:Pos,
	type:ExprType,
	objType:ExprType,
	typeArgs:Array<ExprType>,
};

typedef StarExpr = {
	// > Node,
	star:Pos,
	x:Expr,
	type:ExprType,
};

typedef UnaryExpr = {
	// > Node,
	opPos:Pos,
	op:Token,
	x:Expr,
};

typedef BinaryExpr = {
	// > Node,
	x:Expr,
	opPos:Pos,
	op:Token,
	y:Expr,
	type:ExprType,
};

typedef KeyValueExpr = {
	// > Node,
	key:Expr,
	colon:Pos,
	value:Expr,
};

typedef ArrayType = {
	// > Node,
	lbrack:Pos,
	len:Expr,
	elt:Expr,
	type:ExprType,
};

typedef StructType = {
	// > Node,
	struct:Pos,
	fields:FieldList,
	incomplete:Bool,
	type:ExprType,
};

typedef PointerType = {
	elem:ExprType,
};

typedef TypeParamType = {
	name:String,
	constraint:ExprType,
}

typedef FuncType = {
	// > Node,
	func:Pos,
	params:FieldList,
	results:FieldList,
	typeParams:FieldList,
	type:ExprType,
};

typedef InterfaceType = {
	// > Node,
	interfacePos:Pos,
	// interface TODO: turn interface -> inter
	methods:FieldList,
	incomplete:Bool,
	type:ExprType,
};

typedef MapType = {
	// > Node,
	map:Pos,
	key:Expr,
	value:Expr,
	type:ExprType,
};

typedef ChanType = {
	// > Node,
	begin:Pos,
	arrow:Pos,
	dir:ChanDir,
	value:Expr,
	type:ExprType,
};

typedef BadStmt = {
	// > Node,
	from:Pos,
	to:Pos,
};

typedef DeclStmt = {
	// > Node,
	decl:Decl,
};

typedef EmptyStmt = {
	// > Node,
	semicolon:Pos,
	implicit:Bool,
};

typedef LabeledStmt = {
	// > Node,
	label:Ident,
	colon:Pos,
	stmt:Stmt,
};

typedef ExprStmt = {
	// > Node,
	x:Expr,
	end:Int,
	pos:Int,
};

typedef SendStmt = {
	// > Node,
	chan:Expr,
	arrow:Pos,
	value:Expr,
};

typedef IncDecStmt = {
	// > Node,
	x:Expr,
	tokPos:Pos,
	tok:Token,
};

typedef AssignStmt = {
	// > Node,
	lhs:Array<Expr>,
	tokPos:Pos,
	tok:Token,
	rhs:Array<Expr>,
};

typedef GoStmt = {
	// > Node,
	go:Pos,
	call:CallExpr,
};

typedef DeferStmt = {
	// > Node,
	defer:Pos,
	call:CallExpr,
};

typedef ReturnStmt = {
	// > Node,
	returnPos:Pos,
	// return TODO: return -> returnPos
	results:Array<Expr>,
};

typedef BranchStmt = {
	tokPos:Pos,
	tok:Token,
	label:Ident,
};

typedef BlockStmt = {
	lbrace:Pos,
	list:Array<Stmt>,
	rbrace:Pos,
};

typedef IfStmt = {
	ifPos:Pos,
	// if TODO: if -> ifPos
	init:Stmt,
	cond:Expr,
	body:BlockStmt,
	elseStmt:Stmt,
	// else TODO: else -> elseStmt
};

typedef CaseClause = {
	casePos:Pos,
	// case TODO: case -> casePos
	list:Array<Expr>,
	colon:Pos,
	body:Array<Stmt>,
};

typedef SwitchStmt = {
	switchPos:Pos,
	// switch TODO: switch -> switchPos
	init:Stmt,
	tag:Expr,
	body:BlockStmt,
};

typedef TypeSwitchStmt = {
	switchPos:Pos,
	// switch TODO: switch -> switchPos
	init:Stmt,
	assign:Stmt,
	body:BlockStmt,
};

typedef CommClause = {
	casePos:Pos,
	// case TODO: case -> casePos
	comm:Stmt,
	colon:Pos,
	body:Array<Stmt>,
};

typedef SelectStmt = {
	select:Pos,
	body:BlockStmt,
};

typedef ForStmt = {
	forPos:Pos,
	// for TODO: for -> forPos
	init:Stmt,
	cond:Expr,
	post:Stmt,
	body:BlockStmt,
};

typedef RangeStmt = {
	forPos:Pos,
	// for TODO: for -> forPos
	key:Expr,
	value:Expr,
	tokPos:Pos,
	tok:Token,
	x:Expr,
	body:BlockStmt,
};

typedef Spec = Dynamic; // A go interface

typedef ImportSpec = {
	doc:CommentGroup,
	name:String,
	// Ident
	path:String,
	comment:CommentGroup,
	endPos:Pos,
};

typedef ValueSpec = {
	doc:CommentGroup,
	names:Array<Ident>,
	type:Expr,
	values:Array<Expr>,
	comment:CommentGroup,
	pos:Int,
	end:Int,
};

typedef ImplicitType = {
	name:String,
	path:String,
};

typedef TypeSpec = {
	doc:CommentGroup,
	name:Ident,
	assign:Pos,
	type:Expr,
	comment:CommentGroup,
	params:FieldList,
	methods:Array<{
		name:String,
		type:ExprType,
		recv:ExprType,
		index:Array<Int>
	}>,
	pos:Int,
	end:Int,
};

typedef BadDecl = {
	from:Pos,
	to:Pos,
};

typedef GenDecl = {
	doc:CommentGroup,
	tokPos:Pos,
	tok:Token,
	lparen:Pos,
	specs:Array<Spec>,
	rparen:Pos,
};

typedef FuncDecl = {
	doc:CommentGroup,
	recv:FieldList,
	typeParams:FieldList,
	name:Ident,
	type:FuncType,
	body:BlockStmt,
	pos:Int,
	end:Int,
};

typedef Object = {
	kind:ObjKind,
	name:String,
	decl:Any,
	data:Any,
	type:Any,
};

typedef Pos = Int;

enum abstract Token(String) {
	public final ILLEGAL = "ILLEGAL";
	public final EOF = "EOF";
	public final COMMENT = "COMMENT";
	public final literal_beg = "";
	public final IDENT = "IDENT";
	public final INT = "INT";
	public final FLOAT = "FLOAT";
	public final IMAG = "IMAG";
	public final CHAR = "CHAR";
	public final STRING = "STRING";
	public final literal_end = "";
	public final operator_beg = "";
	public final ADD = "+";
	public final SUB = "-";
	public final MUL = "*";
	public final QUO = "/";
	public final REM = "%";
	public final AND = "&";
	public final OR = "|";
	public final XOR = "^";
	public final SHL = "<<";
	public final SHR = ">>";
	public final AND_NOT = "&^";
	public final ADD_ASSIGN = "+=";
	public final SUB_ASSIGN = "-=";
	public final MUL_ASSIGN = "*=";
	public final QUO_ASSIGN = "/=";
	public final REM_ASSIGN = "%=";
	public final AND_ASSIGN = "&=";
	public final OR_ASSIGN = "|=";
	public final XOR_ASSIGN = "^=";
	public final SHL_ASSIGN = "<<=";
	public final SHR_ASSIGN = ">>=";
	public final AND_NOT_ASSIGN = "&^=";
	public final LAND = "&&";
	public final LOR = "||";
	public final ARROW = "<-";
	public final INC = "++";
	public final DEC = "--";
	public final EQL = "==";
	public final LSS = "<";
	public final GTR = ">";
	public final ASSIGN = "=";
	public final NOT = "!";
	public final NEQ = "!=";
	public final LEQ = "<=";
	public final GEQ = ">=";
	public final DEFINE = ":=";
	public final ELLIPSIS = "...";
	public final LPAREN = "(";
	public final LBRACK = "[";
	public final LBRACE = "{";
	public final COMMA = ",";
	public final PERIOD = ".";
	public final RPAREN = ")";
	public final RBRACK = "]";
	public final RBRACE = "}";
	public final SEMICOLON = ";";
	public final COLON = ":";
	public final operator_end = "";
	public final keyword_beg = "";
	public final BREAK = "break";
	public final CASE = "case";
	public final CHAN = "chan";
	public final CONST = "const";
	public final CONTINUE = "continue";
	public final DEFAULT = "default";
	public final DEFER = "defer";
	public final ELSE = "else";
	public final FALLTHROUGH = "fallthrough";
	public final FOR = "for";
	public final FUNC = "func";
	public final GO = "go";
	public final GOTO = "goto";
	public final IF = "if";
	public final IMPORT = "import";
	public final INTERFACE = "interface";
	public final MAP = "map";
	public final PACKAGE = "package";
	public final RANGE = "range";
	public final RETURN = "return";
	public final SELECT = "select";
	public final STRUCT = "struct";
	public final SWITCH = "switch";
	public final TYPE = "type";
	public final VAR = "var";
	public final keyword_end = "";
	public final TIDLE = "|";

	public final TILDE = "~";

	@:from private static function fromInt(index:Int):Token {
		return switch index {
			case 0: Token.ILLEGAL;
			case 1: Token.EOF;
			case 2: Token.COMMENT;
			case 3: Token.literal_beg;
			case 4: Token.IDENT;
			case 5: Token.INT;
			case 6: Token.FLOAT;
			case 7: Token.IMAG;
			case 8: Token.CHAR;
			case 9: Token.STRING;
			case 10: Token.literal_end;
			case 11: Token.operator_beg;
			case 12: Token.AND;
			case 13: Token.SUB;
			case 14: Token.MUL;
			case 15: Token.QUO;
			case 16: Token.REM;
			case 17: Token.AND;
			case 18: Token.OR;
			case 19: Token.XOR;
			case 20: Token.SHL;
			case 21: Token.SHR;
			case 22: Token.AND_NOT;
			case 23: Token.ADD_ASSIGN;
			case 24: Token.SUB_ASSIGN;
			case 25: Token.MUL_ASSIGN;
			case 26: Token.QUO_ASSIGN;
			case 27: Token.REM_ASSIGN;
			case 28: Token.AND_ASSIGN;
			case 29: Token.OR_ASSIGN;
			case 30: Token.XOR_ASSIGN;
			case 31: Token.SHL_ASSIGN;
			case 32: Token.SHR_ASSIGN;
			case 33: Token.AND_NOT_ASSIGN;
			case 34: Token.LAND;
			case 35: Token.LOR;
			case 36: Token.ARROW;
			case 37: Token.INC;
			case 38: Token.DEC;
			case 39: Token.EQL;
			case 40: Token.LSS;
			case 41: Token.GTR;
			case 42: Token.ASSIGN;
			case 43: Token.NOT;
			case 44: Token.NEQ;
			case 45: Token.LEQ;
			case 46: Token.GEQ;
			case 47: Token.DEFINE;
			case 48: Token.ELLIPSIS;
			case 49: Token.LPAREN;
			case 50: Token.LBRACK;
			case 51: Token.LBRACE;
			case 52: Token.COMMA;
			case 53: Token.PERIOD;
			case 54: Token.RPAREN;
			case 55: Token.RBRACK;
			case 56: Token.RBRACE;
			case 57: Token.SEMICOLON;
			case 58: Token.COLON;
			case 59: Token.operator_end;
			case 60: Token.keyword_beg;
			case 61: Token.BREAK;
			case 62: Token.CASE;
			case 63: Token.CHAN;
			case 64: Token.CONST;
			case 65: Token.CONTINUE;
			case 66: Token.DEFAULT;
			case 67: Token.DEFER;
			case 68: Token.ELSE;
			case 69: Token.FALLTHROUGH;
			case 70: Token.FOR;
			case 71: Token.FUNC;
			case 72: Token.GO;
			case 73: Token.GOTO;
			case 74: Token.IF;
			case 75: Token.IMPORT;
			case 76: Token.INTERFACE;
			case 77: Token.MAP;
			case 78: Token.PACKAGE;
			case 79: Token.RANGE;
			case 80: Token.RETURN;
			case 81: Token.SELECT;
			case 82: Token.STRUCT;
			case 83: Token.SWITCH;
			case 84: Token.TYPE;
			case 85: Token.VAR;
			case 86: Token.keyword_end;
			case 87: Token.TIDLE;
			default: null;
		}
	}
}

function precedence(op:Token):Int {
	switch op {
		case LOR:
			return 1;
		case LAND:
			return 2;
		case EQL, NEQ, LSS, LEQ, GTR, GEQ:
			return 3;
		case ADD, SUB, OR, XOR:
			return 4;
		case MUL, QUO, REM, SHL, SHR, AND, AND_NOT:
			return 5;
		default:
			return 0;
	}
}

function isClass(x:GoAst.Expr, info:Info):Bool {
	return switch x.id {
		case "Ident":
			info.renameIdents[x.name] == info.classNames[x.name];
		case "ParenExpr", "StarExpr":
			isClass(x.x, info);
		default:
			false;
	}
}

function isFunction(expr:GoAst.Expr, info:Info):Bool {
	expr = escapeParensRaw(expr);
	final ft = typeof(expr, info, false);
	final sig = isSignature(ft);
	var kind:GoAst.ObjKind = expr.id == "SelectorExpr" ? expr.sel.kind : expr.kind;
	var notFunction = kind == GoAst.ObjKind.typ || (!sig && !isInvalid(ft) && expr.id != "CallExpr");
	if (!notFunction && sig)
		notFunction = expr.id == "ParenExpr" && expr.x.id == "FuncType" || expr.id == "FuncType";
	return !notFunction;
}

function escapeParensRaw(expr:GoAst.Expr):GoAst.Expr {
	return switch expr.id {
		case "ParenExpr":
			escapeParensRaw(expr.x);
		default:
			expr;
	}
}

function castTranslate(obj:GoAst.Expr, e:Expr, info:Info):MacroExpr {
	return switch obj.id {
		case "TypeAssertExpr":
			var obj:GoAst.TypeAssertExpr = obj;
			final t = typeof(obj.type, info, false);
			var value = typer.exprs.Expr.defaultValue(t, info);
			macro try {
				{_0: $e, _1: true};
			} catch (_) {
				{_0: $value, _1: false};
			}
		case "UnaryExpr":
			var obj:GoAst.UnaryExpr = obj;
			var x = typer.exprs.Expr.typeExpr(obj.x, info);
			macro $x.__smartGet__();
		case "IndexExpr":
			var obj:GoAst.IndexExpr = obj;
			var index = typer.exprs.Expr.typeExpr(obj.index, info);
			var x = typer.exprs.Expr.typeExpr(obj.x, info);
			final ut = getUnderlying(typeof(obj.x, info, false));
			switch ut {
				case mapType(_.get() => var keyType, _):
					// something strange is not working here try assign translate instead
					index = typer.exprs.Expr.explicitConversion(typeof(obj.index, info, false), keyType, index, info);
				// index = checkType(index, toComplexType(keyType, info), typeof(obj.index, info, false), keyType, info);
				default:
			}
			final t = getUnderlying(typeof(obj, info, false));
			final value = switch t {
				case tuple(_, _.get() => vars):
					typer.exprs.Expr.defaultValue(vars[0], info);
				default:
					macro null;
			}
			macro($x != null && $x.__exists__($index) ? {_0: $x[$index], _1: true} : {_0: $value, _1: false});
		default:
			null;
	}
}
