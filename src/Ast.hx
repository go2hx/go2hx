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
}

@:structInit
class Field {
	public var doc:CommentGroup;
	public var names:Array<Ident>;
	public var type:Expr;
	public var tag:String;
	public var comment:CommentGroup;
}

@:structInit
class FieldList {
	public var opening:Pos;
	public var list:Array<Field>;
	public var closing:Pos;
}

@:structInit
class BadExpr {
	// > Node,
	public var from:Pos;
	public var to:Pos;

	public function new(?from:Pos, ?to:Pos) {
		this.from = from;
		this.to = to;
	}
}

@:structInit
class Ident {
	public var name:String;
	public var type:ExprType;
	public var kind:ObjKind;

	public function new(?name:String, ?type:ExprType, ?kind:ObjKind) {
		this.name = name;
		this.type = type;
		this.kind = kind;
	}
}

@:structInit
class Ellipsis {
	// > Node,
	public var ellipsis:Pos;
	public var elt:Expr;

	public function new(?ellipsis:Pos, ?elt:Expr) {
		this.ellipsis = ellipsis;
		this.elt = elt;
	}
}

@:structInit
class BasicLit {
	// > Node,
	public var valuePos:Pos;
	public var kind:Token;
	public var type:ExprType;
	public var value:String;
	public var raw:Bool;

	public function new(?valuePos:Pos, ?kind:Token, ?type:ExprType, ?value:String, ?raw:Bool) {
		this.valuePos = valuePos;
		this.kind = kind;
		this.type = type;
		this.value = value;
		this.raw = raw;
	}
}

@:structInit
class FuncLit {
	// > Node,
	public var type:FuncType;
	public var body:BlockStmt;

	public function new(?type:FuncType, ?body:BlockStmt) {
		this.type = type;
		this.body = body;
	}
}

@:structInit
class CompositeLit {
	// > Node,
	public var type:Expr;
	public var lbrace:Pos;
	public var elts:Array<Expr>;
	public var rbrace:Pos;
	public var incomplete:Bool;

	public function new(?type:Expr, ?lbrace:Pos, ?elts:Array<Expr>, ?rbrace:Pos, ?incomplete:Bool) {
		this.type = type;
		this.lbrace = lbrace;
		this.elts = elts;
		this.rbrace = rbrace;
		this.incomplete = incomplete;
	}
}

@:structInit
class ParenExpr {
	// > Node,
	public var lparen:Pos;
	public var x:Expr;
	public var rparen:Pos;

	public function new(?lparen:Pos, ?x:Expr, ?rparen:Pos) {
		this.lparen = lparen;
		this.x = x;
		this.rparen = rparen;
	}
}

@:structInit
class SelectorExpr {
	// > Node,
	public var x:Expr;
	public var sel:Ident;
	public var recv:ExprType;
	public var type:ExprType;

	public function new(?x:Expr, ?sel:Ident, ?recv:ExprType, ?type:ExprType) {
		this.x = x;
		this.sel = sel;
		this.recv = recv;
		this.type = type;
	}
}

@:structInit
class IndexExpr {
	// > Node,
	public var x:Expr;
	public var lbrack:Pos;
	public var index:Expr;
	public var rbrack:Pos;
	public var type:ExprType;

	public function new(?x:Expr, ?lbrack:Pos, ?index:Expr, ?rbrack:Pos, ?type:ExprType) {
		this.x = x;
		this.lbrack = lbrack;
		this.index = index;
		this.rbrack = rbrack;
		this.type = type;
	}
}

@:structInit
class IndexListExpr {
	public var x:Expr;
	public var indices:Array<Expr>;
	public var lbrack:Pos;
	public var rbrack:Pos;
	public var type:ExprType;

	public function new(?x:Expr, ?indices:Array<Expr>, ?lbrack:Pos, ?rbrack:Pos, ?type:ExprType) {
		this.x = x;
		this.indices = indices;
		this.lbrack = lbrack;
		this.rbrack = rbrack;
		this.type = type;
	}
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

	public function new(?x:Expr, ?lbrack:Pos, ?low:Expr, ?high:Expr, ?max:Expr, ?slice3:Bool, ?rbrack:Pos, ?type:ExprType) {
		this.x = x;
		this.lbrack = lbrack;
		this.low = low;
		this.high = high;
		this.max = max;
		this.slice3 = slice3;
		this.rbrack = rbrack;
		this.type = type;
	}
}

@:structInit
class TypeAssertExpr {
	// > Node,
	public var x:Expr;
	public var lparen:Pos;
	public var type:Expr;
	public var rparen:Pos;

	public function new(?x:Expr, ?lparen:Pos, ?type:Expr, ?rparen:Pos) {
		this.x = x;
		this.lparen = lparen;
		this.type = type;
		this.rparen = rparen;
	}
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

