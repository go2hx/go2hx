package;

/*typedef Node = {
	pos:Int
};*/

typedef Expr = Dynamic;
typedef Stmt = Dynamic;
typedef Decl = Dynamic;
typedef Scope = Dynamic;
typedef ObjKind = Int;
typedef ChanDir = Int;

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
	tag:BasicLit,
	comment:CommentGroup,
};

typedef FieldList = {
	opening:Pos,
	list:Array<Field>,
	closing:Pos,
};

typedef BadExpr = {
	//> Node,
	from:Pos,
	to:Pos,
};
typedef Ident = {
	name:String,
	type:Expr,
}

typedef Ellipsis = {
	//> Node,
	ellipsis:Pos,
	elt:Expr,
};

typedef BasicLit = {
	//> Node,
	valuePos:Pos,
	kind:Token,
	value:Dynamic,
};

typedef FuncLit = {
	//> Node,
	type:FuncType,
	body:BlockStmt,
};

typedef CompositeLit = {
	//> Node,
	type:Expr,
	lbrace:Pos,
	elts:Array<Expr>,
	rbrace:Pos,
	incomplete:Bool,
};

typedef ParenExpr = {
	//> Node,
	lparen:Pos,
	x:Expr,
	rparen:Pos,
};

typedef SelectorExpr = {
	//> Node,
	x:Expr,
	sel:Ident,
};

typedef IndexExpr = {
	//> Node,
	x:Expr,
	lbrack:Pos,
	index:Expr,
	rbrack:Pos,
};

typedef SliceExpr = {
	//> Node,
	x:Expr,
	lbrack:Pos,
	low:Expr,
	high:Expr,
	max:Expr,
	slice3:Bool,
	rbrack:Pos,
};

typedef TypeAssertExpr = {
	//> Node,
	x:Expr,
	lparen:Pos,
	type:Expr,
	rparen:Pos,
};

typedef CallExpr = {
	//> Node,
	fun:Expr,
	lparen:Pos,
	args:Array<Expr>,
	ellipsis:Pos,
	rparen:Pos,
};

typedef StarExpr = {
	//> Node,
	star:Pos,
	x:Expr,
};

typedef UnaryExpr = {
	//> Node,
	opPos:Pos,
	op:Token,
	x:Expr,
};

typedef BinaryExpr = {
	//> Node,
	x:Expr,
	opPos:Pos,
	op:Token,
	y:Expr,
	type:Dynamic,
};

typedef KeyValueExpr = {
	//> Node,
	key:Expr,
	colon:Pos,
	value:Expr,
};

typedef ArrayType = {
	//> Node,
	lbrack:Pos,
	len:Expr,
	elt:Expr,
};

typedef StructType = {
	//> Node,
	struct:Pos,
	fields:FieldList,
	incomplete:Bool,
};

typedef FuncType = {
	//> Node,
	func:Pos,
	params:FieldList,
	results:FieldList,
};

typedef InterfaceType = {
	//> Node,
	interfacePos:Pos,
	// interface TODO: turn interface -> inter
	methods:FieldList,
	incomplete:Bool,
};

typedef MapType = {
	//> Node,
	map:Pos,
	key:Expr,
	value:Expr,
};

typedef ChanType = {
	//> Node,
	begin:Pos,
	arrow:Pos,
	dir:ChanDir,
	value:Expr,
};

typedef BadStmt = {
	//> Node,
	from:Pos,
	to:Pos,
};

typedef DeclStmt = {
	//> Node,
	decl:Decl,
};

typedef EmptyStmt = {
	//> Node,
	semicolon:Pos,
	implicit:Bool,
};

typedef LabeledStmt = {
	//> Node,
	label:Ident,
	colon:Pos,
	stmt:Stmt,
};

typedef ExprStmt = {
	//> Node,
	x:Expr,
};

typedef SendStmt = {
	//> Node,
	chan:Expr,
	arrow:Pos,
	value:Expr,
};

typedef IncDecStmt = {
	//> Node,
	x:Expr,
	tokPos:Pos,
	tok:Token,
};

typedef AssignStmt = {
	//> Node,
	lhs:Array<Expr>,
	tokPos:Pos,
	tok:Token,
	rhs:Array<Expr>,
	type:Dynamic,
};

typedef GoStmt = {
	//> Node,
	go:Pos,
	call:CallExpr,
};

