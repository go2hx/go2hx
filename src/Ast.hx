package;

/*typedef Node = {
	pos:Int
}*/
typedef Expr = Dynamic;
typedef Stmt = Dynamic;
typedef ExprType = Dynamic;
typedef Decl = Dynamic;
typedef Scope = Dynamic;
typedef ChanDir = Int;

enum abstract ObjKind(Int) {
	public final bad = 0; // for error handling
	public final pkg = 1; // package
	public final con = 2; // constant
	public final typ = 3; // type
	public final _var = 4; // variable
	public final fun = 5; // function or method
	public final lbl = 7; // label
}

@:structInit
class Comment {
	public var text:String;
	public var pos:Int;

	public function new(text:String, pos:Int) {
		this.text = text;
		this.pos = pos;
	}
}

@:structInit
class CommentGroup {
	public var list:Array<Comment>;

	public function new(list:Array<Comment>) {
		this.list = list;
	}
}

@:structInit
class Field {
	public var doc:CommentGroup;
	public var names:Array<Ident>;
	public var type:Expr;
	public var tag:String;
	public var comment:CommentGroup;

	public function new(doc:CommentGroup, names:Array<Ident>, type:Expr, tag:String, comment:CommentGroup) {
		this.doc = doc;
		this.names = names;
		this.type = type;
		this.tag = tag;
		this.comment = comment
	}
}

@:structInit
class FieldList {
	public var opening:Pos;
	public var list:Array<Field>;
	public var closing:Pos;

	public function new(opening:Pos, list:Array<Field>, closing:Pos) {
		this.opening = opening;
		this.list = list;
		this.closing = closing;
	}
}

@:structInit
class BadExpr {
	// > Node,
	public var from:Pos;
	public var to:Pos;

	public function new() {}
}

@:structInit
class Ident {
	public var name:String;
	public var type:ExprType;
	?
	public var kind:ObjKind;

	public function new() {}
}

@:structInit
class Ellipsis {
	// > Node,
	public var ellipsis:Pos;
	public var elt:Expr;

	public function new() {}
}

@:structInit
class BasicLit {
	// > Node,
	public var valuePos:Pos;
	public var kind:Token;
	public var type:ExprType;
	public var value:String;
	public var raw:Bool;

	public function new() {}
}

@:structInit
class FuncLit {
	// > Node,
	public var type:FuncType;
	public var body:BlockStmt;

	public function new() {}
}

@:structInit
class CompositeLit {
	// > Node,
	public var type:Expr;
	public var lbrace:Pos;
	public var elts:Array<Expr>;
	public var rbrace:Pos;
	public var incomplete:Bool;

	public function new() {}
}

@:structInit
class ParenExpr {
	// > Node,
	public var lparen:Pos;
	public var x:Expr;
	public var rparen:Pos;

	public function new() {}
}