	public function new(?fun:Expr, ?lparen:Pos, ?args:Array<Expr>, ?ellipsis:Pos, ?rparen:Pos, ?type:ExprType) {
		this.fun = fun;
		this.lparen = lparen;
		this.args = args;
		this.ellipsis = ellipsis;
		this.rparen = rparen;
		this.type = type;
	}
}

@:structInit
class StarExpr {
	// > Node,
	public var star:Pos;
	public var x:Expr;
	public var type:ExprType;

	public function new(?star:Pos, ?x:Expr, ?type:ExprType) {
		this.star = star;
		this.x = x;
		this.type = type;
	}
}

@:structInit
class UnaryExpr {
	// > Node,
	public var opPos:Pos;
	public var op:Token;
	public var x:Expr;

	public function new(?opPos:Pos, ?op:Token, ?x:Expr) {
		this.opPos = opPos;
		this.op = op;
		this.x = x;
	}
}

@:structInit
class BinaryExpr {
	// > Node,
	public var x:Expr;
	public var opPos:Pos;
	public var op:Token;
	public var y:Expr;
	public var type:ExprType;

	public function new(?x:Expr, ?opPos:Pos, ?op:Token, ?y:Expr, ?type:ExprType) {
		this.x = x;
		this.opPos = opPos;
		this.op = op;
		this.y = y;
		this.type = type;
	}
}

@:structInit
class KeyValueExpr {
	// > Node,
	public var key:Expr;
	public var colon:Pos;
	public var value:Expr;

	public function new(?key:Expr, ?colon:Pos, ?value:Expr) {
		this.key = key;
		this.colon = colon;
		this.value = value;
	}
}

@:structInit
class ArrayType {
	// > Node,
	public var lbrack:Pos;
	public var len:Expr;
	public var elt:Expr;
	public var type:ExprType;

	public function new(?lbrack:Pos, ?len:Expr, ?elt:Expr, ?type:ExprType) {
		this.lbrack = lbrack;
		this.len = len;
		this.elt = elt;
		this.type = type;
	}
}

@:structInit
class StructType {
	// > Node,
	public var struct:Pos;
	public var fields:FieldList;
	public var incomplete:Bool;
	public var type:ExprType;

	public function new(?struct:Pos, ?fields:FieldList, ?incomplete:Bool, ?type:ExprType) {
		this.struct = struct;
		this.fields = fields;
		this.incomplete = incomplete;
		this.type = type;
	}
}

@:structInit
class PointerType {
	public var elem:ExprType;

	public function new(?elem:ExprType) {
		this.elem = elem;
	}
}

@:structInit
class FuncType {
	// > Node,
	public var func:Pos;
	public var params:FieldList;
	public var results:FieldList;
	public var typeParams:FieldList;
	public var type:ExprType;

	public function new(?func:Pos, ?params:FieldList, ?results:FieldList, ?typeParams:FieldList, ?type:ExprType) {
		this.func = func;
		this.params = params;
		this.results = results;
		this.typeParams = typeParams;
		this.type = type;
	}
}

@:structInit
class InterfaceType {
	// > Node,
	public var interfacePos:Pos;
	// interface TODO: turn interface -> inter
	public var methods:FieldList;
	public var incomplete:Bool;
	public var type:ExprType;

	public function new(?interfacePos:Pos, ?methods:FieldList, ?incomplete:Bool, ?type:ExprType) {
		this.interfacePos = interfacePos;
		this.methods = methods;
		this.incomplete = incomplete;
		this.type = type;
	}
}

@:structInit
class MapType {
	// > Node,
	public var map:Pos;
	public var key:Expr;
	public var value:Expr;
	public var type:ExprType;

	public function new(?map:Pos, ?key:Expr, ?value:Expr, ?type:ExprType) {
		this.map = map;
		this.key = key;
		this.value = value;
		this.type = type;
	}
}

@:structInit
class ChanType {
	// > Node,
	public var begin:Pos;
	public var arrow:Pos;
	public var dir:ChanDir;
	public var value:Expr;
	public var type:ExprType;

	public function new(?begin:Pos, ?arrow:Pos, ?dir:ChanDir, ?value:Expr, ?type:ExprType) {
		this.begin = begin;
		this.arrow = arrow;
		this.dir = dir;
		this.value = value;
		this.type = type;
	}
}

@:structInit
class BadStmt {
	// > Node,
	public var from:Pos;
	public var to:Pos;

	public function new(?from:Pos, ?to:Pos) {
		this.from = from;
		this.to = to;
	}
}

@:structInit
class DeclStmt {
	// > Node,
	public var decl:Decl;

	public function new(?decl:Decl) {
		this.decl = decl;
	}
}

