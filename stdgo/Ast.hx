package stdgo;
final sEND : ChanDir = stdgo._internal.go.ast.Ast_send.sEND;
final rECV = stdgo._internal.go.ast.Ast_recv.rECV;
final filterFuncDuplicates : MergeMode = stdgo._internal.go.ast.Ast_filterfuncduplicates.filterFuncDuplicates;
final filterUnassociatedComments = stdgo._internal.go.ast.Ast_filterunassociatedcomments.filterUnassociatedComments;
final filterImportDuplicates = stdgo._internal.go.ast.Ast_filterimportduplicates.filterImportDuplicates;
final bad : ObjKind = stdgo._internal.go.ast.Ast_bad.bad;
final pkg = stdgo._internal.go.ast.Ast_pkg.pkg;
final con = stdgo._internal.go.ast.Ast_con.con;
final typ = stdgo._internal.go.ast.Ast_typ.typ;
final var_ = stdgo._internal.go.ast.Ast_var_.var_;
final fun = stdgo._internal.go.ast.Ast_fun.fun;
final lbl = stdgo._internal.go.ast.Ast_lbl.lbl;
class Node_static_extension {
    static public function end(t:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.ast.Ast_node_static_extension.Node_static_extension.end(t);
    }
    static public function pos(t:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.ast.Ast_node_static_extension.Node_static_extension.pos(t);
    }
}
@:forward abstract Node(stdgo._internal.go.ast.Ast_node.Node) from stdgo._internal.go.ast.Ast_node.Node to stdgo._internal.go.ast.Ast_node.Node {
    @:from
    static function fromHaxeInterface(x:{ function pos():stdgo._internal.go.token.Token_pos.Pos; function end():stdgo._internal.go.token.Token_pos.Pos; }):Node {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Node = { pos : () -> x.pos(), end : () -> x.end(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Expr_static_extension {
    static public function _exprNode(t:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        stdgo._internal.go.ast.Ast_expr_static_extension.Expr_static_extension._exprNode(t);
    }
}
@:forward abstract Expr(stdgo._internal.go.ast.Ast_expr.Expr) from stdgo._internal.go.ast.Ast_expr.Expr to stdgo._internal.go.ast.Ast_expr.Expr {
    @:from
    static function fromHaxeInterface(x:{ function _exprNode():Void; }):Expr {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Expr = { _exprNode : () -> x._exprNode(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Stmt_static_extension {
    static public function _stmtNode(t:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        stdgo._internal.go.ast.Ast_stmt_static_extension.Stmt_static_extension._stmtNode(t);
    }
}
@:forward abstract Stmt(stdgo._internal.go.ast.Ast_stmt.Stmt) from stdgo._internal.go.ast.Ast_stmt.Stmt to stdgo._internal.go.ast.Ast_stmt.Stmt {
    @:from
    static function fromHaxeInterface(x:{ function _stmtNode():Void; }):Stmt {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Stmt = { _stmtNode : () -> x._stmtNode(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Decl_static_extension {
    static public function _declNode(t:stdgo._internal.go.ast.Ast_decl.Decl):Void {
        stdgo._internal.go.ast.Ast_decl_static_extension.Decl_static_extension._declNode(t);
    }
}
@:forward abstract Decl(stdgo._internal.go.ast.Ast_decl.Decl) from stdgo._internal.go.ast.Ast_decl.Decl to stdgo._internal.go.ast.Ast_decl.Decl {
    @:from
    static function fromHaxeInterface(x:{ function _declNode():Void; }):Decl {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Decl = { _declNode : () -> x._declNode(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Spec_static_extension {
    static public function _specNode(t:stdgo._internal.go.ast.Ast_spec.Spec):Void {
        stdgo._internal.go.ast.Ast_spec_static_extension.Spec_static_extension._specNode(t);
    }
}
@:forward abstract Spec(stdgo._internal.go.ast.Ast_spec.Spec) from stdgo._internal.go.ast.Ast_spec.Spec to stdgo._internal.go.ast.Ast_spec.Spec {
    @:from
    static function fromHaxeInterface(x:{ function _specNode():Void; }):Spec {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Spec = { _specNode : () -> x._specNode(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Visitor_static_extension {
    static public function visit(t:stdgo._internal.go.ast.Ast_visitor.Visitor, _node:Node):Visitor {
        return stdgo._internal.go.ast.Ast_visitor_static_extension.Visitor_static_extension.visit(t, _node);
    }
}
@:forward abstract Visitor(stdgo._internal.go.ast.Ast_visitor.Visitor) from stdgo._internal.go.ast.Ast_visitor.Visitor to stdgo._internal.go.ast.Ast_visitor.Visitor {
    @:from
    static function fromHaxeInterface(x:{ function visit(_node:Node):Visitor; }):Visitor {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Visitor = { visit : _0 -> x.visit(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.ast.Ast.Comment_static_extension) abstract Comment(stdgo._internal.go.ast.Ast_comment.Comment) from stdgo._internal.go.ast.Ast_comment.Comment to stdgo._internal.go.ast.Ast_comment.Comment {
    public var slash(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_slash():stdgo._internal.go.token.Token_pos.Pos return this.slash;
    function set_slash(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.slash = v;
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?slash:stdgo._internal.go.token.Token_pos.Pos, ?text:String) this = new stdgo._internal.go.ast.Ast_comment.Comment(slash, (text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.CommentGroup_static_extension) abstract CommentGroup(stdgo._internal.go.ast.Ast_commentgroup.CommentGroup) from stdgo._internal.go.ast.Ast_commentgroup.CommentGroup to stdgo._internal.go.ast.Ast_commentgroup.CommentGroup {
    public var list(get, set) : Array<Comment>;
    function get_list():Array<Comment> return [for (i in this.list) i];
    function set_list(v:Array<Comment>):Array<Comment> {
        this.list = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        return v;
    }
    public function new(?list:Array<Comment>) this = new stdgo._internal.go.ast.Ast_commentgroup.CommentGroup(([for (i in list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.Field_static_extension) abstract Field(stdgo._internal.go.ast.Ast_field.Field) from stdgo._internal.go.ast.Ast_field.Field to stdgo._internal.go.ast.Ast_field.Field {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var names(get, set) : Array<Ident>;
    function get_names():Array<Ident> return [for (i in this.names) i];
    function set_names(v:Array<Ident>):Array<Ident> {
        this.names = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        return v;
    }
    public var type(get, set) : Expr;
    function get_type():Expr return this.type;
    function set_type(v:Expr):Expr {
        this.type = v;
        return v;
    }
    public var tag(get, set) : BasicLit;
    function get_tag():BasicLit return this.tag;
    function set_tag(v:BasicLit):BasicLit {
        this.tag = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        return v;
    }
    public var comment(get, set) : CommentGroup;
    function get_comment():CommentGroup return this.comment;
    function set_comment(v:CommentGroup):CommentGroup {
        this.comment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public function new(?doc:CommentGroup, ?names:Array<Ident>, ?type:Expr, ?tag:BasicLit, ?comment:CommentGroup) this = new stdgo._internal.go.ast.Ast_field.Field((doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), ([for (i in names) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>), type, (tag : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), (comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.FieldList_static_extension) abstract FieldList(stdgo._internal.go.ast.Ast_fieldlist.FieldList) from stdgo._internal.go.ast.Ast_fieldlist.FieldList to stdgo._internal.go.ast.Ast_fieldlist.FieldList {
    public var opening(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_opening():stdgo._internal.go.token.Token_pos.Pos return this.opening;
    function set_opening(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.opening = v;
        return v;
    }
    public var list(get, set) : Array<Field>;
    function get_list():Array<Field> return [for (i in this.list) i];
    function set_list(v:Array<Field>):Array<Field> {
        this.list = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        return v;
    }
    public var closing(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_closing():stdgo._internal.go.token.Token_pos.Pos return this.closing;
    function set_closing(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.closing = v;
        return v;
    }
    public function new(?opening:stdgo._internal.go.token.Token_pos.Pos, ?list:Array<Field>, ?closing:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_fieldlist.FieldList(opening, ([for (i in list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>), closing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BadExpr_static_extension) abstract BadExpr(stdgo._internal.go.ast.Ast_badexpr.BadExpr) from stdgo._internal.go.ast.Ast_badexpr.BadExpr to stdgo._internal.go.ast.Ast_badexpr.BadExpr {
    public var from(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_from():stdgo._internal.go.token.Token_pos.Pos return this.from;
    function set_from(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.from = v;
        return v;
    }
    public var to(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_to():stdgo._internal.go.token.Token_pos.Pos return this.to;
    function set_to(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.to = v;
        return v;
    }
    public function new(?from:stdgo._internal.go.token.Token_pos.Pos, ?to:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_badexpr.BadExpr(from, to);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.Ident_static_extension) abstract Ident(stdgo._internal.go.ast.Ast_ident.Ident) from stdgo._internal.go.ast.Ast_ident.Ident to stdgo._internal.go.ast.Ast_ident.Ident {
    public var namePos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_namePos():stdgo._internal.go.token.Token_pos.Pos return this.namePos;
    function set_namePos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.namePos = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var obj(get, set) : Object;
    function get_obj():Object return this.obj;
    function set_obj(v:Object):Object {
        this.obj = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        return v;
    }
    public function new(?namePos:stdgo._internal.go.token.Token_pos.Pos, ?name:String, ?obj:Object) this = new stdgo._internal.go.ast.Ast_ident.Ident(namePos, (name : stdgo.GoString), (obj : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.Ellipsis_static_extension) abstract Ellipsis(stdgo._internal.go.ast.Ast_ellipsis.Ellipsis) from stdgo._internal.go.ast.Ast_ellipsis.Ellipsis to stdgo._internal.go.ast.Ast_ellipsis.Ellipsis {
    public var ellipsis(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_ellipsis():stdgo._internal.go.token.Token_pos.Pos return this.ellipsis;
    function set_ellipsis(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.ellipsis = v;
        return v;
    }
    public var elt(get, set) : Expr;
    function get_elt():Expr return this.elt;
    function set_elt(v:Expr):Expr {
        this.elt = v;
        return v;
    }
    public function new(?ellipsis:stdgo._internal.go.token.Token_pos.Pos, ?elt:Expr) this = new stdgo._internal.go.ast.Ast_ellipsis.Ellipsis(ellipsis, elt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BasicLit_static_extension) abstract BasicLit(stdgo._internal.go.ast.Ast_basiclit.BasicLit) from stdgo._internal.go.ast.Ast_basiclit.BasicLit to stdgo._internal.go.ast.Ast_basiclit.BasicLit {
    public var valuePos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_valuePos():stdgo._internal.go.token.Token_pos.Pos return this.valuePos;
    function set_valuePos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.valuePos = v;
        return v;
    }
    public var kind(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_kind():stdgo._internal.go.token.Token_token.Token return this.kind;
    function set_kind(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.kind = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public function new(?valuePos:stdgo._internal.go.token.Token_pos.Pos, ?kind:stdgo._internal.go.token.Token_token.Token, ?value:String) this = new stdgo._internal.go.ast.Ast_basiclit.BasicLit(valuePos, kind, (value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.FuncLit_static_extension) abstract FuncLit(stdgo._internal.go.ast.Ast_funclit.FuncLit) from stdgo._internal.go.ast.Ast_funclit.FuncLit to stdgo._internal.go.ast.Ast_funclit.FuncLit {
    public var type(get, set) : FuncType;
    function get_type():FuncType return this.type;
    function set_type(v:FuncType):FuncType {
        this.type = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?type:FuncType, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_funclit.FuncLit((type : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.CompositeLit_static_extension) abstract CompositeLit(stdgo._internal.go.ast.Ast_compositelit.CompositeLit) from stdgo._internal.go.ast.Ast_compositelit.CompositeLit to stdgo._internal.go.ast.Ast_compositelit.CompositeLit {
    public var type(get, set) : Expr;
    function get_type():Expr return this.type;
    function set_type(v:Expr):Expr {
        this.type = v;
        return v;
    }
    public var lbrace(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lbrace():stdgo._internal.go.token.Token_pos.Pos return this.lbrace;
    function set_lbrace(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lbrace = v;
        return v;
    }
    public var elts(get, set) : Array<Expr>;
    function get_elts():Array<Expr> return [for (i in this.elts) i];
    function set_elts(v:Array<Expr>):Array<Expr> {
        this.elts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var rbrace(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rbrace():stdgo._internal.go.token.Token_pos.Pos return this.rbrace;
    function set_rbrace(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rbrace = v;
        return v;
    }
    public var incomplete(get, set) : Bool;
    function get_incomplete():Bool return this.incomplete;
    function set_incomplete(v:Bool):Bool {
        this.incomplete = v;
        return v;
    }
    public function new(?type:Expr, ?lbrace:stdgo._internal.go.token.Token_pos.Pos, ?elts:Array<Expr>, ?rbrace:stdgo._internal.go.token.Token_pos.Pos, ?incomplete:Bool) this = new stdgo._internal.go.ast.Ast_compositelit.CompositeLit(type, lbrace, ([for (i in elts) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), rbrace, incomplete);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ParenExpr_static_extension) abstract ParenExpr(stdgo._internal.go.ast.Ast_parenexpr.ParenExpr) from stdgo._internal.go.ast.Ast_parenexpr.ParenExpr to stdgo._internal.go.ast.Ast_parenexpr.ParenExpr {
    public var lparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lparen():stdgo._internal.go.token.Token_pos.Pos return this.lparen;
    function set_lparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lparen = v;
        return v;
    }
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var rparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rparen():stdgo._internal.go.token.Token_pos.Pos return this.rparen;
    function set_rparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rparen = v;
        return v;
    }
    public function new(?lparen:stdgo._internal.go.token.Token_pos.Pos, ?x:Expr, ?rparen:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_parenexpr.ParenExpr(lparen, x, rparen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.SelectorExpr_static_extension) abstract SelectorExpr(stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr) from stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr to stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var sel(get, set) : Ident;
    function get_sel():Ident return this.sel;
    function set_sel(v:Ident):Ident {
        this.sel = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public function new(?x:Expr, ?sel:Ident) this = new stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr(x, (sel : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.IndexExpr_static_extension) abstract IndexExpr(stdgo._internal.go.ast.Ast_indexexpr.IndexExpr) from stdgo._internal.go.ast.Ast_indexexpr.IndexExpr to stdgo._internal.go.ast.Ast_indexexpr.IndexExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var lbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lbrack():stdgo._internal.go.token.Token_pos.Pos return this.lbrack;
    function set_lbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lbrack = v;
        return v;
    }
    public var index(get, set) : Expr;
    function get_index():Expr return this.index;
    function set_index(v:Expr):Expr {
        this.index = v;
        return v;
    }
    public var rbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rbrack():stdgo._internal.go.token.Token_pos.Pos return this.rbrack;
    function set_rbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rbrack = v;
        return v;
    }
    public function new(?x:Expr, ?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?index:Expr, ?rbrack:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_indexexpr.IndexExpr(x, lbrack, index, rbrack);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.IndexListExpr_static_extension) abstract IndexListExpr(stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr) from stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr to stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var lbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lbrack():stdgo._internal.go.token.Token_pos.Pos return this.lbrack;
    function set_lbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lbrack = v;
        return v;
    }
    public var indices(get, set) : Array<Expr>;
    function get_indices():Array<Expr> return [for (i in this.indices) i];
    function set_indices(v:Array<Expr>):Array<Expr> {
        this.indices = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var rbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rbrack():stdgo._internal.go.token.Token_pos.Pos return this.rbrack;
    function set_rbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rbrack = v;
        return v;
    }
    public function new(?x:Expr, ?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?indices:Array<Expr>, ?rbrack:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr(x, lbrack, ([for (i in indices) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), rbrack);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.SliceExpr_static_extension) abstract SliceExpr(stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr) from stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr to stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var lbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lbrack():stdgo._internal.go.token.Token_pos.Pos return this.lbrack;
    function set_lbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lbrack = v;
        return v;
    }
    public var low(get, set) : Expr;
    function get_low():Expr return this.low;
    function set_low(v:Expr):Expr {
        this.low = v;
        return v;
    }
    public var high(get, set) : Expr;
    function get_high():Expr return this.high;
    function set_high(v:Expr):Expr {
        this.high = v;
        return v;
    }
    public var max(get, set) : Expr;
    function get_max():Expr return this.max;
    function set_max(v:Expr):Expr {
        this.max = v;
        return v;
    }
    public var slice3(get, set) : Bool;
    function get_slice3():Bool return this.slice3;
    function set_slice3(v:Bool):Bool {
        this.slice3 = v;
        return v;
    }
    public var rbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rbrack():stdgo._internal.go.token.Token_pos.Pos return this.rbrack;
    function set_rbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rbrack = v;
        return v;
    }
    public function new(?x:Expr, ?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?low:Expr, ?high:Expr, ?max:Expr, ?slice3:Bool, ?rbrack:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr(x, lbrack, low, high, max, slice3, rbrack);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.TypeAssertExpr_static_extension) abstract TypeAssertExpr(stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr) from stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr to stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var lparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lparen():stdgo._internal.go.token.Token_pos.Pos return this.lparen;
    function set_lparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lparen = v;
        return v;
    }
    public var type(get, set) : Expr;
    function get_type():Expr return this.type;
    function set_type(v:Expr):Expr {
        this.type = v;
        return v;
    }
    public var rparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rparen():stdgo._internal.go.token.Token_pos.Pos return this.rparen;
    function set_rparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rparen = v;
        return v;
    }
    public function new(?x:Expr, ?lparen:stdgo._internal.go.token.Token_pos.Pos, ?type:Expr, ?rparen:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr(x, lparen, type, rparen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.CallExpr_static_extension) abstract CallExpr(stdgo._internal.go.ast.Ast_callexpr.CallExpr) from stdgo._internal.go.ast.Ast_callexpr.CallExpr to stdgo._internal.go.ast.Ast_callexpr.CallExpr {
    public var fun(get, set) : Expr;
    function get_fun():Expr return this.fun;
    function set_fun(v:Expr):Expr {
        this.fun = v;
        return v;
    }
    public var lparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lparen():stdgo._internal.go.token.Token_pos.Pos return this.lparen;
    function set_lparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lparen = v;
        return v;
    }
    public var args(get, set) : Array<Expr>;
    function get_args():Array<Expr> return [for (i in this.args) i];
    function set_args(v:Array<Expr>):Array<Expr> {
        this.args = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var ellipsis(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_ellipsis():stdgo._internal.go.token.Token_pos.Pos return this.ellipsis;
    function set_ellipsis(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.ellipsis = v;
        return v;
    }
    public var rparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rparen():stdgo._internal.go.token.Token_pos.Pos return this.rparen;
    function set_rparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rparen = v;
        return v;
    }
    public function new(?fun:Expr, ?lparen:stdgo._internal.go.token.Token_pos.Pos, ?args:Array<Expr>, ?ellipsis:stdgo._internal.go.token.Token_pos.Pos, ?rparen:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_callexpr.CallExpr(fun, lparen, ([for (i in args) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), ellipsis, rparen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.StarExpr_static_extension) abstract StarExpr(stdgo._internal.go.ast.Ast_starexpr.StarExpr) from stdgo._internal.go.ast.Ast_starexpr.StarExpr to stdgo._internal.go.ast.Ast_starexpr.StarExpr {
    public var star(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_star():stdgo._internal.go.token.Token_pos.Pos return this.star;
    function set_star(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.star = v;
        return v;
    }
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public function new(?star:stdgo._internal.go.token.Token_pos.Pos, ?x:Expr) this = new stdgo._internal.go.ast.Ast_starexpr.StarExpr(star, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.UnaryExpr_static_extension) abstract UnaryExpr(stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr) from stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr to stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr {
    public var opPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_opPos():stdgo._internal.go.token.Token_pos.Pos return this.opPos;
    function set_opPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.opPos = v;
        return v;
    }
    public var op(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_op():stdgo._internal.go.token.Token_token.Token return this.op;
    function set_op(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.op = v;
        return v;
    }
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public function new(?opPos:stdgo._internal.go.token.Token_pos.Pos, ?op:stdgo._internal.go.token.Token_token.Token, ?x:Expr) this = new stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr(opPos, op, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BinaryExpr_static_extension) abstract BinaryExpr(stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr) from stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr to stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var opPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_opPos():stdgo._internal.go.token.Token_pos.Pos return this.opPos;
    function set_opPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.opPos = v;
        return v;
    }
    public var op(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_op():stdgo._internal.go.token.Token_token.Token return this.op;
    function set_op(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.op = v;
        return v;
    }
    public var y(get, set) : Expr;
    function get_y():Expr return this.y;
    function set_y(v:Expr):Expr {
        this.y = v;
        return v;
    }
    public function new(?x:Expr, ?opPos:stdgo._internal.go.token.Token_pos.Pos, ?op:stdgo._internal.go.token.Token_token.Token, ?y:Expr) this = new stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr(x, opPos, op, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.KeyValueExpr_static_extension) abstract KeyValueExpr(stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr) from stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr to stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr {
    public var key(get, set) : Expr;
    function get_key():Expr return this.key;
    function set_key(v:Expr):Expr {
        this.key = v;
        return v;
    }
    public var colon(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_colon():stdgo._internal.go.token.Token_pos.Pos return this.colon;
    function set_colon(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.colon = v;
        return v;
    }
    public var value(get, set) : Expr;
    function get_value():Expr return this.value;
    function set_value(v:Expr):Expr {
        this.value = v;
        return v;
    }
    public function new(?key:Expr, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?value:Expr) this = new stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr(key, colon, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ArrayType_static_extension) abstract ArrayType(stdgo._internal.go.ast.Ast_arraytype.ArrayType) from stdgo._internal.go.ast.Ast_arraytype.ArrayType to stdgo._internal.go.ast.Ast_arraytype.ArrayType {
    public var lbrack(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lbrack():stdgo._internal.go.token.Token_pos.Pos return this.lbrack;
    function set_lbrack(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lbrack = v;
        return v;
    }
    public var len(get, set) : Expr;
    function get_len():Expr return this.len;
    function set_len(v:Expr):Expr {
        this.len = v;
        return v;
    }
    public var elt(get, set) : Expr;
    function get_elt():Expr return this.elt;
    function set_elt(v:Expr):Expr {
        this.elt = v;
        return v;
    }
    public function new(?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?len:Expr, ?elt:Expr) this = new stdgo._internal.go.ast.Ast_arraytype.ArrayType(lbrack, len, elt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.StructType_static_extension) abstract StructType(stdgo._internal.go.ast.Ast_structtype.StructType) from stdgo._internal.go.ast.Ast_structtype.StructType to stdgo._internal.go.ast.Ast_structtype.StructType {
    public var struct_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_struct_():stdgo._internal.go.token.Token_pos.Pos return this.struct_;
    function set_struct_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.struct_ = v;
        return v;
    }
    public var fields(get, set) : FieldList;
    function get_fields():FieldList return this.fields;
    function set_fields(v:FieldList):FieldList {
        this.fields = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public var incomplete(get, set) : Bool;
    function get_incomplete():Bool return this.incomplete;
    function set_incomplete(v:Bool):Bool {
        this.incomplete = v;
        return v;
    }
    public function new(?struct_:stdgo._internal.go.token.Token_pos.Pos, ?fields:FieldList, ?incomplete:Bool) this = new stdgo._internal.go.ast.Ast_structtype.StructType(struct_, (fields : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), incomplete);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.FuncType_static_extension) abstract FuncType(stdgo._internal.go.ast.Ast_functype.FuncType) from stdgo._internal.go.ast.Ast_functype.FuncType to stdgo._internal.go.ast.Ast_functype.FuncType {
    public var func(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_func():stdgo._internal.go.token.Token_pos.Pos return this.func;
    function set_func(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.func = v;
        return v;
    }
    public var typeParams(get, set) : FieldList;
    function get_typeParams():FieldList return this.typeParams;
    function set_typeParams(v:FieldList):FieldList {
        this.typeParams = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public var params(get, set) : FieldList;
    function get_params():FieldList return this.params;
    function set_params(v:FieldList):FieldList {
        this.params = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public var results(get, set) : FieldList;
    function get_results():FieldList return this.results;
    function set_results(v:FieldList):FieldList {
        this.results = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public function new(?func:stdgo._internal.go.token.Token_pos.Pos, ?typeParams:FieldList, ?params:FieldList, ?results:FieldList) this = new stdgo._internal.go.ast.Ast_functype.FuncType(func, (typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), (params : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), (results : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.InterfaceType_static_extension) abstract InterfaceType(stdgo._internal.go.ast.Ast_interfacetype.InterfaceType) from stdgo._internal.go.ast.Ast_interfacetype.InterfaceType to stdgo._internal.go.ast.Ast_interfacetype.InterfaceType {
    public var interface_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_interface_():stdgo._internal.go.token.Token_pos.Pos return this.interface_;
    function set_interface_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.interface_ = v;
        return v;
    }
    public var methods(get, set) : FieldList;
    function get_methods():FieldList return this.methods;
    function set_methods(v:FieldList):FieldList {
        this.methods = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public var incomplete(get, set) : Bool;
    function get_incomplete():Bool return this.incomplete;
    function set_incomplete(v:Bool):Bool {
        this.incomplete = v;
        return v;
    }
    public function new(?interface_:stdgo._internal.go.token.Token_pos.Pos, ?methods:FieldList, ?incomplete:Bool) this = new stdgo._internal.go.ast.Ast_interfacetype.InterfaceType(interface_, (methods : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), incomplete);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.MapType_static_extension) abstract MapType(stdgo._internal.go.ast.Ast_maptype.MapType) from stdgo._internal.go.ast.Ast_maptype.MapType to stdgo._internal.go.ast.Ast_maptype.MapType {
    public var map_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_map_():stdgo._internal.go.token.Token_pos.Pos return this.map_;
    function set_map_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.map_ = v;
        return v;
    }
    public var key(get, set) : Expr;
    function get_key():Expr return this.key;
    function set_key(v:Expr):Expr {
        this.key = v;
        return v;
    }
    public var value(get, set) : Expr;
    function get_value():Expr return this.value;
    function set_value(v:Expr):Expr {
        this.value = v;
        return v;
    }
    public function new(?map_:stdgo._internal.go.token.Token_pos.Pos, ?key:Expr, ?value:Expr) this = new stdgo._internal.go.ast.Ast_maptype.MapType(map_, key, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ChanType_static_extension) abstract ChanType(stdgo._internal.go.ast.Ast_chantype.ChanType) from stdgo._internal.go.ast.Ast_chantype.ChanType to stdgo._internal.go.ast.Ast_chantype.ChanType {
    public var begin(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_begin():stdgo._internal.go.token.Token_pos.Pos return this.begin;
    function set_begin(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.begin = v;
        return v;
    }
    public var arrow(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_arrow():stdgo._internal.go.token.Token_pos.Pos return this.arrow;
    function set_arrow(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.arrow = v;
        return v;
    }
    public var dir(get, set) : ChanDir;
    function get_dir():ChanDir return this.dir;
    function set_dir(v:ChanDir):ChanDir {
        this.dir = v;
        return v;
    }
    public var value(get, set) : Expr;
    function get_value():Expr return this.value;
    function set_value(v:Expr):Expr {
        this.value = v;
        return v;
    }
    public function new(?begin:stdgo._internal.go.token.Token_pos.Pos, ?arrow:stdgo._internal.go.token.Token_pos.Pos, ?dir:ChanDir, ?value:Expr) this = new stdgo._internal.go.ast.Ast_chantype.ChanType(begin, arrow, dir, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BadStmt_static_extension) abstract BadStmt(stdgo._internal.go.ast.Ast_badstmt.BadStmt) from stdgo._internal.go.ast.Ast_badstmt.BadStmt to stdgo._internal.go.ast.Ast_badstmt.BadStmt {
    public var from(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_from():stdgo._internal.go.token.Token_pos.Pos return this.from;
    function set_from(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.from = v;
        return v;
    }
    public var to(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_to():stdgo._internal.go.token.Token_pos.Pos return this.to;
    function set_to(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.to = v;
        return v;
    }
    public function new(?from:stdgo._internal.go.token.Token_pos.Pos, ?to:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_badstmt.BadStmt(from, to);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.DeclStmt_static_extension) abstract DeclStmt(stdgo._internal.go.ast.Ast_declstmt.DeclStmt) from stdgo._internal.go.ast.Ast_declstmt.DeclStmt to stdgo._internal.go.ast.Ast_declstmt.DeclStmt {
    public var decl(get, set) : Decl;
    function get_decl():Decl return this.decl;
    function set_decl(v:Decl):Decl {
        this.decl = v;
        return v;
    }
    public function new(?decl:Decl) this = new stdgo._internal.go.ast.Ast_declstmt.DeclStmt(decl);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.EmptyStmt_static_extension) abstract EmptyStmt(stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt) from stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt to stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt {
    public var semicolon(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_semicolon():stdgo._internal.go.token.Token_pos.Pos return this.semicolon;
    function set_semicolon(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.semicolon = v;
        return v;
    }
    public var implicit(get, set) : Bool;
    function get_implicit():Bool return this.implicit;
    function set_implicit(v:Bool):Bool {
        this.implicit = v;
        return v;
    }
    public function new(?semicolon:stdgo._internal.go.token.Token_pos.Pos, ?implicit:Bool) this = new stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt(semicolon, implicit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.LabeledStmt_static_extension) abstract LabeledStmt(stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt) from stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt to stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt {
    public var label(get, set) : Ident;
    function get_label():Ident return this.label;
    function set_label(v:Ident):Ident {
        this.label = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public var colon(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_colon():stdgo._internal.go.token.Token_pos.Pos return this.colon;
    function set_colon(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.colon = v;
        return v;
    }
    public var stmt(get, set) : Stmt;
    function get_stmt():Stmt return this.stmt;
    function set_stmt(v:Stmt):Stmt {
        this.stmt = v;
        return v;
    }
    public function new(?label:Ident, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?stmt:Stmt) this = new stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt((label : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), colon, stmt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ExprStmt_static_extension) abstract ExprStmt(stdgo._internal.go.ast.Ast_exprstmt.ExprStmt) from stdgo._internal.go.ast.Ast_exprstmt.ExprStmt to stdgo._internal.go.ast.Ast_exprstmt.ExprStmt {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public function new(?x:Expr) this = new stdgo._internal.go.ast.Ast_exprstmt.ExprStmt(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.SendStmt_static_extension) abstract SendStmt(stdgo._internal.go.ast.Ast_sendstmt.SendStmt) from stdgo._internal.go.ast.Ast_sendstmt.SendStmt to stdgo._internal.go.ast.Ast_sendstmt.SendStmt {
    public var chan(get, set) : Expr;
    function get_chan():Expr return this.chan;
    function set_chan(v:Expr):Expr {
        this.chan = v;
        return v;
    }
    public var arrow(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_arrow():stdgo._internal.go.token.Token_pos.Pos return this.arrow;
    function set_arrow(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.arrow = v;
        return v;
    }
    public var value(get, set) : Expr;
    function get_value():Expr return this.value;
    function set_value(v:Expr):Expr {
        this.value = v;
        return v;
    }
    public function new(?chan:Expr, ?arrow:stdgo._internal.go.token.Token_pos.Pos, ?value:Expr) this = new stdgo._internal.go.ast.Ast_sendstmt.SendStmt(chan, arrow, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.IncDecStmt_static_extension) abstract IncDecStmt(stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt) from stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt to stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var tokPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_tokPos():stdgo._internal.go.token.Token_pos.Pos return this.tokPos;
    function set_tokPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.tokPos = v;
        return v;
    }
    public var tok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_tok():stdgo._internal.go.token.Token_token.Token return this.tok;
    function set_tok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.tok = v;
        return v;
    }
    public function new(?x:Expr, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token) this = new stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt(x, tokPos, tok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.AssignStmt_static_extension) abstract AssignStmt(stdgo._internal.go.ast.Ast_assignstmt.AssignStmt) from stdgo._internal.go.ast.Ast_assignstmt.AssignStmt to stdgo._internal.go.ast.Ast_assignstmt.AssignStmt {
    public var lhs(get, set) : Array<Expr>;
    function get_lhs():Array<Expr> return [for (i in this.lhs) i];
    function set_lhs(v:Array<Expr>):Array<Expr> {
        this.lhs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var tokPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_tokPos():stdgo._internal.go.token.Token_pos.Pos return this.tokPos;
    function set_tokPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.tokPos = v;
        return v;
    }
    public var tok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_tok():stdgo._internal.go.token.Token_token.Token return this.tok;
    function set_tok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.tok = v;
        return v;
    }
    public var rhs(get, set) : Array<Expr>;
    function get_rhs():Array<Expr> return [for (i in this.rhs) i];
    function set_rhs(v:Array<Expr>):Array<Expr> {
        this.rhs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public function new(?lhs:Array<Expr>, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?rhs:Array<Expr>) this = new stdgo._internal.go.ast.Ast_assignstmt.AssignStmt(([for (i in lhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), tokPos, tok, ([for (i in rhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.GoStmt_static_extension) abstract GoStmt(stdgo._internal.go.ast.Ast_gostmt.GoStmt) from stdgo._internal.go.ast.Ast_gostmt.GoStmt to stdgo._internal.go.ast.Ast_gostmt.GoStmt {
    public var go(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_go():stdgo._internal.go.token.Token_pos.Pos return this.go;
    function set_go(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.go = v;
        return v;
    }
    public var call(get, set) : CallExpr;
    function get_call():CallExpr return this.call;
    function set_call(v:CallExpr):CallExpr {
        this.call = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        return v;
    }
    public function new(?go:stdgo._internal.go.token.Token_pos.Pos, ?call:CallExpr) this = new stdgo._internal.go.ast.Ast_gostmt.GoStmt(go, (call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.DeferStmt_static_extension) abstract DeferStmt(stdgo._internal.go.ast.Ast_deferstmt.DeferStmt) from stdgo._internal.go.ast.Ast_deferstmt.DeferStmt to stdgo._internal.go.ast.Ast_deferstmt.DeferStmt {
    public var defer(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_defer():stdgo._internal.go.token.Token_pos.Pos return this.defer;
    function set_defer(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.defer = v;
        return v;
    }
    public var call(get, set) : CallExpr;
    function get_call():CallExpr return this.call;
    function set_call(v:CallExpr):CallExpr {
        this.call = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        return v;
    }
    public function new(?defer:stdgo._internal.go.token.Token_pos.Pos, ?call:CallExpr) this = new stdgo._internal.go.ast.Ast_deferstmt.DeferStmt(defer, (call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ReturnStmt_static_extension) abstract ReturnStmt(stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt) from stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt to stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt {
    public var return_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_return_():stdgo._internal.go.token.Token_pos.Pos return this.return_;
    function set_return_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.return_ = v;
        return v;
    }
    public var results(get, set) : Array<Expr>;
    function get_results():Array<Expr> return [for (i in this.results) i];
    function set_results(v:Array<Expr>):Array<Expr> {
        this.results = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public function new(?return_:stdgo._internal.go.token.Token_pos.Pos, ?results:Array<Expr>) this = new stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt(return_, ([for (i in results) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BranchStmt_static_extension) abstract BranchStmt(stdgo._internal.go.ast.Ast_branchstmt.BranchStmt) from stdgo._internal.go.ast.Ast_branchstmt.BranchStmt to stdgo._internal.go.ast.Ast_branchstmt.BranchStmt {
    public var tokPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_tokPos():stdgo._internal.go.token.Token_pos.Pos return this.tokPos;
    function set_tokPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.tokPos = v;
        return v;
    }
    public var tok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_tok():stdgo._internal.go.token.Token_token.Token return this.tok;
    function set_tok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.tok = v;
        return v;
    }
    public var label(get, set) : Ident;
    function get_label():Ident return this.label;
    function set_label(v:Ident):Ident {
        this.label = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public function new(?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?label:Ident) this = new stdgo._internal.go.ast.Ast_branchstmt.BranchStmt(tokPos, tok, (label : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BlockStmt_static_extension) abstract BlockStmt(stdgo._internal.go.ast.Ast_blockstmt.BlockStmt) from stdgo._internal.go.ast.Ast_blockstmt.BlockStmt to stdgo._internal.go.ast.Ast_blockstmt.BlockStmt {
    public var lbrace(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lbrace():stdgo._internal.go.token.Token_pos.Pos return this.lbrace;
    function set_lbrace(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lbrace = v;
        return v;
    }
    public var list(get, set) : Array<Stmt>;
    function get_list():Array<Stmt> return [for (i in this.list) i];
    function set_list(v:Array<Stmt>):Array<Stmt> {
        this.list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        return v;
    }
    public var rbrace(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rbrace():stdgo._internal.go.token.Token_pos.Pos return this.rbrace;
    function set_rbrace(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rbrace = v;
        return v;
    }
    public function new(?lbrace:stdgo._internal.go.token.Token_pos.Pos, ?list:Array<Stmt>, ?rbrace:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_blockstmt.BlockStmt(lbrace, ([for (i in list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>), rbrace);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.IfStmt_static_extension) abstract IfStmt(stdgo._internal.go.ast.Ast_ifstmt.IfStmt) from stdgo._internal.go.ast.Ast_ifstmt.IfStmt to stdgo._internal.go.ast.Ast_ifstmt.IfStmt {
    public var if_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_if_():stdgo._internal.go.token.Token_pos.Pos return this.if_;
    function set_if_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.if_ = v;
        return v;
    }
    public var init(get, set) : Stmt;
    function get_init():Stmt return this.init;
    function set_init(v:Stmt):Stmt {
        this.init = v;
        return v;
    }
    public var cond(get, set) : Expr;
    function get_cond():Expr return this.cond;
    function set_cond(v:Expr):Expr {
        this.cond = v;
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public var else_(get, set) : Stmt;
    function get_else_():Stmt return this.else_;
    function set_else_(v:Stmt):Stmt {
        this.else_ = v;
        return v;
    }
    public function new(?if_:stdgo._internal.go.token.Token_pos.Pos, ?init:Stmt, ?cond:Expr, ?body:BlockStmt, ?else_:Stmt) this = new stdgo._internal.go.ast.Ast_ifstmt.IfStmt(if_, init, cond, (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>), else_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.CaseClause_static_extension) abstract CaseClause(stdgo._internal.go.ast.Ast_caseclause.CaseClause) from stdgo._internal.go.ast.Ast_caseclause.CaseClause to stdgo._internal.go.ast.Ast_caseclause.CaseClause {
    public var case_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_case_():stdgo._internal.go.token.Token_pos.Pos return this.case_;
    function set_case_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.case_ = v;
        return v;
    }
    public var list(get, set) : Array<Expr>;
    function get_list():Array<Expr> return [for (i in this.list) i];
    function set_list(v:Array<Expr>):Array<Expr> {
        this.list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var colon(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_colon():stdgo._internal.go.token.Token_pos.Pos return this.colon;
    function set_colon(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.colon = v;
        return v;
    }
    public var body(get, set) : Array<Stmt>;
    function get_body():Array<Stmt> return [for (i in this.body) i];
    function set_body(v:Array<Stmt>):Array<Stmt> {
        this.body = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        return v;
    }
    public function new(?case_:stdgo._internal.go.token.Token_pos.Pos, ?list:Array<Expr>, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?body:Array<Stmt>) this = new stdgo._internal.go.ast.Ast_caseclause.CaseClause(case_, ([for (i in list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), colon, ([for (i in body) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.SwitchStmt_static_extension) abstract SwitchStmt(stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt) from stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt to stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt {
    public var switch_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_switch_():stdgo._internal.go.token.Token_pos.Pos return this.switch_;
    function set_switch_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.switch_ = v;
        return v;
    }
    public var init(get, set) : Stmt;
    function get_init():Stmt return this.init;
    function set_init(v:Stmt):Stmt {
        this.init = v;
        return v;
    }
    public var tag(get, set) : Expr;
    function get_tag():Expr return this.tag;
    function set_tag(v:Expr):Expr {
        this.tag = v;
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?switch_:stdgo._internal.go.token.Token_pos.Pos, ?init:Stmt, ?tag:Expr, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt(switch_, init, tag, (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.TypeSwitchStmt_static_extension) abstract TypeSwitchStmt(stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt) from stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt to stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt {
    public var switch_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_switch_():stdgo._internal.go.token.Token_pos.Pos return this.switch_;
    function set_switch_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.switch_ = v;
        return v;
    }
    public var init(get, set) : Stmt;
    function get_init():Stmt return this.init;
    function set_init(v:Stmt):Stmt {
        this.init = v;
        return v;
    }
    public var assign(get, set) : Stmt;
    function get_assign():Stmt return this.assign;
    function set_assign(v:Stmt):Stmt {
        this.assign = v;
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?switch_:stdgo._internal.go.token.Token_pos.Pos, ?init:Stmt, ?assign:Stmt, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt(switch_, init, assign, (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.CommClause_static_extension) abstract CommClause(stdgo._internal.go.ast.Ast_commclause.CommClause) from stdgo._internal.go.ast.Ast_commclause.CommClause to stdgo._internal.go.ast.Ast_commclause.CommClause {
    public var case_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_case_():stdgo._internal.go.token.Token_pos.Pos return this.case_;
    function set_case_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.case_ = v;
        return v;
    }
    public var comm(get, set) : Stmt;
    function get_comm():Stmt return this.comm;
    function set_comm(v:Stmt):Stmt {
        this.comm = v;
        return v;
    }
    public var colon(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_colon():stdgo._internal.go.token.Token_pos.Pos return this.colon;
    function set_colon(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.colon = v;
        return v;
    }
    public var body(get, set) : Array<Stmt>;
    function get_body():Array<Stmt> return [for (i in this.body) i];
    function set_body(v:Array<Stmt>):Array<Stmt> {
        this.body = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        return v;
    }
    public function new(?case_:stdgo._internal.go.token.Token_pos.Pos, ?comm:Stmt, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?body:Array<Stmt>) this = new stdgo._internal.go.ast.Ast_commclause.CommClause(case_, comm, colon, ([for (i in body) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.SelectStmt_static_extension) abstract SelectStmt(stdgo._internal.go.ast.Ast_selectstmt.SelectStmt) from stdgo._internal.go.ast.Ast_selectstmt.SelectStmt to stdgo._internal.go.ast.Ast_selectstmt.SelectStmt {
    public var select(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_select():stdgo._internal.go.token.Token_pos.Pos return this.select;
    function set_select(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.select = v;
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?select:stdgo._internal.go.token.Token_pos.Pos, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_selectstmt.SelectStmt(select, (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ForStmt_static_extension) abstract ForStmt(stdgo._internal.go.ast.Ast_forstmt.ForStmt) from stdgo._internal.go.ast.Ast_forstmt.ForStmt to stdgo._internal.go.ast.Ast_forstmt.ForStmt {
    public var for_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_for_():stdgo._internal.go.token.Token_pos.Pos return this.for_;
    function set_for_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.for_ = v;
        return v;
    }
    public var init(get, set) : Stmt;
    function get_init():Stmt return this.init;
    function set_init(v:Stmt):Stmt {
        this.init = v;
        return v;
    }
    public var cond(get, set) : Expr;
    function get_cond():Expr return this.cond;
    function set_cond(v:Expr):Expr {
        this.cond = v;
        return v;
    }
    public var post(get, set) : Stmt;
    function get_post():Stmt return this.post;
    function set_post(v:Stmt):Stmt {
        this.post = v;
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?for_:stdgo._internal.go.token.Token_pos.Pos, ?init:Stmt, ?cond:Expr, ?post:Stmt, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_forstmt.ForStmt(for_, init, cond, post, (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.RangeStmt_static_extension) abstract RangeStmt(stdgo._internal.go.ast.Ast_rangestmt.RangeStmt) from stdgo._internal.go.ast.Ast_rangestmt.RangeStmt to stdgo._internal.go.ast.Ast_rangestmt.RangeStmt {
    public var for_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_for_():stdgo._internal.go.token.Token_pos.Pos return this.for_;
    function set_for_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.for_ = v;
        return v;
    }
    public var key(get, set) : Expr;
    function get_key():Expr return this.key;
    function set_key(v:Expr):Expr {
        this.key = v;
        return v;
    }
    public var value(get, set) : Expr;
    function get_value():Expr return this.value;
    function set_value(v:Expr):Expr {
        this.value = v;
        return v;
    }
    public var tokPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_tokPos():stdgo._internal.go.token.Token_pos.Pos return this.tokPos;
    function set_tokPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.tokPos = v;
        return v;
    }
    public var tok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_tok():stdgo._internal.go.token.Token_token.Token return this.tok;
    function set_tok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.tok = v;
        return v;
    }
    public var range(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_range():stdgo._internal.go.token.Token_pos.Pos return this.range;
    function set_range(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.range = v;
        return v;
    }
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?for_:stdgo._internal.go.token.Token_pos.Pos, ?key:Expr, ?value:Expr, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?range:stdgo._internal.go.token.Token_pos.Pos, ?x:Expr, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_rangestmt.RangeStmt(for_, key, value, tokPos, tok, range, x, (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ImportSpec_static_extension) abstract ImportSpec(stdgo._internal.go.ast.Ast_importspec.ImportSpec) from stdgo._internal.go.ast.Ast_importspec.ImportSpec to stdgo._internal.go.ast.Ast_importspec.ImportSpec {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var name(get, set) : Ident;
    function get_name():Ident return this.name;
    function set_name(v:Ident):Ident {
        this.name = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public var path(get, set) : BasicLit;
    function get_path():BasicLit return this.path;
    function set_path(v:BasicLit):BasicLit {
        this.path = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        return v;
    }
    public var comment(get, set) : CommentGroup;
    function get_comment():CommentGroup return this.comment;
    function set_comment(v:CommentGroup):CommentGroup {
        this.comment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var endPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_endPos():stdgo._internal.go.token.Token_pos.Pos return this.endPos;
    function set_endPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.endPos = v;
        return v;
    }
    public function new(?doc:CommentGroup, ?name:Ident, ?path:BasicLit, ?comment:CommentGroup, ?endPos:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_importspec.ImportSpec((doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), (name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), (path : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), (comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), endPos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.ValueSpec_static_extension) abstract ValueSpec(stdgo._internal.go.ast.Ast_valuespec.ValueSpec) from stdgo._internal.go.ast.Ast_valuespec.ValueSpec to stdgo._internal.go.ast.Ast_valuespec.ValueSpec {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var names(get, set) : Array<Ident>;
    function get_names():Array<Ident> return [for (i in this.names) i];
    function set_names(v:Array<Ident>):Array<Ident> {
        this.names = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        return v;
    }
    public var type(get, set) : Expr;
    function get_type():Expr return this.type;
    function set_type(v:Expr):Expr {
        this.type = v;
        return v;
    }
    public var values(get, set) : Array<Expr>;
    function get_values():Array<Expr> return [for (i in this.values) i];
    function set_values(v:Array<Expr>):Array<Expr> {
        this.values = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var comment(get, set) : CommentGroup;
    function get_comment():CommentGroup return this.comment;
    function set_comment(v:CommentGroup):CommentGroup {
        this.comment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public function new(?doc:CommentGroup, ?names:Array<Ident>, ?type:Expr, ?values:Array<Expr>, ?comment:CommentGroup) this = new stdgo._internal.go.ast.Ast_valuespec.ValueSpec((doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), ([for (i in names) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>), type, ([for (i in values) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), (comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.TypeSpec_static_extension) abstract TypeSpec(stdgo._internal.go.ast.Ast_typespec.TypeSpec) from stdgo._internal.go.ast.Ast_typespec.TypeSpec to stdgo._internal.go.ast.Ast_typespec.TypeSpec {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var name(get, set) : Ident;
    function get_name():Ident return this.name;
    function set_name(v:Ident):Ident {
        this.name = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public var typeParams(get, set) : FieldList;
    function get_typeParams():FieldList return this.typeParams;
    function set_typeParams(v:FieldList):FieldList {
        this.typeParams = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public var assign(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_assign():stdgo._internal.go.token.Token_pos.Pos return this.assign;
    function set_assign(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.assign = v;
        return v;
    }
    public var type(get, set) : Expr;
    function get_type():Expr return this.type;
    function set_type(v:Expr):Expr {
        this.type = v;
        return v;
    }
    public var comment(get, set) : CommentGroup;
    function get_comment():CommentGroup return this.comment;
    function set_comment(v:CommentGroup):CommentGroup {
        this.comment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public function new(?doc:CommentGroup, ?name:Ident, ?typeParams:FieldList, ?assign:stdgo._internal.go.token.Token_pos.Pos, ?type:Expr, ?comment:CommentGroup) this = new stdgo._internal.go.ast.Ast_typespec.TypeSpec((doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), (name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), (typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), assign, type, (comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.BadDecl_static_extension) abstract BadDecl(stdgo._internal.go.ast.Ast_baddecl.BadDecl) from stdgo._internal.go.ast.Ast_baddecl.BadDecl to stdgo._internal.go.ast.Ast_baddecl.BadDecl {
    public var from(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_from():stdgo._internal.go.token.Token_pos.Pos return this.from;
    function set_from(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.from = v;
        return v;
    }
    public var to(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_to():stdgo._internal.go.token.Token_pos.Pos return this.to;
    function set_to(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.to = v;
        return v;
    }
    public function new(?from:stdgo._internal.go.token.Token_pos.Pos, ?to:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_baddecl.BadDecl(from, to);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.GenDecl_static_extension) abstract GenDecl(stdgo._internal.go.ast.Ast_gendecl.GenDecl) from stdgo._internal.go.ast.Ast_gendecl.GenDecl to stdgo._internal.go.ast.Ast_gendecl.GenDecl {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var tokPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_tokPos():stdgo._internal.go.token.Token_pos.Pos return this.tokPos;
    function set_tokPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.tokPos = v;
        return v;
    }
    public var tok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get_tok():stdgo._internal.go.token.Token_token.Token return this.tok;
    function set_tok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this.tok = v;
        return v;
    }
    public var lparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_lparen():stdgo._internal.go.token.Token_pos.Pos return this.lparen;
    function set_lparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.lparen = v;
        return v;
    }
    public var specs(get, set) : Array<Spec>;
    function get_specs():Array<Spec> return [for (i in this.specs) i];
    function set_specs(v:Array<Spec>):Array<Spec> {
        this.specs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        return v;
    }
    public var rparen(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_rparen():stdgo._internal.go.token.Token_pos.Pos return this.rparen;
    function set_rparen(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.rparen = v;
        return v;
    }
    public function new(?doc:CommentGroup, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?lparen:stdgo._internal.go.token.Token_pos.Pos, ?specs:Array<Spec>, ?rparen:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_gendecl.GenDecl((doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), tokPos, tok, lparen, ([for (i in specs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>), rparen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.FuncDecl_static_extension) abstract FuncDecl(stdgo._internal.go.ast.Ast_funcdecl.FuncDecl) from stdgo._internal.go.ast.Ast_funcdecl.FuncDecl to stdgo._internal.go.ast.Ast_funcdecl.FuncDecl {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var recv(get, set) : FieldList;
    function get_recv():FieldList return this.recv;
    function set_recv(v:FieldList):FieldList {
        this.recv = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return v;
    }
    public var name(get, set) : Ident;
    function get_name():Ident return this.name;
    function set_name(v:Ident):Ident {
        this.name = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public var type(get, set) : FuncType;
    function get_type():FuncType return this.type;
    function set_type(v:FuncType):FuncType {
        this.type = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        return v;
    }
    public var body(get, set) : BlockStmt;
    function get_body():BlockStmt return this.body;
    function set_body(v:BlockStmt):BlockStmt {
        this.body = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return v;
    }
    public function new(?doc:CommentGroup, ?recv:FieldList, ?name:Ident, ?type:FuncType, ?body:BlockStmt) this = new stdgo._internal.go.ast.Ast_funcdecl.FuncDecl((doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), (recv : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), (name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), (type : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), (body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.File_static_extension) abstract File(stdgo._internal.go.ast.Ast_file.File) from stdgo._internal.go.ast.Ast_file.File to stdgo._internal.go.ast.Ast_file.File {
    public var doc(get, set) : CommentGroup;
    function get_doc():CommentGroup return this.doc;
    function set_doc(v:CommentGroup):CommentGroup {
        this.doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var package_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_package_():stdgo._internal.go.token.Token_pos.Pos return this.package_;
    function set_package_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.package_ = v;
        return v;
    }
    public var name(get, set) : Ident;
    function get_name():Ident return this.name;
    function set_name(v:Ident):Ident {
        this.name = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public var decls(get, set) : Array<Decl>;
    function get_decls():Array<Decl> return [for (i in this.decls) i];
    function set_decls(v:Array<Decl>):Array<Decl> {
        this.decls = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        return v;
    }
    public var fileStart(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_fileStart():stdgo._internal.go.token.Token_pos.Pos return this.fileStart;
    function set_fileStart(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.fileStart = v;
        return v;
    }
    public var fileEnd(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_fileEnd():stdgo._internal.go.token.Token_pos.Pos return this.fileEnd;
    function set_fileEnd(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.fileEnd = v;
        return v;
    }
    public var scope(get, set) : Scope;
    function get_scope():Scope return this.scope;
    function set_scope(v:Scope):Scope {
        this.scope = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return v;
    }
    public var imports(get, set) : Array<ImportSpec>;
    function get_imports():Array<ImportSpec> return [for (i in this.imports) i];
    function set_imports(v:Array<ImportSpec>):Array<ImportSpec> {
        this.imports = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        return v;
    }
    public var unresolved(get, set) : Array<Ident>;
    function get_unresolved():Array<Ident> return [for (i in this.unresolved) i];
    function set_unresolved(v:Array<Ident>):Array<Ident> {
        this.unresolved = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        return v;
    }
    public var comments(get, set) : Array<CommentGroup>;
    function get_comments():Array<CommentGroup> return [for (i in this.comments) i];
    function set_comments(v:Array<CommentGroup>):Array<CommentGroup> {
        this.comments = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return v;
    }
    public var goVersion(get, set) : String;
    function get_goVersion():String return this.goVersion;
    function set_goVersion(v:String):String {
        this.goVersion = (v : stdgo.GoString);
        return v;
    }
    public function new(?doc:CommentGroup, ?package_:stdgo._internal.go.token.Token_pos.Pos, ?name:Ident, ?decls:Array<Decl>, ?fileStart:stdgo._internal.go.token.Token_pos.Pos, ?fileEnd:stdgo._internal.go.token.Token_pos.Pos, ?scope:Scope, ?imports:Array<ImportSpec>, ?unresolved:Array<Ident>, ?comments:Array<CommentGroup>, ?goVersion:String) this = new stdgo._internal.go.ast.Ast_file.File(
(doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>),
package_,
(name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>),
([for (i in decls) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>),
fileStart,
fileEnd,
(scope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>),
([for (i in imports) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>),
([for (i in unresolved) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>),
([for (i in comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>),
(goVersion : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.Package_static_extension) abstract Package(stdgo._internal.go.ast.Ast_package.Package) from stdgo._internal.go.ast.Ast_package.Package to stdgo._internal.go.ast.Ast_package.Package {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var scope(get, set) : Scope;
    function get_scope():Scope return this.scope;
    function set_scope(v:Scope):Scope {
        this.scope = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return v;
    }
    public var imports(get, set) : Map<String, Object>;
    function get_imports():Map<String, Object> return {
        final __obj__:Map<String, Object> = [];
        for (key => value in this.imports) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_imports(v:Map<String, Object>):Map<String, Object> {
        this.imports = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
            };
            __obj__;
        };
        return v;
    }
    public var files(get, set) : Map<String, File>;
    function get_files():Map<String, File> return {
        final __obj__:Map<String, File> = [];
        for (key => value in this.files) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_files(v:Map<String, File>):Map<String, File> {
        this.files = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?name:String, ?scope:Scope, ?imports:Map<String, Object>, ?files:Map<String, File>) this = new stdgo._internal.go.ast.Ast_package.Package((name : stdgo.GoString), (scope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
        for (key => value in imports) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>();
        for (key => value in files) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.T_commentListReader_static_extension) @:dox(hide) abstract T_commentListReader(stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader) from stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader to stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader {
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _list(get, set) : Array<CommentGroup>;
    function get__list():Array<CommentGroup> return [for (i in this._list) i];
    function set__list(v:Array<CommentGroup>):Array<CommentGroup> {
        this._list = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = (v : stdgo.GoInt);
        return v;
    }
    public var _comment(get, set) : CommentGroup;
    function get__comment():CommentGroup return this._comment;
    function set__comment(v:CommentGroup):CommentGroup {
        this._comment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__pos():stdgo._internal.go.token.Token_position.Position return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._pos = v;
        return v;
    }
    public var _end(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__end():stdgo._internal.go.token.Token_position.Position return this._end;
    function set__end(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._end = v;
        return v;
    }
    public function new(?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_list:Array<CommentGroup>, ?_index:StdTypes.Int, ?_comment:CommentGroup, ?_pos:stdgo._internal.go.token.Token_position.Position, ?_end:stdgo._internal.go.token.Token_position.Position) this = new stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader((_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>), (_index : stdgo.GoInt), (_comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), _pos, _end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.T_posSpan_static_extension) @:dox(hide) abstract T_posSpan(stdgo._internal.go.ast.Ast_t_posspan.T_posSpan) from stdgo._internal.go.ast.Ast_t_posspan.T_posSpan to stdgo._internal.go.ast.Ast_t_posspan.T_posSpan {
    public var start(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_start():stdgo._internal.go.token.Token_pos.Pos return this.start;
    function set_start(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.start = v;
        return v;
    }
    public var end(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_end():stdgo._internal.go.token.Token_pos.Pos return this.end;
    function set_end(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.end = v;
        return v;
    }
    public function new(?start:stdgo._internal.go.token.Token_pos.Pos, ?end:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.ast.Ast_t_posspan.T_posSpan(start, end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.T_cgPos_static_extension) @:dox(hide) abstract T_cgPos(stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos) from stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos to stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos {
    public var _left(get, set) : Bool;
    function get__left():Bool return this._left;
    function set__left(v:Bool):Bool {
        this._left = v;
        return v;
    }
    public var _cg(get, set) : CommentGroup;
    function get__cg():CommentGroup return this._cg;
    function set__cg(v:CommentGroup):CommentGroup {
        this._cg = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public function new(?_left:Bool, ?_cg:CommentGroup) this = new stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos(_left, (_cg : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.T_printer_static_extension) @:dox(hide) abstract T_printer(stdgo._internal.go.ast.Ast_t_printer.T_printer) from stdgo._internal.go.ast.Ast_t_printer.T_printer to stdgo._internal.go.ast.Ast_t_printer.T_printer {
    public var _output(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__output():stdgo._internal.io.Io_writer.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._output = v;
        return v;
    }
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _filter(get, set) : FieldFilter;
    function get__filter():FieldFilter return this._filter;
    function set__filter(v:FieldFilter):FieldFilter {
        this._filter = v;
        return v;
    }
    public var _ptrmap(get, set) : Map<stdgo.AnyInterface, StdTypes.Int>;
    function get__ptrmap():Map<stdgo.AnyInterface, StdTypes.Int> return {
        final __obj__:Map<stdgo.AnyInterface, StdTypes.Int> = [];
        for (key => value in this._ptrmap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__ptrmap(v:Map<stdgo.AnyInterface, StdTypes.Int>):Map<stdgo.AnyInterface, StdTypes.Int> {
        this._ptrmap = {
            final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _indent(get, set) : StdTypes.Int;
    function get__indent():StdTypes.Int return this._indent;
    function set__indent(v:StdTypes.Int):StdTypes.Int {
        this._indent = (v : stdgo.GoInt);
        return v;
    }
    public var _last(get, set) : std.UInt;
    function get__last():std.UInt return this._last;
    function set__last(v:std.UInt):std.UInt {
        this._last = (v : stdgo.GoUInt8);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_filter:FieldFilter, ?_ptrmap:Map<stdgo.AnyInterface, StdTypes.Int>, ?_indent:StdTypes.Int, ?_last:std.UInt, ?_line:StdTypes.Int) this = new stdgo._internal.go.ast.Ast_t_printer.T_printer(_output, (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), _filter, {
        final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>();
        for (key => value in _ptrmap) {
            __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.GoInt);
        };
        __obj__;
    }, (_indent : stdgo.GoInt), (_last : stdgo.GoUInt8), (_line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.T_localError_static_extension) @:dox(hide) abstract T_localError(stdgo._internal.go.ast.Ast_t_localerror.T_localError) from stdgo._internal.go.ast.Ast_t_localerror.T_localError to stdgo._internal.go.ast.Ast_t_localerror.T_localError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.go.ast.Ast_t_localerror.T_localError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.T_pkgBuilder_static_extension) @:dox(hide) abstract T_pkgBuilder(stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder) from stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder to stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder {
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _errors(get, set) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList;
    function get__errors():stdgo._internal.go.scanner.Scanner_errorlist.ErrorList return this._errors;
    function set__errors(v:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo._internal.go.scanner.Scanner_errorlist.ErrorList {
        this._errors = v;
        return v;
    }
    public function new(?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_errors:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList) this = new stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder((_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), _errors);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.Scope_static_extension) abstract Scope(stdgo._internal.go.ast.Ast_scope.Scope) from stdgo._internal.go.ast.Ast_scope.Scope to stdgo._internal.go.ast.Ast_scope.Scope {
    public var outer(get, set) : Scope;
    function get_outer():Scope return this.outer;
    function set_outer(v:Scope):Scope {
        this.outer = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return v;
    }
    public var objects(get, set) : Map<String, Object>;
    function get_objects():Map<String, Object> return {
        final __obj__:Map<String, Object> = [];
        for (key => value in this.objects) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_objects(v:Map<String, Object>):Map<String, Object> {
        this.objects = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?outer:Scope, ?objects:Map<String, Object>) this = new stdgo._internal.go.ast.Ast_scope.Scope((outer : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
        for (key => value in objects) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.ast.Ast.Object_static_extension) abstract Object(stdgo._internal.go.ast.Ast_object.Object) from stdgo._internal.go.ast.Ast_object.Object to stdgo._internal.go.ast.Ast_object.Object {
    public var kind(get, set) : ObjKind;
    function get_kind():ObjKind return this.kind;
    function set_kind(v:ObjKind):ObjKind {
        this.kind = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var decl(get, set) : stdgo.AnyInterface;
    function get_decl():stdgo.AnyInterface return this.decl;
    function set_decl(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.decl = (v : stdgo.AnyInterface);
        return v;
    }
    public var data(get, set) : stdgo.AnyInterface;
    function get_data():stdgo.AnyInterface return this.data;
    function set_data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.data = (v : stdgo.AnyInterface);
        return v;
    }
    public var type(get, set) : stdgo.AnyInterface;
    function get_type():stdgo.AnyInterface return this.type;
    function set_type(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.type = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?kind:ObjKind, ?name:String, ?decl:stdgo.AnyInterface, ?data:stdgo.AnyInterface, ?type:stdgo.AnyInterface) this = new stdgo._internal.go.ast.Ast_object.Object(kind, (name : stdgo.GoString), (decl : stdgo.AnyInterface), (data : stdgo.AnyInterface), (type : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.go.ast.Ast_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.go.ast.Ast_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.go.ast.Ast_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.go.ast.Ast_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.go.ast.Ast_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.go.ast.Ast_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.go.ast.Ast_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.go.ast.Ast_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.go.ast.Ast_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.go.ast.Ast_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.go.ast.Ast_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.go.ast.Ast_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.go.ast.Ast_t__struct_6.T__struct_6;
typedef ChanDir = stdgo._internal.go.ast.Ast_chandir.ChanDir;
@:dox(hide) typedef T_byPos = stdgo._internal.go.ast.Ast_t_bypos.T_byPos;
typedef CommentMap = stdgo._internal.go.ast.Ast_commentmap.CommentMap;
@:dox(hide) typedef T_byInterval = stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval;
@:dox(hide) typedef T_nodeStack = stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack;
typedef Filter = stdgo._internal.go.ast.Ast_filter.Filter;
typedef MergeMode = stdgo._internal.go.ast.Ast_mergemode.MergeMode;
typedef FieldFilter = stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter;
typedef Importer = stdgo._internal.go.ast.Ast_importer.Importer;
typedef ObjKind = stdgo._internal.go.ast.Ast_objkind.ObjKind;
@:dox(hide) typedef T_inspector = stdgo._internal.go.ast.Ast_t_inspector.T_inspector;
typedef CommentPointer = stdgo._internal.go.ast.Ast_commentpointer.CommentPointer;
class Comment_static_extension {
    static public function end(_c:Comment):stdgo._internal.go.token.Token_pos.Pos {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        return stdgo._internal.go.ast.Ast_comment_static_extension.Comment_static_extension.end(_c);
    }
    static public function pos(_c:Comment):stdgo._internal.go.token.Token_pos.Pos {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        return stdgo._internal.go.ast.Ast_comment_static_extension.Comment_static_extension.pos(_c);
    }
}
typedef CommentGroupPointer = stdgo._internal.go.ast.Ast_commentgrouppointer.CommentGroupPointer;
class CommentGroup_static_extension {
    static public function text(_g:CommentGroup):String {
        final _g = (_g : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return stdgo._internal.go.ast.Ast_commentgroup_static_extension.CommentGroup_static_extension.text(_g);
    }
    static public function end(_g:CommentGroup):stdgo._internal.go.token.Token_pos.Pos {
        final _g = (_g : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return stdgo._internal.go.ast.Ast_commentgroup_static_extension.CommentGroup_static_extension.end(_g);
    }
    static public function pos(_g:CommentGroup):stdgo._internal.go.token.Token_pos.Pos {
        final _g = (_g : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return stdgo._internal.go.ast.Ast_commentgroup_static_extension.CommentGroup_static_extension.pos(_g);
    }
}
typedef FieldPointer = stdgo._internal.go.ast.Ast_fieldpointer.FieldPointer;
class Field_static_extension {
    static public function end(_f:Field):stdgo._internal.go.token.Token_pos.Pos {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
        return stdgo._internal.go.ast.Ast_field_static_extension.Field_static_extension.end(_f);
    }
    static public function pos(_f:Field):stdgo._internal.go.token.Token_pos.Pos {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
        return stdgo._internal.go.ast.Ast_field_static_extension.Field_static_extension.pos(_f);
    }
}
typedef FieldListPointer = stdgo._internal.go.ast.Ast_fieldlistpointer.FieldListPointer;
class FieldList_static_extension {
    static public function numFields(_f:FieldList):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return stdgo._internal.go.ast.Ast_fieldlist_static_extension.FieldList_static_extension.numFields(_f);
    }
    static public function end(_f:FieldList):stdgo._internal.go.token.Token_pos.Pos {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return stdgo._internal.go.ast.Ast_fieldlist_static_extension.FieldList_static_extension.end(_f);
    }
    static public function pos(_f:FieldList):stdgo._internal.go.token.Token_pos.Pos {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return stdgo._internal.go.ast.Ast_fieldlist_static_extension.FieldList_static_extension.pos(_f);
    }
}
typedef BadExprPointer = stdgo._internal.go.ast.Ast_badexprpointer.BadExprPointer;
class BadExpr_static_extension {
    static public function _exprNode(_:BadExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>);
        stdgo._internal.go.ast.Ast_badexpr_static_extension.BadExpr_static_extension._exprNode(_);
    }
    static public function end(_x:BadExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>);
        return stdgo._internal.go.ast.Ast_badexpr_static_extension.BadExpr_static_extension.end(_x);
    }
    static public function pos(_x:BadExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>);
        return stdgo._internal.go.ast.Ast_badexpr_static_extension.BadExpr_static_extension.pos(_x);
    }
}
typedef IdentPointer = stdgo._internal.go.ast.Ast_identpointer.IdentPointer;
class Ident_static_extension {
    static public function string(_id:Ident):String {
        final _id = (_id : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension.string(_id);
    }
    static public function isExported(_id:Ident):Bool {
        final _id = (_id : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension.isExported(_id);
    }
    static public function _exprNode(_:Ident):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension._exprNode(_);
    }
    static public function end(_x:Ident):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension.end(_x);
    }
    static public function pos(_x:Ident):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension.pos(_x);
    }
}
typedef EllipsisPointer = stdgo._internal.go.ast.Ast_ellipsispointer.EllipsisPointer;
class Ellipsis_static_extension {
    static public function _exprNode(_:Ellipsis):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
        stdgo._internal.go.ast.Ast_ellipsis_static_extension.Ellipsis_static_extension._exprNode(_);
    }
    static public function end(_x:Ellipsis):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
        return stdgo._internal.go.ast.Ast_ellipsis_static_extension.Ellipsis_static_extension.end(_x);
    }
    static public function pos(_x:Ellipsis):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
        return stdgo._internal.go.ast.Ast_ellipsis_static_extension.Ellipsis_static_extension.pos(_x);
    }
}
typedef BasicLitPointer = stdgo._internal.go.ast.Ast_basiclitpointer.BasicLitPointer;
class BasicLit_static_extension {
    static public function _exprNode(_:BasicLit):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        stdgo._internal.go.ast.Ast_basiclit_static_extension.BasicLit_static_extension._exprNode(_);
    }
    static public function end(_x:BasicLit):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        return stdgo._internal.go.ast.Ast_basiclit_static_extension.BasicLit_static_extension.end(_x);
    }
    static public function pos(_x:BasicLit):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        return stdgo._internal.go.ast.Ast_basiclit_static_extension.BasicLit_static_extension.pos(_x);
    }
}
typedef FuncLitPointer = stdgo._internal.go.ast.Ast_funclitpointer.FuncLitPointer;
class FuncLit_static_extension {
    static public function _exprNode(_:FuncLit):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>);
        stdgo._internal.go.ast.Ast_funclit_static_extension.FuncLit_static_extension._exprNode(_);
    }
    static public function end(_x:FuncLit):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>);
        return stdgo._internal.go.ast.Ast_funclit_static_extension.FuncLit_static_extension.end(_x);
    }
    static public function pos(_x:FuncLit):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>);
        return stdgo._internal.go.ast.Ast_funclit_static_extension.FuncLit_static_extension.pos(_x);
    }
}
typedef CompositeLitPointer = stdgo._internal.go.ast.Ast_compositelitpointer.CompositeLitPointer;
class CompositeLit_static_extension {
    static public function _exprNode(_:CompositeLit):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>);
        stdgo._internal.go.ast.Ast_compositelit_static_extension.CompositeLit_static_extension._exprNode(_);
    }
    static public function end(_x:CompositeLit):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>);
        return stdgo._internal.go.ast.Ast_compositelit_static_extension.CompositeLit_static_extension.end(_x);
    }
    static public function pos(_x:CompositeLit):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>);
        return stdgo._internal.go.ast.Ast_compositelit_static_extension.CompositeLit_static_extension.pos(_x);
    }
}
typedef ParenExprPointer = stdgo._internal.go.ast.Ast_parenexprpointer.ParenExprPointer;
class ParenExpr_static_extension {
    static public function _exprNode(_:ParenExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>);
        stdgo._internal.go.ast.Ast_parenexpr_static_extension.ParenExpr_static_extension._exprNode(_);
    }
    static public function end(_x:ParenExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>);
        return stdgo._internal.go.ast.Ast_parenexpr_static_extension.ParenExpr_static_extension.end(_x);
    }
    static public function pos(_x:ParenExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>);
        return stdgo._internal.go.ast.Ast_parenexpr_static_extension.ParenExpr_static_extension.pos(_x);
    }
}
typedef SelectorExprPointer = stdgo._internal.go.ast.Ast_selectorexprpointer.SelectorExprPointer;
class SelectorExpr_static_extension {
    static public function _exprNode(_:SelectorExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>);
        stdgo._internal.go.ast.Ast_selectorexpr_static_extension.SelectorExpr_static_extension._exprNode(_);
    }
    static public function end(_x:SelectorExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>);
        return stdgo._internal.go.ast.Ast_selectorexpr_static_extension.SelectorExpr_static_extension.end(_x);
    }
    static public function pos(_x:SelectorExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>);
        return stdgo._internal.go.ast.Ast_selectorexpr_static_extension.SelectorExpr_static_extension.pos(_x);
    }
}
typedef IndexExprPointer = stdgo._internal.go.ast.Ast_indexexprpointer.IndexExprPointer;
class IndexExpr_static_extension {
    static public function _exprNode(_:IndexExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>);
        stdgo._internal.go.ast.Ast_indexexpr_static_extension.IndexExpr_static_extension._exprNode(_);
    }
    static public function end(_x:IndexExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>);
        return stdgo._internal.go.ast.Ast_indexexpr_static_extension.IndexExpr_static_extension.end(_x);
    }
    static public function pos(_x:IndexExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>);
        return stdgo._internal.go.ast.Ast_indexexpr_static_extension.IndexExpr_static_extension.pos(_x);
    }
}
typedef IndexListExprPointer = stdgo._internal.go.ast.Ast_indexlistexprpointer.IndexListExprPointer;
class IndexListExpr_static_extension {
    static public function _exprNode(_:IndexListExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>);
        stdgo._internal.go.ast.Ast_indexlistexpr_static_extension.IndexListExpr_static_extension._exprNode(_);
    }
    static public function end(_x:IndexListExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>);
        return stdgo._internal.go.ast.Ast_indexlistexpr_static_extension.IndexListExpr_static_extension.end(_x);
    }
    static public function pos(_x:IndexListExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>);
        return stdgo._internal.go.ast.Ast_indexlistexpr_static_extension.IndexListExpr_static_extension.pos(_x);
    }
}
typedef SliceExprPointer = stdgo._internal.go.ast.Ast_sliceexprpointer.SliceExprPointer;
class SliceExpr_static_extension {
    static public function _exprNode(_:SliceExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>);
        stdgo._internal.go.ast.Ast_sliceexpr_static_extension.SliceExpr_static_extension._exprNode(_);
    }
    static public function end(_x:SliceExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>);
        return stdgo._internal.go.ast.Ast_sliceexpr_static_extension.SliceExpr_static_extension.end(_x);
    }
    static public function pos(_x:SliceExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>);
        return stdgo._internal.go.ast.Ast_sliceexpr_static_extension.SliceExpr_static_extension.pos(_x);
    }
}
typedef TypeAssertExprPointer = stdgo._internal.go.ast.Ast_typeassertexprpointer.TypeAssertExprPointer;
class TypeAssertExpr_static_extension {
    static public function _exprNode(_:TypeAssertExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>);
        stdgo._internal.go.ast.Ast_typeassertexpr_static_extension.TypeAssertExpr_static_extension._exprNode(_);
    }
    static public function end(_x:TypeAssertExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>);
        return stdgo._internal.go.ast.Ast_typeassertexpr_static_extension.TypeAssertExpr_static_extension.end(_x);
    }
    static public function pos(_x:TypeAssertExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>);
        return stdgo._internal.go.ast.Ast_typeassertexpr_static_extension.TypeAssertExpr_static_extension.pos(_x);
    }
}
typedef CallExprPointer = stdgo._internal.go.ast.Ast_callexprpointer.CallExprPointer;
class CallExpr_static_extension {
    static public function _exprNode(_:CallExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        stdgo._internal.go.ast.Ast_callexpr_static_extension.CallExpr_static_extension._exprNode(_);
    }
    static public function end(_x:CallExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        return stdgo._internal.go.ast.Ast_callexpr_static_extension.CallExpr_static_extension.end(_x);
    }
    static public function pos(_x:CallExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        return stdgo._internal.go.ast.Ast_callexpr_static_extension.CallExpr_static_extension.pos(_x);
    }
}
typedef StarExprPointer = stdgo._internal.go.ast.Ast_starexprpointer.StarExprPointer;
class StarExpr_static_extension {
    static public function _exprNode(_:StarExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
        stdgo._internal.go.ast.Ast_starexpr_static_extension.StarExpr_static_extension._exprNode(_);
    }
    static public function end(_x:StarExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
        return stdgo._internal.go.ast.Ast_starexpr_static_extension.StarExpr_static_extension.end(_x);
    }
    static public function pos(_x:StarExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
        return stdgo._internal.go.ast.Ast_starexpr_static_extension.StarExpr_static_extension.pos(_x);
    }
}
typedef UnaryExprPointer = stdgo._internal.go.ast.Ast_unaryexprpointer.UnaryExprPointer;
class UnaryExpr_static_extension {
    static public function _exprNode(_:UnaryExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>);
        stdgo._internal.go.ast.Ast_unaryexpr_static_extension.UnaryExpr_static_extension._exprNode(_);
    }
    static public function end(_x:UnaryExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>);
        return stdgo._internal.go.ast.Ast_unaryexpr_static_extension.UnaryExpr_static_extension.end(_x);
    }
    static public function pos(_x:UnaryExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>);
        return stdgo._internal.go.ast.Ast_unaryexpr_static_extension.UnaryExpr_static_extension.pos(_x);
    }
}
typedef BinaryExprPointer = stdgo._internal.go.ast.Ast_binaryexprpointer.BinaryExprPointer;
class BinaryExpr_static_extension {
    static public function _exprNode(_:BinaryExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>);
        stdgo._internal.go.ast.Ast_binaryexpr_static_extension.BinaryExpr_static_extension._exprNode(_);
    }
    static public function end(_x:BinaryExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>);
        return stdgo._internal.go.ast.Ast_binaryexpr_static_extension.BinaryExpr_static_extension.end(_x);
    }
    static public function pos(_x:BinaryExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>);
        return stdgo._internal.go.ast.Ast_binaryexpr_static_extension.BinaryExpr_static_extension.pos(_x);
    }
}
typedef KeyValueExprPointer = stdgo._internal.go.ast.Ast_keyvalueexprpointer.KeyValueExprPointer;
class KeyValueExpr_static_extension {
    static public function _exprNode(_:KeyValueExpr):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>);
        stdgo._internal.go.ast.Ast_keyvalueexpr_static_extension.KeyValueExpr_static_extension._exprNode(_);
    }
    static public function end(_x:KeyValueExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>);
        return stdgo._internal.go.ast.Ast_keyvalueexpr_static_extension.KeyValueExpr_static_extension.end(_x);
    }
    static public function pos(_x:KeyValueExpr):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>);
        return stdgo._internal.go.ast.Ast_keyvalueexpr_static_extension.KeyValueExpr_static_extension.pos(_x);
    }
}
typedef ArrayTypePointer = stdgo._internal.go.ast.Ast_arraytypepointer.ArrayTypePointer;
class ArrayType_static_extension {
    static public function _exprNode(_:ArrayType):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
        stdgo._internal.go.ast.Ast_arraytype_static_extension.ArrayType_static_extension._exprNode(_);
    }
    static public function end(_x:ArrayType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
        return stdgo._internal.go.ast.Ast_arraytype_static_extension.ArrayType_static_extension.end(_x);
    }
    static public function pos(_x:ArrayType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
        return stdgo._internal.go.ast.Ast_arraytype_static_extension.ArrayType_static_extension.pos(_x);
    }
}
typedef StructTypePointer = stdgo._internal.go.ast.Ast_structtypepointer.StructTypePointer;
class StructType_static_extension {
    static public function _exprNode(_:StructType):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
        stdgo._internal.go.ast.Ast_structtype_static_extension.StructType_static_extension._exprNode(_);
    }
    static public function end(_x:StructType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
        return stdgo._internal.go.ast.Ast_structtype_static_extension.StructType_static_extension.end(_x);
    }
    static public function pos(_x:StructType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
        return stdgo._internal.go.ast.Ast_structtype_static_extension.StructType_static_extension.pos(_x);
    }
}
typedef FuncTypePointer = stdgo._internal.go.ast.Ast_functypepointer.FuncTypePointer;
class FuncType_static_extension {
    static public function _exprNode(_:FuncType):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        stdgo._internal.go.ast.Ast_functype_static_extension.FuncType_static_extension._exprNode(_);
    }
    static public function end(_x:FuncType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        return stdgo._internal.go.ast.Ast_functype_static_extension.FuncType_static_extension.end(_x);
    }
    static public function pos(_x:FuncType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        return stdgo._internal.go.ast.Ast_functype_static_extension.FuncType_static_extension.pos(_x);
    }
}
typedef InterfaceTypePointer = stdgo._internal.go.ast.Ast_interfacetypepointer.InterfaceTypePointer;
class InterfaceType_static_extension {
    static public function _exprNode(_:InterfaceType):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
        stdgo._internal.go.ast.Ast_interfacetype_static_extension.InterfaceType_static_extension._exprNode(_);
    }
    static public function end(_x:InterfaceType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
        return stdgo._internal.go.ast.Ast_interfacetype_static_extension.InterfaceType_static_extension.end(_x);
    }
    static public function pos(_x:InterfaceType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
        return stdgo._internal.go.ast.Ast_interfacetype_static_extension.InterfaceType_static_extension.pos(_x);
    }
}
typedef MapTypePointer = stdgo._internal.go.ast.Ast_maptypepointer.MapTypePointer;
class MapType_static_extension {
    static public function _exprNode(_:MapType):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
        stdgo._internal.go.ast.Ast_maptype_static_extension.MapType_static_extension._exprNode(_);
    }
    static public function end(_x:MapType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
        return stdgo._internal.go.ast.Ast_maptype_static_extension.MapType_static_extension.end(_x);
    }
    static public function pos(_x:MapType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
        return stdgo._internal.go.ast.Ast_maptype_static_extension.MapType_static_extension.pos(_x);
    }
}
typedef ChanTypePointer = stdgo._internal.go.ast.Ast_chantypepointer.ChanTypePointer;
class ChanType_static_extension {
    static public function _exprNode(_:ChanType):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
        stdgo._internal.go.ast.Ast_chantype_static_extension.ChanType_static_extension._exprNode(_);
    }
    static public function end(_x:ChanType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
        return stdgo._internal.go.ast.Ast_chantype_static_extension.ChanType_static_extension.end(_x);
    }
    static public function pos(_x:ChanType):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
        return stdgo._internal.go.ast.Ast_chantype_static_extension.ChanType_static_extension.pos(_x);
    }
}
typedef BadStmtPointer = stdgo._internal.go.ast.Ast_badstmtpointer.BadStmtPointer;
class BadStmt_static_extension {
    static public function _stmtNode(_:BadStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>);
        stdgo._internal.go.ast.Ast_badstmt_static_extension.BadStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:BadStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>);
        return stdgo._internal.go.ast.Ast_badstmt_static_extension.BadStmt_static_extension.end(_s);
    }
    static public function pos(_s:BadStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>);
        return stdgo._internal.go.ast.Ast_badstmt_static_extension.BadStmt_static_extension.pos(_s);
    }
}
typedef DeclStmtPointer = stdgo._internal.go.ast.Ast_declstmtpointer.DeclStmtPointer;
class DeclStmt_static_extension {
    static public function _stmtNode(_:DeclStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>);
        stdgo._internal.go.ast.Ast_declstmt_static_extension.DeclStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:DeclStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>);
        return stdgo._internal.go.ast.Ast_declstmt_static_extension.DeclStmt_static_extension.end(_s);
    }
    static public function pos(_s:DeclStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>);
        return stdgo._internal.go.ast.Ast_declstmt_static_extension.DeclStmt_static_extension.pos(_s);
    }
}
typedef EmptyStmtPointer = stdgo._internal.go.ast.Ast_emptystmtpointer.EmptyStmtPointer;
class EmptyStmt_static_extension {
    static public function _stmtNode(_:EmptyStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>);
        stdgo._internal.go.ast.Ast_emptystmt_static_extension.EmptyStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:EmptyStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>);
        return stdgo._internal.go.ast.Ast_emptystmt_static_extension.EmptyStmt_static_extension.end(_s);
    }
    static public function pos(_s:EmptyStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>);
        return stdgo._internal.go.ast.Ast_emptystmt_static_extension.EmptyStmt_static_extension.pos(_s);
    }
}
typedef LabeledStmtPointer = stdgo._internal.go.ast.Ast_labeledstmtpointer.LabeledStmtPointer;
class LabeledStmt_static_extension {
    static public function _stmtNode(_:LabeledStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        stdgo._internal.go.ast.Ast_labeledstmt_static_extension.LabeledStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:LabeledStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        return stdgo._internal.go.ast.Ast_labeledstmt_static_extension.LabeledStmt_static_extension.end(_s);
    }
    static public function pos(_s:LabeledStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        return stdgo._internal.go.ast.Ast_labeledstmt_static_extension.LabeledStmt_static_extension.pos(_s);
    }
}
typedef ExprStmtPointer = stdgo._internal.go.ast.Ast_exprstmtpointer.ExprStmtPointer;
class ExprStmt_static_extension {
    static public function _stmtNode(_:ExprStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>);
        stdgo._internal.go.ast.Ast_exprstmt_static_extension.ExprStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:ExprStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>);
        return stdgo._internal.go.ast.Ast_exprstmt_static_extension.ExprStmt_static_extension.end(_s);
    }
    static public function pos(_s:ExprStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>);
        return stdgo._internal.go.ast.Ast_exprstmt_static_extension.ExprStmt_static_extension.pos(_s);
    }
}
typedef SendStmtPointer = stdgo._internal.go.ast.Ast_sendstmtpointer.SendStmtPointer;
class SendStmt_static_extension {
    static public function _stmtNode(_:SendStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>);
        stdgo._internal.go.ast.Ast_sendstmt_static_extension.SendStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:SendStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>);
        return stdgo._internal.go.ast.Ast_sendstmt_static_extension.SendStmt_static_extension.end(_s);
    }
    static public function pos(_s:SendStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>);
        return stdgo._internal.go.ast.Ast_sendstmt_static_extension.SendStmt_static_extension.pos(_s);
    }
}
typedef IncDecStmtPointer = stdgo._internal.go.ast.Ast_incdecstmtpointer.IncDecStmtPointer;
class IncDecStmt_static_extension {
    static public function _stmtNode(_:IncDecStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>);
        stdgo._internal.go.ast.Ast_incdecstmt_static_extension.IncDecStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:IncDecStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>);
        return stdgo._internal.go.ast.Ast_incdecstmt_static_extension.IncDecStmt_static_extension.end(_s);
    }
    static public function pos(_s:IncDecStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>);
        return stdgo._internal.go.ast.Ast_incdecstmt_static_extension.IncDecStmt_static_extension.pos(_s);
    }
}
typedef AssignStmtPointer = stdgo._internal.go.ast.Ast_assignstmtpointer.AssignStmtPointer;
class AssignStmt_static_extension {
    static public function _stmtNode(_:AssignStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
        stdgo._internal.go.ast.Ast_assignstmt_static_extension.AssignStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:AssignStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
        return stdgo._internal.go.ast.Ast_assignstmt_static_extension.AssignStmt_static_extension.end(_s);
    }
    static public function pos(_s:AssignStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
        return stdgo._internal.go.ast.Ast_assignstmt_static_extension.AssignStmt_static_extension.pos(_s);
    }
}
typedef GoStmtPointer = stdgo._internal.go.ast.Ast_gostmtpointer.GoStmtPointer;
class GoStmt_static_extension {
    static public function _stmtNode(_:GoStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>);
        stdgo._internal.go.ast.Ast_gostmt_static_extension.GoStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:GoStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>);
        return stdgo._internal.go.ast.Ast_gostmt_static_extension.GoStmt_static_extension.end(_s);
    }
    static public function pos(_s:GoStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>);
        return stdgo._internal.go.ast.Ast_gostmt_static_extension.GoStmt_static_extension.pos(_s);
    }
}
typedef DeferStmtPointer = stdgo._internal.go.ast.Ast_deferstmtpointer.DeferStmtPointer;
class DeferStmt_static_extension {
    static public function _stmtNode(_:DeferStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>);
        stdgo._internal.go.ast.Ast_deferstmt_static_extension.DeferStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:DeferStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>);
        return stdgo._internal.go.ast.Ast_deferstmt_static_extension.DeferStmt_static_extension.end(_s);
    }
    static public function pos(_s:DeferStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>);
        return stdgo._internal.go.ast.Ast_deferstmt_static_extension.DeferStmt_static_extension.pos(_s);
    }
}
typedef ReturnStmtPointer = stdgo._internal.go.ast.Ast_returnstmtpointer.ReturnStmtPointer;
class ReturnStmt_static_extension {
    static public function _stmtNode(_:ReturnStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
        stdgo._internal.go.ast.Ast_returnstmt_static_extension.ReturnStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:ReturnStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
        return stdgo._internal.go.ast.Ast_returnstmt_static_extension.ReturnStmt_static_extension.end(_s);
    }
    static public function pos(_s:ReturnStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
        return stdgo._internal.go.ast.Ast_returnstmt_static_extension.ReturnStmt_static_extension.pos(_s);
    }
}
typedef BranchStmtPointer = stdgo._internal.go.ast.Ast_branchstmtpointer.BranchStmtPointer;
class BranchStmt_static_extension {
    static public function _stmtNode(_:BranchStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
        stdgo._internal.go.ast.Ast_branchstmt_static_extension.BranchStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:BranchStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
        return stdgo._internal.go.ast.Ast_branchstmt_static_extension.BranchStmt_static_extension.end(_s);
    }
    static public function pos(_s:BranchStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
        return stdgo._internal.go.ast.Ast_branchstmt_static_extension.BranchStmt_static_extension.pos(_s);
    }
}
typedef BlockStmtPointer = stdgo._internal.go.ast.Ast_blockstmtpointer.BlockStmtPointer;
class BlockStmt_static_extension {
    static public function _stmtNode(_:BlockStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        stdgo._internal.go.ast.Ast_blockstmt_static_extension.BlockStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:BlockStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return stdgo._internal.go.ast.Ast_blockstmt_static_extension.BlockStmt_static_extension.end(_s);
    }
    static public function pos(_s:BlockStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        return stdgo._internal.go.ast.Ast_blockstmt_static_extension.BlockStmt_static_extension.pos(_s);
    }
}
typedef IfStmtPointer = stdgo._internal.go.ast.Ast_ifstmtpointer.IfStmtPointer;
class IfStmt_static_extension {
    static public function _stmtNode(_:IfStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
        stdgo._internal.go.ast.Ast_ifstmt_static_extension.IfStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:IfStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
        return stdgo._internal.go.ast.Ast_ifstmt_static_extension.IfStmt_static_extension.end(_s);
    }
    static public function pos(_s:IfStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
        return stdgo._internal.go.ast.Ast_ifstmt_static_extension.IfStmt_static_extension.pos(_s);
    }
}
typedef CaseClausePointer = stdgo._internal.go.ast.Ast_caseclausepointer.CaseClausePointer;
class CaseClause_static_extension {
    static public function _stmtNode(_:CaseClause):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
        stdgo._internal.go.ast.Ast_caseclause_static_extension.CaseClause_static_extension._stmtNode(_);
    }
    static public function end(_s:CaseClause):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
        return stdgo._internal.go.ast.Ast_caseclause_static_extension.CaseClause_static_extension.end(_s);
    }
    static public function pos(_s:CaseClause):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
        return stdgo._internal.go.ast.Ast_caseclause_static_extension.CaseClause_static_extension.pos(_s);
    }
}
typedef SwitchStmtPointer = stdgo._internal.go.ast.Ast_switchstmtpointer.SwitchStmtPointer;
class SwitchStmt_static_extension {
    static public function _stmtNode(_:SwitchStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>);
        stdgo._internal.go.ast.Ast_switchstmt_static_extension.SwitchStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:SwitchStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>);
        return stdgo._internal.go.ast.Ast_switchstmt_static_extension.SwitchStmt_static_extension.end(_s);
    }
    static public function pos(_s:SwitchStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>);
        return stdgo._internal.go.ast.Ast_switchstmt_static_extension.SwitchStmt_static_extension.pos(_s);
    }
}
typedef TypeSwitchStmtPointer = stdgo._internal.go.ast.Ast_typeswitchstmtpointer.TypeSwitchStmtPointer;
class TypeSwitchStmt_static_extension {
    static public function _stmtNode(_:TypeSwitchStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>);
        stdgo._internal.go.ast.Ast_typeswitchstmt_static_extension.TypeSwitchStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:TypeSwitchStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>);
        return stdgo._internal.go.ast.Ast_typeswitchstmt_static_extension.TypeSwitchStmt_static_extension.end(_s);
    }
    static public function pos(_s:TypeSwitchStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>);
        return stdgo._internal.go.ast.Ast_typeswitchstmt_static_extension.TypeSwitchStmt_static_extension.pos(_s);
    }
}
typedef CommClausePointer = stdgo._internal.go.ast.Ast_commclausepointer.CommClausePointer;
class CommClause_static_extension {
    static public function _stmtNode(_:CommClause):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
        stdgo._internal.go.ast.Ast_commclause_static_extension.CommClause_static_extension._stmtNode(_);
    }
    static public function end(_s:CommClause):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
        return stdgo._internal.go.ast.Ast_commclause_static_extension.CommClause_static_extension.end(_s);
    }
    static public function pos(_s:CommClause):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
        return stdgo._internal.go.ast.Ast_commclause_static_extension.CommClause_static_extension.pos(_s);
    }
}
typedef SelectStmtPointer = stdgo._internal.go.ast.Ast_selectstmtpointer.SelectStmtPointer;
class SelectStmt_static_extension {
    static public function _stmtNode(_:SelectStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
        stdgo._internal.go.ast.Ast_selectstmt_static_extension.SelectStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:SelectStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
        return stdgo._internal.go.ast.Ast_selectstmt_static_extension.SelectStmt_static_extension.end(_s);
    }
    static public function pos(_s:SelectStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
        return stdgo._internal.go.ast.Ast_selectstmt_static_extension.SelectStmt_static_extension.pos(_s);
    }
}
typedef ForStmtPointer = stdgo._internal.go.ast.Ast_forstmtpointer.ForStmtPointer;
class ForStmt_static_extension {
    static public function _stmtNode(_:ForStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>);
        stdgo._internal.go.ast.Ast_forstmt_static_extension.ForStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:ForStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>);
        return stdgo._internal.go.ast.Ast_forstmt_static_extension.ForStmt_static_extension.end(_s);
    }
    static public function pos(_s:ForStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>);
        return stdgo._internal.go.ast.Ast_forstmt_static_extension.ForStmt_static_extension.pos(_s);
    }
}
typedef RangeStmtPointer = stdgo._internal.go.ast.Ast_rangestmtpointer.RangeStmtPointer;
class RangeStmt_static_extension {
    static public function _stmtNode(_:RangeStmt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>);
        stdgo._internal.go.ast.Ast_rangestmt_static_extension.RangeStmt_static_extension._stmtNode(_);
    }
    static public function end(_s:RangeStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>);
        return stdgo._internal.go.ast.Ast_rangestmt_static_extension.RangeStmt_static_extension.end(_s);
    }
    static public function pos(_s:RangeStmt):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>);
        return stdgo._internal.go.ast.Ast_rangestmt_static_extension.RangeStmt_static_extension.pos(_s);
    }
}
typedef ImportSpecPointer = stdgo._internal.go.ast.Ast_importspecpointer.ImportSpecPointer;
class ImportSpec_static_extension {
    static public function _specNode(_:ImportSpec):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
        stdgo._internal.go.ast.Ast_importspec_static_extension.ImportSpec_static_extension._specNode(_);
    }
    static public function end(_s:ImportSpec):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
        return stdgo._internal.go.ast.Ast_importspec_static_extension.ImportSpec_static_extension.end(_s);
    }
    static public function pos(_s:ImportSpec):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
        return stdgo._internal.go.ast.Ast_importspec_static_extension.ImportSpec_static_extension.pos(_s);
    }
}
typedef ValueSpecPointer = stdgo._internal.go.ast.Ast_valuespecpointer.ValueSpecPointer;
class ValueSpec_static_extension {
    static public function _specNode(_:ValueSpec):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        stdgo._internal.go.ast.Ast_valuespec_static_extension.ValueSpec_static_extension._specNode(_);
    }
    static public function end(_s:ValueSpec):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        return stdgo._internal.go.ast.Ast_valuespec_static_extension.ValueSpec_static_extension.end(_s);
    }
    static public function pos(_s:ValueSpec):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        return stdgo._internal.go.ast.Ast_valuespec_static_extension.ValueSpec_static_extension.pos(_s);
    }
}
typedef TypeSpecPointer = stdgo._internal.go.ast.Ast_typespecpointer.TypeSpecPointer;
class TypeSpec_static_extension {
    static public function _specNode(_:TypeSpec):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        stdgo._internal.go.ast.Ast_typespec_static_extension.TypeSpec_static_extension._specNode(_);
    }
    static public function end(_s:TypeSpec):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        return stdgo._internal.go.ast.Ast_typespec_static_extension.TypeSpec_static_extension.end(_s);
    }
    static public function pos(_s:TypeSpec):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        return stdgo._internal.go.ast.Ast_typespec_static_extension.TypeSpec_static_extension.pos(_s);
    }
}
typedef BadDeclPointer = stdgo._internal.go.ast.Ast_baddeclpointer.BadDeclPointer;
class BadDecl_static_extension {
    static public function _declNode(_:BadDecl):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>);
        stdgo._internal.go.ast.Ast_baddecl_static_extension.BadDecl_static_extension._declNode(_);
    }
    static public function end(_d:BadDecl):stdgo._internal.go.token.Token_pos.Pos {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>);
        return stdgo._internal.go.ast.Ast_baddecl_static_extension.BadDecl_static_extension.end(_d);
    }
    static public function pos(_d:BadDecl):stdgo._internal.go.token.Token_pos.Pos {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>);
        return stdgo._internal.go.ast.Ast_baddecl_static_extension.BadDecl_static_extension.pos(_d);
    }
}
typedef GenDeclPointer = stdgo._internal.go.ast.Ast_gendeclpointer.GenDeclPointer;
class GenDecl_static_extension {
    static public function _declNode(_:GenDecl):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        stdgo._internal.go.ast.Ast_gendecl_static_extension.GenDecl_static_extension._declNode(_);
    }
    static public function end(_d:GenDecl):stdgo._internal.go.token.Token_pos.Pos {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        return stdgo._internal.go.ast.Ast_gendecl_static_extension.GenDecl_static_extension.end(_d);
    }
    static public function pos(_d:GenDecl):stdgo._internal.go.token.Token_pos.Pos {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        return stdgo._internal.go.ast.Ast_gendecl_static_extension.GenDecl_static_extension.pos(_d);
    }
}
typedef FuncDeclPointer = stdgo._internal.go.ast.Ast_funcdeclpointer.FuncDeclPointer;
class FuncDecl_static_extension {
    static public function _declNode(_:FuncDecl):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        stdgo._internal.go.ast.Ast_funcdecl_static_extension.FuncDecl_static_extension._declNode(_);
    }
    static public function end(_d:FuncDecl):stdgo._internal.go.token.Token_pos.Pos {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        return stdgo._internal.go.ast.Ast_funcdecl_static_extension.FuncDecl_static_extension.end(_d);
    }
    static public function pos(_d:FuncDecl):stdgo._internal.go.token.Token_pos.Pos {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        return stdgo._internal.go.ast.Ast_funcdecl_static_extension.FuncDecl_static_extension.pos(_d);
    }
}
typedef FilePointer = stdgo._internal.go.ast.Ast_filepointer.FilePointer;
class File_static_extension {
    static public function end(_f:File):stdgo._internal.go.token.Token_pos.Pos {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return stdgo._internal.go.ast.Ast_file_static_extension.File_static_extension.end(_f);
    }
    static public function pos(_f:File):stdgo._internal.go.token.Token_pos.Pos {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return stdgo._internal.go.ast.Ast_file_static_extension.File_static_extension.pos(_f);
    }
}
typedef PackagePointer = stdgo._internal.go.ast.Ast_packagepointer.PackagePointer;
class Package_static_extension {
    static public function end(_p:Package):stdgo._internal.go.token.Token_pos.Pos {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        return stdgo._internal.go.ast.Ast_package_static_extension.Package_static_extension.end(_p);
    }
    static public function pos(_p:Package):stdgo._internal.go.token.Token_pos.Pos {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        return stdgo._internal.go.ast.Ast_package_static_extension.Package_static_extension.pos(_p);
    }
}
@:dox(hide) typedef T_commentListReaderPointer = stdgo._internal.go.ast.Ast_t_commentlistreaderpointer.T_commentListReaderPointer;
@:dox(hide) class T_commentListReader_static_extension {
    static public function _next(_r:T_commentListReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>);
        stdgo._internal.go.ast.Ast_t_commentlistreader_static_extension.T_commentListReader_static_extension._next(_r);
    }
    static public function _eol(_r:T_commentListReader):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>);
        return stdgo._internal.go.ast.Ast_t_commentlistreader_static_extension.T_commentListReader_static_extension._eol(_r);
    }
}
@:dox(hide) typedef T_posSpanPointer = stdgo._internal.go.ast.Ast_t_posspanpointer.T_posSpanPointer;
@:dox(hide) class T_posSpan_static_extension {

}
@:dox(hide) typedef T_cgPosPointer = stdgo._internal.go.ast.Ast_t_cgpospointer.T_cgPosPointer;
@:dox(hide) class T_cgPos_static_extension {

}
@:dox(hide) typedef T_printerPointer = stdgo._internal.go.ast.Ast_t_printerpointer.T_printerPointer;
@:dox(hide) class T_printer_static_extension {
    static public function _print(_p:T_printer, _x:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>);
        stdgo._internal.go.ast.Ast_t_printer_static_extension.T_printer_static_extension._print(_p, _x);
    }
    static public function _printf(_p:T_printer, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.ast.Ast_t_printer_static_extension.T_printer_static_extension._printf(_p, _format, ...[for (i in _args) i]);
    }
    static public function write(_p:T_printer, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.go.ast.Ast_t_printer_static_extension.T_printer_static_extension.write(_p, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_localErrorPointer = stdgo._internal.go.ast.Ast_t_localerrorpointer.T_localErrorPointer;
@:dox(hide) class T_localError_static_extension {

}
@:dox(hide) typedef T_pkgBuilderPointer = stdgo._internal.go.ast.Ast_t_pkgbuilderpointer.T_pkgBuilderPointer;
@:dox(hide) class T_pkgBuilder_static_extension {
    static public function _declare(_p:T_pkgBuilder, _scope:Scope, _altScope:Scope, _obj:Object):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>);
        final _scope = (_scope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        final _altScope = (_altScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        stdgo._internal.go.ast.Ast_t_pkgbuilder_static_extension.T_pkgBuilder_static_extension._declare(_p, _scope, _altScope, _obj);
    }
    static public function _errorf(_p:T_pkgBuilder, _pos:stdgo._internal.go.token.Token_pos.Pos, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.ast.Ast_t_pkgbuilder_static_extension.T_pkgBuilder_static_extension._errorf(_p, _pos, _format, ...[for (i in _args) i]);
    }
    static public function _error(_p:T_pkgBuilder, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.go.ast.Ast_t_pkgbuilder_static_extension.T_pkgBuilder_static_extension._error(_p, _pos, _msg);
    }
}
typedef ScopePointer = stdgo._internal.go.ast.Ast_scopepointer.ScopePointer;
class Scope_static_extension {
    static public function string(_s:Scope):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return stdgo._internal.go.ast.Ast_scope_static_extension.Scope_static_extension.string(_s);
    }
    static public function insert(_s:Scope, _obj:Object):Object {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        return stdgo._internal.go.ast.Ast_scope_static_extension.Scope_static_extension.insert(_s, _obj);
    }
    static public function lookup(_s:Scope, _name:String):Object {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.ast.Ast_scope_static_extension.Scope_static_extension.lookup(_s, _name);
    }
}
typedef ObjectPointer = stdgo._internal.go.ast.Ast_objectpointer.ObjectPointer;
class Object_static_extension {
    static public function pos(_obj:Object):stdgo._internal.go.token.Token_pos.Pos {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        return stdgo._internal.go.ast.Ast_object_static_extension.Object_static_extension.pos(_obj);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.go.ast.Ast_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.go.ast.Ast_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.go.ast.Ast_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.go.ast.Ast_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.go.ast.Ast_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.go.ast.Ast_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.go.ast.Ast_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
typedef ChanDirPointer = stdgo._internal.go.ast.Ast_chandirpointer.ChanDirPointer;
class ChanDir_static_extension {

}
@:dox(hide) typedef T_byPosPointer = stdgo._internal.go.ast.Ast_t_bypospointer.T_byPosPointer;
@:dox(hide) class T_byPos_static_extension {
    static public function swap(_a:T_byPos, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.ast.Ast_t_bypos_static_extension.T_byPos_static_extension.swap(_a, _i, _j);
    }
    static public function less(_a:T_byPos, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.ast.Ast_t_bypos_static_extension.T_byPos_static_extension.less(_a, _i, _j);
    }
    static public function len(_a:T_byPos):StdTypes.Int {
        return stdgo._internal.go.ast.Ast_t_bypos_static_extension.T_byPos_static_extension.len(_a);
    }
}
typedef CommentMapPointer = stdgo._internal.go.ast.Ast_commentmappointer.CommentMapPointer;
class CommentMap_static_extension {
    static public function string(_cmap:CommentMap):String {
        return stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension.string(_cmap);
    }
    static public function comments(_cmap:CommentMap):Array<CommentGroup> {
        return [for (i in stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension.comments(_cmap)) i];
    }
    static public function filter(_cmap:CommentMap, _node:Node):CommentMap {
        return stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension.filter(_cmap, _node);
    }
    static public function update(_cmap:CommentMap, _old:Node, _new_:Node):Node {
        return stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension.update(_cmap, _old, _new_);
    }
    static public function _addComment(_cmap:CommentMap, _n:Node, _c:CommentGroup):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension._addComment(_cmap, _n, _c);
    }
}
@:dox(hide) typedef T_byIntervalPointer = stdgo._internal.go.ast.Ast_t_byintervalpointer.T_byIntervalPointer;
@:dox(hide) class T_byInterval_static_extension {
    static public function swap(_a:T_byInterval, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.ast.Ast_t_byinterval_static_extension.T_byInterval_static_extension.swap(_a, _i, _j);
    }
    static public function less(_a:T_byInterval, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.ast.Ast_t_byinterval_static_extension.T_byInterval_static_extension.less(_a, _i, _j);
    }
    static public function len(_a:T_byInterval):StdTypes.Int {
        return stdgo._internal.go.ast.Ast_t_byinterval_static_extension.T_byInterval_static_extension.len(_a);
    }
}
@:dox(hide) typedef T_nodeStackPointer = stdgo._internal.go.ast.Ast_t_nodestackpointer.T_nodeStackPointer;
@:dox(hide) class T_nodeStack_static_extension {
    static public function _pop(_s:T_nodeStack, _pos:stdgo._internal.go.token.Token_pos.Pos):Node {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack>);
        return stdgo._internal.go.ast.Ast_t_nodestack_static_extension.T_nodeStack_static_extension._pop(_s, _pos);
    }
    static public function _push(_s:T_nodeStack, _n:Node):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack>);
        stdgo._internal.go.ast.Ast_t_nodestack_static_extension.T_nodeStack_static_extension._push(_s, _n);
    }
}
typedef FilterPointer = stdgo._internal.go.ast.Ast_filterpointer.FilterPointer;
class Filter_static_extension {

}
typedef MergeModePointer = stdgo._internal.go.ast.Ast_mergemodepointer.MergeModePointer;
class MergeMode_static_extension {

}
typedef FieldFilterPointer = stdgo._internal.go.ast.Ast_fieldfilterpointer.FieldFilterPointer;
class FieldFilter_static_extension {

}
typedef ImporterPointer = stdgo._internal.go.ast.Ast_importerpointer.ImporterPointer;
class Importer_static_extension {

}
typedef ObjKindPointer = stdgo._internal.go.ast.Ast_objkindpointer.ObjKindPointer;
class ObjKind_static_extension {
    static public function string(_kind:ObjKind):String {
        return stdgo._internal.go.ast.Ast_objkind_static_extension.ObjKind_static_extension.string(_kind);
    }
}
@:dox(hide) typedef T_inspectorPointer = stdgo._internal.go.ast.Ast_t_inspectorpointer.T_inspectorPointer;
@:dox(hide) class T_inspector_static_extension {
    static public function visit(_f:T_inspector, _node:Node):Visitor {
        return stdgo._internal.go.ast.Ast_t_inspector_static_extension.T_inspector_static_extension.visit(_f, _node);
    }
}
/**
    * Package ast declares the types used to represent syntax trees for Go
    * packages.
**/
class Ast {
    /**
        * NewIdent creates a new Ident without position.
        * Useful for ASTs generated by code other than the Go parser.
    **/
    static public inline function newIdent(_name:String):Ident {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.ast.Ast_newident.newIdent(_name);
    }
    /**
        * IsExported reports whether name starts with an upper-case letter.
    **/
    static public inline function isExported(_name:String):Bool {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.ast.Ast_isexported.isExported(_name);
    }
    /**
        * IsGenerated reports whether the file was generated by a program,
        * not handwritten, by detecting the special comment described
        * at https://go.dev/s/generatedcode.
        * 
        * The syntax tree must have been parsed with the ParseComments flag.
        * Example:
        * 
        * 	f, err := parser.ParseFile(fset, filename, src, parser.ParseComments|parser.PackageClauseOnly)
        * 	if err != nil { ... }
        * 	gen := ast.IsGenerated(f)
    **/
    static public inline function isGenerated(_file:File):Bool {
        final _file = (_file : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return stdgo._internal.go.ast.Ast_isgenerated.isGenerated(_file);
    }
    static public inline function testCommentText(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.ast.Ast_testcommenttext.testCommentText(_t);
    }
    static public inline function testIsDirective(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.ast.Ast_testisdirective.testIsDirective(_t);
    }
    /**
        * NewCommentMap creates a new comment map by associating comment groups
        * of the comments list with the nodes of the AST specified by node.
        * 
        * A comment group g is associated with a node n if:
        * 
        *   - g starts on the same line as n ends
        *   - g starts on the line immediately following n, and there is
        *     at least one empty line after g and before the next node
        *   - g starts before n and is not associated to the node before n
        *     via the previous rules
        * 
        * NewCommentMap tries to associate a comment group to the "largest"
        * node possible: For instance, if the comment is a line comment
        * trailing an assignment, the comment is associated with the entire
        * assignment rather than just the last operand in the assignment.
    **/
    static public inline function newCommentMap(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _node:Node, _comments:Array<CommentGroup>):CommentMap {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _comments = ([for (i in _comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return stdgo._internal.go.ast.Ast_newcommentmap.newCommentMap(_fset, _node, _comments);
    }
    /**
        * FileExports trims the AST for a Go source file in place such that
        * only exported nodes remain: all top-level identifiers which are not exported
        * and their associated information (such as type, initial value, or function
        * body) are removed. Non-exported fields and methods of exported types are
        * stripped. The File.Comments list is not changed.
        * 
        * FileExports reports whether there are exported declarations.
    **/
    static public inline function fileExports(_src:File):Bool {
        final _src = (_src : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return stdgo._internal.go.ast.Ast_fileexports.fileExports(_src);
    }
    /**
        * PackageExports trims the AST for a Go package in place such that
        * only exported nodes remain. The pkg.Files list is not changed, so that
        * file names and top-level package comments don't get lost.
        * 
        * PackageExports reports whether there are exported declarations;
        * it returns false otherwise.
    **/
    static public inline function packageExports(_pkg:Package):Bool {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        return stdgo._internal.go.ast.Ast_packageexports.packageExports(_pkg);
    }
    /**
        * FilterDecl trims the AST for a Go declaration in place by removing
        * all names (including struct field and interface method names, but
        * not from parameter lists) that don't pass through the filter f.
        * 
        * FilterDecl reports whether there are any declared names left after
        * filtering.
    **/
    static public inline function filterDecl(_decl:Decl, _f:Filter):Bool {
        return stdgo._internal.go.ast.Ast_filterdecl.filterDecl(_decl, _f);
    }
    /**
        * FilterFile trims the AST for a Go file in place by removing all
        * names from top-level declarations (including struct field and
        * interface method names, but not from parameter lists) that don't
        * pass through the filter f. If the declaration is empty afterwards,
        * the declaration is removed from the AST. Import declarations are
        * always removed. The File.Comments list is not changed.
        * 
        * FilterFile reports whether there are any top-level declarations
        * left after filtering.
    **/
    static public inline function filterFile(_src:File, _f:Filter):Bool {
        final _src = (_src : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return stdgo._internal.go.ast.Ast_filterfile.filterFile(_src, _f);
    }
    /**
        * FilterPackage trims the AST for a Go package in place by removing
        * all names from top-level declarations (including struct field and
        * interface method names, but not from parameter lists) that don't
        * pass through the filter f. If the declaration is empty afterwards,
        * the declaration is removed from the AST. The pkg.Files list is not
        * changed, so that file names and top-level package comments don't get
        * lost.
        * 
        * FilterPackage reports whether there are any top-level declarations
        * left after filtering.
    **/
    static public inline function filterPackage(_pkg:Package, _f:Filter):Bool {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        return stdgo._internal.go.ast.Ast_filterpackage.filterPackage(_pkg, _f);
    }
    /**
        * MergePackageFiles creates a file AST by merging the ASTs of the
        * files belonging to a package. The mode flags control merging behavior.
    **/
    static public inline function mergePackageFiles(_pkg:Package, _mode:MergeMode):File {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        return stdgo._internal.go.ast.Ast_mergepackagefiles.mergePackageFiles(_pkg, _mode);
    }
    /**
        * SortImports sorts runs of consecutive import lines in import blocks in f.
        * It also removes duplicate imports when it is possible to do so without data loss.
    **/
    static public inline function sortImports(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _f:File):Void {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        stdgo._internal.go.ast.Ast_sortimports.sortImports(_fset, _f);
    }
    /**
        * NotNilFilter returns true for field values that are not nil;
        * it returns false otherwise.
    **/
    static public inline function notNilFilter(__0:String, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        final __0 = (__0 : stdgo.GoString);
        return stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter(__0, _v);
    }
    /**
        * Fprint prints the (sub-)tree starting at AST node x to w.
        * If fset != nil, position information is interpreted relative
        * to that file set. Otherwise positions are printed as integer
        * values (file set specific offsets).
        * 
        * A non-nil FieldFilter f may be provided to control the output:
        * struct fields for which f(fieldname, fieldvalue) is true are
        * printed; all others are filtered from the output. Unexported
        * struct fields are never printed.
    **/
    static public inline function fprint(_w:stdgo._internal.io.Io_writer.Writer, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _x:stdgo.AnyInterface, _f:FieldFilter):stdgo.Error {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.go.ast.Ast_fprint.fprint(_w, _fset, _x, _f);
    }
    /**
        * Print prints x to standard output, skipping nil fields.
        * Print(fset, x) is the same as Fprint(os.Stdout, fset, x, NotNilFilter).
    **/
    static public inline function print(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _x:stdgo.AnyInterface):stdgo.Error {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.go.ast.Ast_print.print(_fset, _x);
    }
    static public inline function testPrint(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.ast.Ast_testprint.testPrint(_t);
    }
    /**
        * NewPackage creates a new Package node from a set of File nodes. It resolves
        * unresolved identifiers across files and updates each file's Unresolved list
        * accordingly. If a non-nil importer and universe scope are provided, they are
        * used to resolve identifiers not declared in any of the package files. Any
        * remaining unresolved identifiers are reported as undeclared. If the files
        * belong to different packages, one package name is selected and files with
        * different package names are reported and then ignored.
        * The result is a package node and a scanner.ErrorList if there were errors.
    **/
    static public inline function newPackage(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _files:Map<String, File>, _importer:Importer, _universe:Scope):stdgo.Tuple<Package, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _files = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>();
            for (key => value in _files) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            };
            __obj__;
        };
        final _universe = (_universe : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return {
            final obj = stdgo._internal.go.ast.Ast_newpackage.newPackage(_fset, _files, _importer, _universe);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewScope creates a new scope nested in the outer scope.
    **/
    static public inline function newScope(_outer:Scope):Scope {
        final _outer = (_outer : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return stdgo._internal.go.ast.Ast_newscope.newScope(_outer);
    }
    /**
        * NewObj creates a new object of a given kind and name.
    **/
    static public inline function newObj(_kind:ObjKind, _name:String):Object {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.ast.Ast_newobj.newObj(_kind, _name);
    }
    /**
        * Walk traverses an AST in depth-first order: It starts by calling
        * v.Visit(node); node must not be nil. If the visitor w returned by
        * v.Visit(node) is not nil, Walk is invoked recursively with visitor
        * w for each of the non-nil children of node, followed by a call of
        * w.Visit(nil).
    **/
    static public inline function walk(_v:Visitor, _node:Node):Void {
        stdgo._internal.go.ast.Ast_walk.walk(_v, _node);
    }
    /**
        * Inspect traverses an AST in depth-first order: It starts by calling
        * f(node); node must not be nil. If f returns true, Inspect invokes f
        * recursively for each of the non-nil children of node, followed by a
        * call of f(nil).
    **/
    static public inline function inspect(_node:Node, _f:Node -> Bool):Void {
        final _f = _f;
        stdgo._internal.go.ast.Ast_inspect.inspect(_node, _f);
    }
}