@:structInit
class SelectorExpr {
	// > Node,
	public var x:Expr;
	public var sel:Ident;
	public var recv:ExprType;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class IndexExpr {
	// > Node,
	public var x:Expr;
	public var lbrack:Pos;
	public var index:Expr;
	public var rbrack:Pos;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class IndexListExpr {
	public var x:Expr;
	public var indices:Array<Expr>;
	public var lbrack:Pos;
	public var rbrack:Pos;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class SliceExpr {
	// > Node,
	public var x:Expr;
	public var lbrack:Pos;
	public var low:Expr;
	public var high:Expr;
	public var max:Expr;
	public var slice3:Bool;
	public var rbrack:Pos;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class TypeAssertExpr {
	// > Node,
	public var x:Expr;
	public var lparen:Pos;
	public var type:Expr;
	public var rparen:Pos;

	public function new() {}
}

@:structInit
class CallExpr {
	// > Node,
	public var fun:Expr;
	public var lparen:Pos;
	public var args:Array<Expr>;
	public var ellipsis:Pos;
	public var rparen:Pos;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class StarExpr {
	// > Node,
	public var star:Pos;
	public var x:Expr;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class UnaryExpr {
	// > Node,
	public var opPos:Pos;
	public var op:Token;
	public var x:Expr;

	public function new() {}
}

@:structInit
class BinaryExpr {
	// > Node,
	public var x:Expr;
	public var opPos:Pos;
	public var op:Token;
	public var y:Expr;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class KeyValueExpr {
	// > Node,
	public var key:Expr;
	public var colon:Pos;
	public var value:Expr;

	public function new() {}
}

@:structInit
class ArrayType {
	// > Node,
	public var lbrack:Pos;
	public var len:Expr;
	public var elt:Expr;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class StructType {
	// > Node,
	public var struct:Pos;
	public var fields:FieldList;
	public var incomplete:Bool;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class PointerType {
	public var elem:ExprType;

	public function new() {}
}

@:structInit
class FuncType {
	// > Node,
	public var func:Pos;
	public var params:FieldList;
	public var results:FieldList;
	public var typeParams:FieldList;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class InterfaceType {
	// > Node,
	public var interfacePos:Pos;
	// interface TODO: turn interface -> inter
	public var methods:FieldList;
	public var incomplete:Bool;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class MapType {
	// > Node,
	public var map:Pos;
	public var key:Expr;
	public var value:Expr;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class ChanType {
	// > Node,
	public var begin:Pos;
	public var arrow:Pos;
	public var dir:ChanDir;
	public var value:Expr;
	public var type:ExprType;

	public function new() {}
}

@:structInit
class BadStmt {
	// > Node,
	public var from:Pos;
	public var to:Pos;

	public function new() {}
}

@:structInit
class DeclStmt {
	// > Node,
	public var decl:Decl;

	public function new() {}
}

@:structInit
class EmptyStmt {
	// > Node,
	public var semicolon:Pos;
	public var implicit:Bool;

	public function new() {}
}

@:structInit
class LabeledStmt {
	// > Node,
	public var label:Ident;
	public var colon:Pos;
	public var stmt:Stmt;

	public function new() {}
}

@:structInit
class ExprStmt {
	// > Node,
	public var x:Expr;
	public var end:Int;
	public var pos:Int;

	public function new() {}
}

@:structInit
class SendStmt {
	// > Node,
	public var chan:Expr;
	public var arrow:Pos;
	public var value:Expr;

	public function new() {}
}

@:structInit
class IncDecStmt {
	// > Node,
	public var x:Expr;
	public var tokPos:Pos;
	public var tok:Token;

	public function new() {}
}

@:structInit
class AssignStmt {
	// > Node,
	public var lhs:Array<Expr>;
	public var tokPos:Pos;
	public var tok:Token;
	public var rhs:Array<Expr>;

	public function new() {}
}

@:structInit
class GoStmt {
	// > Node,
	public var go:Pos;
	public var call:CallExpr;

	public function new() {}
}

@:structInit
class DeferStmt {
	// > Node,
	public var defer:Pos;
	public var call:CallExpr;

	public function new() {}
}

@:structInit
class ReturnStmt {
	// > Node,
	public var returnPos:Pos;
	// return TODO: return -> returnPos
	public var results:Array<Expr>;

	public function new() {}
}

@:structInit
class BranchStmt {
	public var tokPos:Pos;
	public var tok:Token;
	public var label:Ident;

	public function new() {}
}

@:structInit
class BlockStmt {
	public var lbrace:Pos;
	public var list:Array<Stmt>;
	public var rbrace:Pos;

	public function new() {}
}

@:structInit
class IfStmt {
	public var ifPos:Pos;
	// if TODO: if -> ifPos
	public var init:Stmt;
	public var cond:Expr;
	public var body:BlockStmt;
	public var elseStmt:Stmt;
	// else TODO: else -> elseStmt
}

@:structInit
class CaseClause {
	public var casePos:Pos;
	// case TODO: case -> casePos
	public var list:Array<Expr>;
	public var colon:Pos;
	public var body:Array<Stmt>;

	public function new() {}
}

@:structInit
class SwitchStmt {
	public var switchPos:Pos;
	// switch TODO: switch -> switchPos
	public var init:Stmt;
	public var tag:Expr;
	public var body:BlockStmt;

	public function new() {}
}

@:structInit
class TypeSwitchStmt {
	public var switchPos:Pos;
	// switch TODO: switch -> switchPos
	public var init:Stmt;
	public var assign:Stmt;
	public var body:BlockStmt;

	public function new() {}
}

@:structInit
class CommClause {
	public var casePos:Pos;
	// case TODO: case -> casePos
	public var comm:Stmt;
	public var colon:Pos;
	public var body:Array<Stmt>;

	public function new() {}
}

@:structInit
class SelectStmt {
	public var select:Pos;
	public var body:BlockStmt;

	public function new() {}
}

@:structInit
class ForStmt {
	public var forPos:Pos;
	// for TODO: for -> forPos
	public var init:Stmt;
	public var cond:Expr;
	public var post:Stmt;
	public var body:BlockStmt;

	public function new() {}
}

@:structInit
class RangeStmt {
	public var forPos:Pos;
	// for TODO: for -> forPos
	public var key:Expr;
	public var value:Expr;
	public var tokPos:Pos;
	public var tok:Token;
	public var x:Expr;
	public var body:BlockStmt;

	public function new() {}
}

typedef Spec = Dynamic; // A go interface

@:structInit
class ImportSpec {
	public var doc:CommentGroup;
	public var name:String;
	// Ident
	public var path:String;
	public var comment:CommentGroup;
	public var endPos:Pos;

	public function new() {}
}

@:structInit
class ValueSpec {
	public var doc:CommentGroup;
	names:Array<Ast.Ident>
, public var type:Expr;
public var values:Array<Expr>;
public var comment:CommentGroup;
public var pos:Int;
public var end:Int;

	public function new() {}
} @:structInit
class ImplicitType {
	public var name:String;
	public var path:String;

	public function new() {}
}

@:structInit
class TypeSpec {
	public var doc:CommentGroup;
	public var name:Ident;
	public var assign:Pos;
	public var type:Expr;
	public var comment:CommentGroup;
	public var params:FieldList;
	methods:Array<{
		name:String,
		type:ExprType,
		recv:ExprType,
		index:Array<Int>
	}>
, public var pos:Int;
public var end:Int;

	public function new() {}
} @:structInit
class BadDecl {
	public var from:Pos;
	public var to:Pos;

	public function new() {}
}

@:structInit
class GenDecl {
	public var doc:CommentGroup;
	public var tokPos:Pos;
	public var tok:Token;
	public var lparen:Pos;
	public var specs:Array<Spec>;
	public var rparen:Pos;

	public function new() {}
}

@:structInit
class FuncDecl {
	public var doc:CommentGroup;
	public var recv:FieldList;
	public var typeParams:FieldList;
	public var name:Ident;
	public var type:FuncType;
	public var body:BlockStmt;
	public var pos:Int;
	public var end:Int;

	public function new() {}
}

@:structInit
class Object {
	public var kind:ObjKind;
	public var name:String;
	public var decl:Any;
	public var data:Any;
	public var type:Any;

	public function new() {}
}

@:structInit
class Position {}

@:structInit
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