@:structInit
class EmptyStmt {
	// > Node,
	public var semicolon:Pos;
	public var implicit:Bool;

	public function new(?semicolon:Pos, ?implicit:Bool) {
		this.semicolon = semicolon;
		this.implicit = implicit;
	}
}

@:structInit
class LabeledStmt {
	// > Node,
	public var label:Ident;
	public var colon:Pos;
	public var stmt:Stmt;

	public function new(?label:Ident, ?colon:Pos, ?stmt:Stmt) {
		this.label = label;
		this.colon = colon;
		this.stmt = stmt;
	}
}

@:structInit
class ExprStmt {
	// > Node,
	public var x:Expr;
	public var end:Int;
	public var pos:Int;

	public function new(?x:Expr, ?end:Int, ?pos:Int) {
		this.x = x;
		this.end = end;
		this.pos = pos;
	}
}

@:structInit
class SendStmt {
	// > Node,
	public var chan:Expr;
	public var arrow:Pos;
	public var value:Expr;

	public function new(?chan:Expr, ?arrow:Pos, ?value:Expr) {
		this.chan = chan;
		this.arrow = arrow;
		this.value = value;
	}
}

@:structInit
class IncDecStmt {
	// > Node,
	public var x:Expr;
	public var tokPos:Pos;
	public var tok:Token;

	public function new(?x:Expr, ?tokPos:Pos, ?tok:Token) {
		this.x = x;
		this.tokPos = tokPos;
		this.tok = tok;
	}
}

@:structInit
class AssignStmt {
	// > Node,
	public var lhs:Array<Expr>;
	public var tokPos:Pos;
	public var tok:Token;
	public var rhs:Array<Expr>;

	public function new(?lhs:Array<Expr>, ?tokPos:Pos, ?tok:Token, ?rhs:Array<Expr>) {
		this.lhs = lhs;
		this.tokPos = tokPos;
		this.tok = tok;
		this.rhs = rhs;
	}
}

@:structInit
class GoStmt {
	// > Node,
	public var go:Pos;
	public var call:CallExpr;

	public function new(?go:Pos, ?call:CallExpr) {
		this.go = go;
		this.call = call;
	}
}

@:structInit
class DeferStmt {
	// > Node,
	public var defer:Pos;
	public var call:CallExpr;

	public function new(?defer:Pos, ?call:CallExpr) {
		this.defer = defer;
		this.call = call;
	}
}

@:structInit
class ReturnStmt {
	// > Node,
	public var returnPos:Pos;
	// return TODO: return -> returnPos
	public var results:Array<Expr>;

	public function new(?returnPos:Pos, ?results:Array<Expr>) {
		this.returnPos = returnPos;
		this.results = results;
	}
}

@:structInit
class BranchStmt {
	public var tokPos:Pos;
	public var tok:Token;
	public var label:Ident;

	public function new(?tokPos:Pos, ?tok:Token, ?label:Ident) {
		this.tokPos = tokPos;
		this.tok = tok;
		this.label = label;
	}
}

@:structInit
class BlockStmt {
	public var lbrace:Pos;
	public var list:Array<Stmt>;
	public var rbrace:Pos;

	public function new(?lbrace:Pos, ?list:Array<Stmt>, ?rbrace:Pos) {
		this.lbrace = lbrace;
		this.list = list;
		this.rbrace = rbrace;
	}
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

	public function new(?casePos:Pos, ?list:Array<Expr>, ?colon:Pos, ?body:Array<Stmt>) {
		this.casePos = casePos;
		this.list = list;
		this.colon = colon;
		this.body = body;
	}
}

@:structInit
class SwitchStmt {
	public var switchPos:Pos;
	// switch TODO: switch -> switchPos
	public var init:Stmt;
	public var tag:Expr;
	public var body:BlockStmt;

	public function new(?switchPos:Pos, ?init:Stmt, ?tag:Expr, ?body:BlockStmt) {
		this.switchPos = switchPos;
		this.init = init;
		this.tag = tag;
		this.body = body;
	}
}

@:structInit
class TypeSwitchStmt {
	public var switchPos:Pos;
	// switch TODO: switch -> switchPos
	public var init:Stmt;
	public var assign:Stmt;
	public var body:BlockStmt;

	public function new(?switchPos:Pos, ?init:Stmt, ?assign:Stmt, ?body:BlockStmt) {
		this.switchPos = switchPos;
		this.init = init;
		this.assign = assign;
		this.body = body;
	}
}

@:structInit
class CommClause {
	public var casePos:Pos;
	// case TODO: case -> casePos
	public var comm:Stmt;
	public var colon:Pos;
	public var body:Array<Stmt>;