typedef DeferStmt = {
	//> Node,
	defer:Pos,
	call:CallExpr,
};

typedef ReturnStmt = {
	//> Node,
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
	name:Ident, //Ident
	path:BasicLit,
	comment:CommentGroup,
	endPos:Pos,
};

typedef ValueSpec = {
	doc:CommentGroup,
	names:Array<Ident>,
	type:Expr,
	values:Array<Expr>,
	comment:CommentGroup,
};

typedef TypeSpec = {
	doc:CommentGroup,
	name:Ident,
	assign:Pos,
	type:Expr,
	comment:CommentGroup,
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
	name:Ident,
	type:FuncType,
	body:BlockStmt,
};

typedef Object = {
	kind:ObjKind,
	name:String,
	decl:Any,
	data:Any,
	type:Any,
};

typedef Position = {};
typedef Pos = {
	string:String,
	noPos:Bool,
}

@:enum abstract Token(String) {
	public var ILLEGAL = "ILLEGAL";
	public var EOF = "EOF";
	public var COMMENT = "COMMENT";
	public var literal_beg = "";
	public var IDENT = "IDENT";
	public var INT = "INT";
	public var FLOAT = "FLOAT";
	public var IMAG = "IMAG";
	public var CHAR = "CHAR";
	public var STRING = "STRING";
	public var literal_end = "";
	public var operator_beg = "";
	public var ADD = "+";
	public var SUB = "-";
	public var MUL = "*";
	public var QUO = "/";
	public var REM = "%";
	public var AND = "&";
	public var OR = "|";
	public var XOR = "^";
	public var SHL = "<<";
	public var SHR = ">>";
	public var AND_NOT = "&^";
	public var ADD_ASSIGN = "+=";
	public var SUB_ASSIGN = "-=";
	public var MUL_ASSIGN = "*=";
	public var QUO_ASSIGN = "/=";
	public var REM_ASSIGN = "%=";
	public var AND_ASSIGN = "&=";
	public var OR_ASSIGN = "|=";
	public var XOR_ASSIGN = "^=";
	public var SHL_ASSIGN = "<<=";
	public var SHR_ASSIGN = ">>=";
	public var AND_NOT_ASSIGN = "&^=";
	public var LAND = "&&";
	public var LOR = "||";
	public var ARROW = "<-";
	public var INC = "++";
	public var DEC = "--";
	public var EQL = "==";
	public var LSS = "<";
	public var GTR = ">";
	public var ASSIGN = "=";
	public var NOT = "!";
	public var NEQ = "!=";
	public var LEQ = "<=";
	public var GEQ = ">=";
	public var DEFINE = ":=";
	public var ELLIPSIS = "...";
	public var LPAREN = "(";
	public var LBRACK = "[";
	public var LBRACE = "{";
	public var COMMA = ";";
	public var PERIOD = ".";
	public var RPAREN = ")";
	public var RBRACK = "]";
	public var RBRACE = "}";
	public var SEMICOLON = ";";
	public var COLON = " =";
	public var operator_end = "";
	public var keyword_beg = "";
	public var BREAK = "break";
	public var CASE = "case";
	public var CHAN = "chan";
	public var CONST = "const";
	public var CONTINUE = "continue";
	public var DEFAULT = "default";
	public var DEFER = "defer";
	public var ELSE = "else";
	public var FALLTHROUGH = "fallthrough";
	public var FOR = "for";
	public var FUNC = "func";
	public var GO = "go";
	public var GOTO = "goto";
	public var IF = "if";
	public var IMPORT = "import";
	public var INTERFACE = "interface";
	public var MAP = "map";
	public var PACKAGE = "package";
	public var RANGE = "range";
	public var RETURN = "return";
	public var SELECT = "select";
	public var STRUCT = "struct";
	public var SWITCH = "switch";
	public var TYPE = "type";
	public var VAR = "var";
	public var keyword_end = "";

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
/*
	var tokens = [...]string{
	ILLEGAL: "ILLEGAL",

	EOF:     "EOF",
	COMMENT: "COMMENT",

	IDENT:  "IDENT",
	INT:    "INT",
	FLOAT:  "FLOAT",
	IMAG:   "IMAG",
	CHAR:   "CHAR",
	STRING: "STRING",

	ADD: "+",
	SUB: "-",
	MUL: "*",
	QUO: "/",
	REM: "%",

	AND:     "&",
	OR:      "|",
	XOR:     "^",
	SHL:     "<<",
	SHR:     ">>",
	AND_NOT: "&^",

	ADD_ASSIGN: "+=",
	SUB_ASSIGN: "-=",
	MUL_ASSIGN: "*=",
	QUO_ASSIGN: "/=",
	REM_ASSIGN: "%=",

	AND_ASSIGN:     "&=",
	OR_ASSIGN:      "|=",
	XOR_ASSIGN:     "^=",
	SHL_ASSIGN:     "<<=",
	SHR_ASSIGN:     ">>=",
	AND_NOT_ASSIGN: "&^=",

	LAND:  "&&",
	LOR:   "||",
	ARROW: "<-",
	INC:   "++",
	DEC:   "--",

	EQL:    "==",
	LSS:    "<",
	GTR:    ">",
	ASSIGN: "=",
	NOT:    "!",

	NEQ:      "!=",
	LEQ:      "<=",
	GEQ:      ">=",
	DEFINE:   ":=",
	ELLIPSIS: "...",

	LPAREN: "(",
	LBRACK: "[",
	LBRACE: "{",
	COMMA:  ",",
	PERIOD: ".",

	RPAREN:    ")",
	RBRACK:    "]",
	RBRACE:    "}",
	SEMICOLON: ";",
	COLON:     ":",

	BREAK:    "break",
	CASE:     "case",
	CHAN:     "chan",
	CONST:    "const",
	CONTINUE: "continue",

	DEFAULT:     "default",
	DEFER:       "defer",
	ELSE:        "else",
	FALLTHROUGH: "fallthrough",
	FOR:         "for",

	FUNC:   "func",
	GO:     "go",
	GOTO:   "goto",
	IF:     "if",
	IMPORT: "import",

	INTERFACE: "interface",
	MAP:       "map",
	PACKAGE:   "package",
	RANGE:     "range",
	RETURN:    "return",

	SELECT: "select",
	STRUCT: "struct",
	SWITCH: "switch",
	TYPE:   "type",
	VAR:    "var",
}*/
/*
	func (*BadExpr) exprNode()        {}
	func (*Ident) exprNode()          {}
	func (*Ellipsis) exprNode()       {}
	func (*BasicLit) exprNode()       {}
	func (*FuncLit) exprNode()        {}
	func (*CompositeLit) exprNode()   {}
	func (*ParenExpr) exprNode()      {}
	func (*SelectorExpr) exprNode()   {}
	func (*IndexExpr) exprNode()      {}
	func (*SliceExpr) exprNode()      {}
	func (*TypeAssertExpr) exprNode() {}
	func (*CallExpr) exprNode()       {}
	func (*StarExpr) exprNode()       {}
	func (*UnaryExpr) exprNode()      {}
	func (*BinaryExpr) exprNode()     {}
	func (*KeyValueExpr) exprNode()   {}

	func (*ArrayType) exprNode()     {}
	func (*StructType) exprNode()    {}
	func (*FuncType) exprNode()      {}
	func (*InterfaceType) exprNode() {}
	func (*MapType) exprNode()       {}
	func (*ChanType) exprNode()      {}
 */
/*
	func (*BadStmt) stmtNode()        {}
	func (*DeclStmt) stmtNode()       {}
	func (*EmptyStmt) stmtNode()      {}
	func (*LabeledStmt) stmtNode()    {}
	func (*ExprStmt) stmtNode()       {}
	func (*SendStmt) stmtNode()       {}
	func (*IncDecStmt) stmtNode()     {}
	func (*AssignStmt) stmtNode()     {}
	func (*GoStmt) stmtNode()         {}
	func (*DeferStmt) stmtNode()      {}
	func (*ReturnStmt) stmtNode()     {}
	func (*BranchStmt) stmtNode()     {}
	func (*BlockStmt) stmtNode()      {}
	func (*IfStmt) stmtNode()         {}
	func (*CaseClause) stmtNode()     {}
	func (*SwitchStmt) stmtNode()     {}
	func (*TypeSwitchStmt) stmtNode() {}
	func (*CommClause) stmtNode()     {}
	func (*SelectStmt) stmtNode()     {}
	func (*ForStmt) stmtNode()        {}
	func (*RangeStmt) stmtNode()      {} */
/*
	func (*BadDecl) declNode()  {}
	func (*GenDecl) declNode()  {}
	func (*FuncDecl) declNode() {} */