	public function new(?casePos:Pos, ?comm:Stmt, ?colon:Pos, ?body:Array<Stmt>) {
		this.casePos = casePos;
		this.comm = comm;
		this.colon = colon;
		this.body = body;
	}
}

@:structInit
class SelectStmt {
	public var select:Pos;
	public var body:BlockStmt;

	public function new(?select:Pos, ?body:BlockStmt) {
		this.select = select;
		this.body = body;
	}
}

@:structInit
class ForStmt {
	public var forPos:Pos;
	// for TODO: for -> forPos
	public var init:Stmt;
	public var cond:Expr;
	public var post:Stmt;
	public var body:BlockStmt;

	public function new(?forPos:Pos, ?init:Stmt, ?cond:Expr, ?post:Stmt, ?body:BlockStmt) {
		this.forPos = forPos;
		this.init = init;
		this.cond = cond;
		this.post = post;
		this.body = body;
	}
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

	public function new(?forPos:Pos, ?key:Expr, ?value:Expr, ?tokPos:Pos, ?tok:Token, ?x:Expr, ?body:BlockStmt) {
		this.forPos = forPos;
		this.key = key;
		this.value = value;
		this.tokPos = tokPos;
		this.tok = tok;
		this.x = x;
		this.body = body;
	}
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

	public function new(?doc:CommentGroup, ?name:String, ?path:String, ?comment:CommentGroup, ?endPos:Pos) {
		this.doc = doc;
		this.name = name;
		this.path = path;
		this.comment = comment;
		this.endPos = endPos;
	}
}

@:structInit
class ValueSpec {
	public var doc:CommentGroup;
	public var names:Array<Ast.Ident>;
	public var type:Expr;
	public var values:Array<Expr>;
	public var comment:CommentGroup;
	public var pos:Int;
	public var end:Int;

	public function new(?doc:CommentGroup, ?names:Array<Ast.Ident>, ?type:Expr, ?values:Array<Expr>, ?comment:CommentGroup, ?pos:Int, ?end:Int) {
		this.doc = doc;
		this.names = names;
		this.type = type;
		this.values = values;
		this.comment = comment;
		this.pos = pos;
		this.end = end;
	}
}

@:structInit
class ImplicitType {
	public var name:String;
	public var path:String;

	public function new(?name:String, ?path:String) {
		this.name = name;
		this.path = path;
	}
}

@:structInit
class TypeSpec {
	public var doc:CommentGroup;
	public var name:Ident;
	public var assign:Pos;
	public var type:Expr;
	public var comment:CommentGroup;
	public var params:FieldList;
	public var methods:Array<{
		name:String,
		type:ExprType,
		recv:ExprType,
		index:Array<Int>
	}>;
	public var pos:Int;
	public var end:Int;

	public function new(?doc:CommentGroup, ?name:Ident, ?assign:Pos, ?type:Expr, ?comment:CommentGroup, ?params:FieldList, ?methods:Array<{
		name:String,
		type:ExprType,
		recv:ExprType,
		index:Array<Int>
	}>, ?pos:Int, ?end:Int) {
		this.doc = doc;
		this.name = name;
		this.assign = assign;
		this.type = type;
		this.comment = comment;
		this.params = params;
		this.methods = methods;
		this.pos = pos;
		this.end = end;
	}
}

@:structInit
class BadDecl {
	public var from:Pos;
	public var to:Pos;

	public function new(?from:Pos, ?to:Pos) {
		this.from = from;
		this.to = to;
	}
}

@:structInit
class GenDecl {
	public var doc:CommentGroup;
	public var tokPos:Pos;
	public var tok:Token;
	public var lparen:Pos;
	public var specs:Array<Spec>;
	public var rparen:Pos;

	public function new(?doc:CommentGroup, ?tokPos:Pos, ?tok:Token, ?lparen:Pos, ?specs:Array<Spec>, ?rparen:Pos) {
		this.doc = doc;
		this.tokPos = tokPos;
		this.tok = tok;
		this.lparen = lparen;
		this.specs = specs;
		this.rparen = rparen;
	}
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

	public function new(?doc:CommentGroup, ?recv:FieldList, ?typeParams:FieldList, ?name:Ident, ?type:FuncType, ?body:BlockStmt, ?pos:Int, ?end:Int) {
		this.doc = doc;
		this.recv = recv;
		this.typeParams = typeParams;
		this.name = name;
		this.type = type;
		this.body = body;
		this.pos = pos;
		this.end = end;
	}
}

@:structInit
class Object {
	public var kind:ObjKind;
	public var name:String;
	public var decl:Any;
	public var data:Any;
	public var type:Any;

	public function new(?kind:ObjKind, ?name:String, ?decl:Any, ?data:Any, ?type:Any) {
		this.kind = kind;
		this.name = name;
		this.decl = decl;
		this.data = data;
		this.type = type;
	}
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
