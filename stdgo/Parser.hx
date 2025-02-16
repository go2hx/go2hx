package stdgo;
final packageClauseOnly : Mode = stdgo._internal.go.parser.Parser_packageclauseonly.packageClauseOnly;
final importsOnly = stdgo._internal.go.parser.Parser_importsonly.importsOnly;
final parseComments = stdgo._internal.go.parser.Parser_parsecomments.parseComments;
final trace_ = stdgo._internal.go.parser.Parser_trace_.trace_;
final declarationErrors = stdgo._internal.go.parser.Parser_declarationerrors.declarationErrors;
final spuriousErrors = stdgo._internal.go.parser.Parser_spuriouserrors.spuriousErrors;
final skipObjectResolution = stdgo._internal.go.parser.Parser_skipobjectresolution.skipObjectResolution;
final allErrors : Mode = stdgo._internal.go.parser.Parser_allerrors.allErrors;
@:dox(hide) class T__interface_0_static_extension {
    static public function pos(t:stdgo._internal.go.parser.Parser_t__interface_0.T__interface_0):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.parser.Parser_t__interface_0_static_extension.T__interface_0_static_extension.pos(t);
    }
}
@:dox(hide) @:forward abstract T__interface_0(stdgo._internal.go.parser.Parser_t__interface_0.T__interface_0) from stdgo._internal.go.parser.Parser_t__interface_0.T__interface_0 to stdgo._internal.go.parser.Parser_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function pos():stdgo._internal.go.token.Token_pos.Pos; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { pos : () -> x.pos(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.parser.Parser.T_parser_static_extension) @:dox(hide) abstract T_parser(stdgo._internal.go.parser.Parser_t_parser.T_parser) from stdgo._internal.go.parser.Parser_t_parser.T_parser to stdgo._internal.go.parser.Parser_t_parser.T_parser {
    public var _file(get, set) : stdgo._internal.go.token.Token_file.File;
    function get__file():stdgo._internal.go.token.Token_file.File return this._file;
    function set__file(v:stdgo._internal.go.token.Token_file.File):stdgo._internal.go.token.Token_file.File {
        this._file = (v : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
        return v;
    }
    public var _errors(get, set) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList;
    function get__errors():stdgo._internal.go.scanner.Scanner_errorlist.ErrorList return this._errors;
    function set__errors(v:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo._internal.go.scanner.Scanner_errorlist.ErrorList {
        this._errors = v;
        return v;
    }
    public var _scanner(get, set) : stdgo._internal.go.scanner.Scanner_scanner.Scanner;
    function get__scanner():stdgo._internal.go.scanner.Scanner_scanner.Scanner return this._scanner;
    function set__scanner(v:stdgo._internal.go.scanner.Scanner_scanner.Scanner):stdgo._internal.go.scanner.Scanner_scanner.Scanner {
        this._scanner = v;
        return v;
    }
    public var _mode(get, set) : Mode;
    function get__mode():Mode return this._mode;
    function set__mode(v:Mode):Mode {
        this._mode = v;
        return v;
    }
    public var _trace(get, set) : Bool;
    function get__trace():Bool return this._trace;
    function set__trace(v:Bool):Bool {
        this._trace = v;
        return v;
    }
    public var _indent(get, set) : StdTypes.Int;
    function get__indent():StdTypes.Int return this._indent;
    function set__indent(v:StdTypes.Int):StdTypes.Int {
        this._indent = (v : stdgo.GoInt);
        return v;
    }
    public var _comments(get, set) : Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>;
    function get__comments():Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> return [for (i in this._comments) i];
    function set__comments(v:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        this._comments = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return v;
    }
    public var _leadComment(get, set) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup;
    function get__leadComment():stdgo._internal.go.ast.Ast_commentgroup.CommentGroup return this._leadComment;
    function set__leadComment(v:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):stdgo._internal.go.ast.Ast_commentgroup.CommentGroup {
        this._leadComment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var _lineComment(get, set) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup;
    function get__lineComment():stdgo._internal.go.ast.Ast_commentgroup.CommentGroup return this._lineComment;
    function set__lineComment(v:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):stdgo._internal.go.ast.Ast_commentgroup.CommentGroup {
        this._lineComment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var _top(get, set) : Bool;
    function get__top():Bool return this._top;
    function set__top(v:Bool):Bool {
        this._top = v;
        return v;
    }
    public var _goVersion(get, set) : String;
    function get__goVersion():String return this._goVersion;
    function set__goVersion(v:String):String {
        this._goVersion = (v : stdgo.GoString);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _tok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get__tok():stdgo._internal.go.token.Token_token.Token return this._tok;
    function set__tok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this._tok = v;
        return v;
    }
    public var _lit(get, set) : String;
    function get__lit():String return this._lit;
    function set__lit(v:String):String {
        this._lit = (v : stdgo.GoString);
        return v;
    }
    public var _syncPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__syncPos():stdgo._internal.go.token.Token_pos.Pos return this._syncPos;
    function set__syncPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._syncPos = v;
        return v;
    }
    public var _syncCnt(get, set) : StdTypes.Int;
    function get__syncCnt():StdTypes.Int return this._syncCnt;
    function set__syncCnt(v:StdTypes.Int):StdTypes.Int {
        this._syncCnt = (v : stdgo.GoInt);
        return v;
    }
    public var _exprLev(get, set) : StdTypes.Int;
    function get__exprLev():StdTypes.Int return this._exprLev;
    function set__exprLev(v:StdTypes.Int):StdTypes.Int {
        this._exprLev = (v : stdgo.GoInt);
        return v;
    }
    public var _inRhs(get, set) : Bool;
    function get__inRhs():Bool return this._inRhs;
    function set__inRhs(v:Bool):Bool {
        this._inRhs = v;
        return v;
    }
    public var _imports(get, set) : Array<stdgo._internal.go.ast.Ast_importspec.ImportSpec>;
    function get__imports():Array<stdgo._internal.go.ast.Ast_importspec.ImportSpec> return [for (i in this._imports) i];
    function set__imports(v:Array<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):Array<stdgo._internal.go.ast.Ast_importspec.ImportSpec> {
        this._imports = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        return v;
    }
    public var _nestLev(get, set) : StdTypes.Int;
    function get__nestLev():StdTypes.Int return this._nestLev;
    function set__nestLev(v:StdTypes.Int):StdTypes.Int {
        this._nestLev = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_file:stdgo._internal.go.token.Token_file.File, ?_errors:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList, ?_scanner:stdgo._internal.go.scanner.Scanner_scanner.Scanner, ?_mode:Mode, ?_trace:Bool, ?_indent:StdTypes.Int, ?_comments:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?_leadComment:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, ?_lineComment:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, ?_top:Bool, ?_goVersion:String, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_tok:stdgo._internal.go.token.Token_token.Token, ?_lit:String, ?_syncPos:stdgo._internal.go.token.Token_pos.Pos, ?_syncCnt:StdTypes.Int, ?_exprLev:StdTypes.Int, ?_inRhs:Bool, ?_imports:Array<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, ?_nestLev:StdTypes.Int) this = new stdgo._internal.go.parser.Parser_t_parser.T_parser(
(_file : stdgo.Ref<stdgo._internal.go.token.Token_file.File>),
_errors,
_scanner,
_mode,
_trace,
(_indent : stdgo.GoInt),
([for (i in _comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>),
(_leadComment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>),
(_lineComment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>),
_top,
(_goVersion : stdgo.GoString),
_pos,
_tok,
(_lit : stdgo.GoString),
_syncPos,
(_syncCnt : stdgo.GoInt),
(_exprLev : stdgo.GoInt),
_inRhs,
([for (i in _imports) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>),
(_nestLev : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.parser.Parser.T_bailout_static_extension) @:dox(hide) abstract T_bailout(stdgo._internal.go.parser.Parser_t_bailout.T_bailout) from stdgo._internal.go.parser.Parser_t_bailout.T_bailout to stdgo._internal.go.parser.Parser_t_bailout.T_bailout {
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_msg:String) this = new stdgo._internal.go.parser.Parser_t_bailout.T_bailout(_pos, (_msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.parser.Parser.T_field_static_extension) @:dox(hide) abstract T_field(stdgo._internal.go.parser.Parser_t_field.T_field) from stdgo._internal.go.parser.Parser_t_field.T_field to stdgo._internal.go.parser.Parser_t_field.T_field {
    public var _name(get, set) : stdgo._internal.go.ast.Ast_ident.Ident;
    function get__name():stdgo._internal.go.ast.Ast_ident.Ident return this._name;
    function set__name(v:stdgo._internal.go.ast.Ast_ident.Ident):stdgo._internal.go.ast.Ast_ident.Ident {
        this._name = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get__typ():stdgo._internal.go.ast.Ast_expr.Expr return this._typ;
    function set__typ(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this._typ = v;
        return v;
    }
    public function new(?_name:stdgo._internal.go.ast.Ast_ident.Ident, ?_typ:stdgo._internal.go.ast.Ast_expr.Expr) this = new stdgo._internal.go.parser.Parser_t_field.T_field((_name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.parser.Parser.T_resolver_static_extension) @:dox(hide) abstract T_resolver(stdgo._internal.go.parser.Parser_t_resolver.T_resolver) from stdgo._internal.go.parser.Parser_t_resolver.T_resolver to stdgo._internal.go.parser.Parser_t_resolver.T_resolver {
    public var _handle(get, set) : stdgo._internal.go.token.Token_file.File;
    function get__handle():stdgo._internal.go.token.Token_file.File return this._handle;
    function set__handle(v:stdgo._internal.go.token.Token_file.File):stdgo._internal.go.token.Token_file.File {
        this._handle = (v : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
        return v;
    }
    public var _declErr(get, set) : (stdgo._internal.go.token.Token_pos.Pos, String) -> Void;
    function get__declErr():(stdgo._internal.go.token.Token_pos.Pos, String) -> Void return (_0, _1) -> this._declErr(_0, _1);
    function set__declErr(v:(stdgo._internal.go.token.Token_pos.Pos, String) -> Void):(stdgo._internal.go.token.Token_pos.Pos, String) -> Void {
        this._declErr = v;
        return v;
    }
    public var _pkgScope(get, set) : stdgo._internal.go.ast.Ast_scope.Scope;
    function get__pkgScope():stdgo._internal.go.ast.Ast_scope.Scope return this._pkgScope;
    function set__pkgScope(v:stdgo._internal.go.ast.Ast_scope.Scope):stdgo._internal.go.ast.Ast_scope.Scope {
        this._pkgScope = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return v;
    }
    public var _topScope(get, set) : stdgo._internal.go.ast.Ast_scope.Scope;
    function get__topScope():stdgo._internal.go.ast.Ast_scope.Scope return this._topScope;
    function set__topScope(v:stdgo._internal.go.ast.Ast_scope.Scope):stdgo._internal.go.ast.Ast_scope.Scope {
        this._topScope = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return v;
    }
    public var _unresolved(get, set) : Array<stdgo._internal.go.ast.Ast_ident.Ident>;
    function get__unresolved():Array<stdgo._internal.go.ast.Ast_ident.Ident> return [for (i in this._unresolved) i];
    function set__unresolved(v:Array<stdgo._internal.go.ast.Ast_ident.Ident>):Array<stdgo._internal.go.ast.Ast_ident.Ident> {
        this._unresolved = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
        return v;
    }
    public var _labelScope(get, set) : stdgo._internal.go.ast.Ast_scope.Scope;
    function get__labelScope():stdgo._internal.go.ast.Ast_scope.Scope return this._labelScope;
    function set__labelScope(v:stdgo._internal.go.ast.Ast_scope.Scope):stdgo._internal.go.ast.Ast_scope.Scope {
        this._labelScope = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        return v;
    }
    public var _targetStack(get, set) : Array<Array<stdgo._internal.go.ast.Ast_ident.Ident>>;
    function get__targetStack():Array<Array<stdgo._internal.go.ast.Ast_ident.Ident>> return [for (i in this._targetStack) [for (i in i) i]];
    function set__targetStack(v:Array<Array<stdgo._internal.go.ast.Ast_ident.Ident>>):Array<Array<stdgo._internal.go.ast.Ast_ident.Ident>> {
        this._targetStack = ([for (i in v) ([for (i in i) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>);
        return v;
    }
    public function new(?_handle:stdgo._internal.go.token.Token_file.File, ?_declErr:(stdgo._internal.go.token.Token_pos.Pos, String) -> Void, ?_pkgScope:stdgo._internal.go.ast.Ast_scope.Scope, ?_topScope:stdgo._internal.go.ast.Ast_scope.Scope, ?_unresolved:Array<stdgo._internal.go.ast.Ast_ident.Ident>, ?_depth:StdTypes.Int, ?_labelScope:stdgo._internal.go.ast.Ast_scope.Scope, ?_targetStack:Array<Array<stdgo._internal.go.ast.Ast_ident.Ident>>) this = new stdgo._internal.go.parser.Parser_t_resolver.T_resolver((_handle : stdgo.Ref<stdgo._internal.go.token.Token_file.File>), _declErr, (_pkgScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>), (_topScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>), ([for (i in _unresolved) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>), (_depth : stdgo.GoInt), (_labelScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>), ([for (i in _targetStack) ([for (i in i) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.go.parser.Parser_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.go.parser.Parser_t__struct_0.T__struct_0;
typedef Mode = stdgo._internal.go.parser.Parser_mode.Mode;
@:dox(hide) typedef T_parseSpecFunction = stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction;
@:dox(hide) typedef T_parserPointer = stdgo._internal.go.parser.Parser_t_parserpointer.T_parserPointer;
@:dox(hide) class T_parser_static_extension {
    static public function _parseFile(_p:T_parser):stdgo._internal.go.ast.Ast_file.File {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseFile(_p);
    }
    static public function _parseDecl(_p:T_parser, _sync:Map<stdgo._internal.go.token.Token_token.Token, Bool>):stdgo._internal.go.ast.Ast_decl.Decl {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _sync = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>();
            for (key => value in _sync) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseDecl(_p, _sync);
    }
    static public function _parseFuncDecl(_p:T_parser):stdgo._internal.go.ast.Ast_funcdecl.FuncDecl {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseFuncDecl(_p);
    }
    static public function _parseGenDecl(_p:T_parser, _keyword:stdgo._internal.go.token.Token_token.Token, _f:T_parseSpecFunction):stdgo._internal.go.ast.Ast_gendecl.GenDecl {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseGenDecl(_p, _keyword, _f);
    }
    static public function _parseTypeSpec(_p:T_parser, _doc:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, __0:stdgo._internal.go.token.Token_token.Token, __1:StdTypes.Int):stdgo._internal.go.ast.Ast_spec.Spec {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _doc = (_doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        final __1 = (__1 : stdgo.GoInt);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseTypeSpec(_p, _doc, __0, __1);
    }
    static public function _parseGenericType(_p:T_parser, _spec:stdgo._internal.go.ast.Ast_typespec.TypeSpec, _openPos:stdgo._internal.go.token.Token_pos.Pos, _name0:stdgo._internal.go.ast.Ast_ident.Ident, _typ0:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _spec = (_spec : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        final _name0 = (_name0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseGenericType(_p, _spec, _openPos, _name0, _typ0);
    }
    static public function _parseValueSpec(_p:T_parser, _doc:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, _keyword:stdgo._internal.go.token.Token_token.Token, _iota:StdTypes.Int):stdgo._internal.go.ast.Ast_spec.Spec {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _doc = (_doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        final _iota = (_iota : stdgo.GoInt);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseValueSpec(_p, _doc, _keyword, _iota);
    }
    static public function _parseImportSpec(_p:T_parser, _doc:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, __0:stdgo._internal.go.token.Token_token.Token, __1:StdTypes.Int):stdgo._internal.go.ast.Ast_spec.Spec {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _doc = (_doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        final __1 = (__1 : stdgo.GoInt);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseImportSpec(_p, _doc, __0, __1);
    }
    static public function _parseStmt(_p:T_parser):stdgo._internal.go.ast.Ast_stmt.Stmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseStmt(_p);
    }
    static public function _parseForStmt(_p:T_parser):stdgo._internal.go.ast.Ast_stmt.Stmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseForStmt(_p);
    }
    static public function _parseSelectStmt(_p:T_parser):stdgo._internal.go.ast.Ast_selectstmt.SelectStmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseSelectStmt(_p);
    }
    static public function _parseCommClause(_p:T_parser):stdgo._internal.go.ast.Ast_commclause.CommClause {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseCommClause(_p);
    }
    static public function _parseSwitchStmt(_p:T_parser):stdgo._internal.go.ast.Ast_stmt.Stmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseSwitchStmt(_p);
    }
    static public function _isTypeSwitchGuard(_p:T_parser, _s:stdgo._internal.go.ast.Ast_stmt.Stmt):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._isTypeSwitchGuard(_p, _s);
    }
    static public function _parseCaseClause(_p:T_parser):stdgo._internal.go.ast.Ast_caseclause.CaseClause {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseCaseClause(_p);
    }
    static public function _parseIfStmt(_p:T_parser):stdgo._internal.go.ast.Ast_ifstmt.IfStmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseIfStmt(_p);
    }
    static public function _parseIfHeader(_p:T_parser):stdgo.Tuple<stdgo._internal.go.ast.Ast_stmt.Stmt, stdgo._internal.go.ast.Ast_expr.Expr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseIfHeader(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _makeExpr(_p:T_parser, _s:stdgo._internal.go.ast.Ast_stmt.Stmt, _want:String):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _want = (_want : stdgo.GoString);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._makeExpr(_p, _s, _want);
    }
    static public function _parseBranchStmt(_p:T_parser, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.ast.Ast_branchstmt.BranchStmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseBranchStmt(_p, _tok);
    }
    static public function _parseReturnStmt(_p:T_parser):stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseReturnStmt(_p);
    }
    static public function _parseDeferStmt(_p:T_parser):stdgo._internal.go.ast.Ast_stmt.Stmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseDeferStmt(_p);
    }
    static public function _parseGoStmt(_p:T_parser):stdgo._internal.go.ast.Ast_stmt.Stmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseGoStmt(_p);
    }
    static public function _parseCallExpr(_p:T_parser, _callType:String):stdgo._internal.go.ast.Ast_callexpr.CallExpr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _callType = (_callType : stdgo.GoString);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseCallExpr(_p, _callType);
    }
    static public function _parseSimpleStmt(_p:T_parser, _mode:StdTypes.Int):stdgo.Tuple<stdgo._internal.go.ast.Ast_stmt.Stmt, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _mode = (_mode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseSimpleStmt(_p, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseRhs(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseRhs(_p);
    }
    static public function _parseExpr(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseExpr(_p);
    }
    static public function _parseBinaryExpr(_p:T_parser, _x:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:StdTypes.Int):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _prec1 = (_prec1 : stdgo.GoInt);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseBinaryExpr(_p, _x, _prec1);
    }
    static public function _tokPrec(_p:T_parser):stdgo.Tuple<stdgo._internal.go.token.Token_token.Token, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._tokPrec(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseUnaryExpr(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseUnaryExpr(_p);
    }
    static public function _parsePrimaryExpr(_p:T_parser, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parsePrimaryExpr(_p, _x);
    }
    static public function _parseLiteralValue(_p:T_parser, _typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseLiteralValue(_p, _typ);
    }
    static public function _parseElementList(_p:T_parser):Array<stdgo._internal.go.ast.Ast_expr.Expr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return [for (i in stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseElementList(_p)) i];
    }
    static public function _parseElement(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseElement(_p);
    }
    static public function _parseValue(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseValue(_p);
    }
    static public function _parseCallOrConversion(_p:T_parser, _fun:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_callexpr.CallExpr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseCallOrConversion(_p, _fun);
    }
    static public function _parseIndexOrSliceOrInstance(_p:T_parser, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseIndexOrSliceOrInstance(_p, _x);
    }
    static public function _parseTypeAssertion(_p:T_parser, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseTypeAssertion(_p, _x);
    }
    static public function _parseSelector(_p:T_parser, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseSelector(_p, _x);
    }
    static public function _parseOperand(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseOperand(_p);
    }
    static public function _parseFuncTypeOrLit(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseFuncTypeOrLit(_p);
    }
    static public function _parseBlockStmt(_p:T_parser):stdgo._internal.go.ast.Ast_blockstmt.BlockStmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseBlockStmt(_p);
    }
    static public function _parseBody(_p:T_parser):stdgo._internal.go.ast.Ast_blockstmt.BlockStmt {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseBody(_p);
    }
    static public function _parseStmtList(_p:T_parser):Array<stdgo._internal.go.ast.Ast_stmt.Stmt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return [for (i in stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseStmtList(_p)) i];
    }
    static public function _tryIdentOrType(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._tryIdentOrType(_p);
    }
    static public function _parseTypeInstance(_p:T_parser, _typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseTypeInstance(_p, _typ);
    }
    static public function _parseChanType(_p:T_parser):stdgo._internal.go.ast.Ast_chantype.ChanType {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseChanType(_p);
    }
    static public function _parseMapType(_p:T_parser):stdgo._internal.go.ast.Ast_maptype.MapType {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseMapType(_p);
    }
    static public function _parseInterfaceType(_p:T_parser):stdgo._internal.go.ast.Ast_interfacetype.InterfaceType {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseInterfaceType(_p);
    }
    static public function _embeddedTerm(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._embeddedTerm(_p);
    }
    static public function _embeddedElem(_p:T_parser, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._embeddedElem(_p, _x);
    }
    static public function _parseMethodSpec(_p:T_parser):stdgo._internal.go.ast.Ast_field.Field {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseMethodSpec(_p);
    }
    static public function _parseFuncType(_p:T_parser):stdgo._internal.go.ast.Ast_functype.FuncType {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseFuncType(_p);
    }
    static public function _parseResult(_p:T_parser):stdgo._internal.go.ast.Ast_fieldlist.FieldList {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseResult(_p);
    }
    static public function _parseParameters(_p:T_parser, _acceptTParams:Bool):stdgo.Tuple<stdgo._internal.go.ast.Ast_fieldlist.FieldList, stdgo._internal.go.ast.Ast_fieldlist.FieldList> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseParameters(_p, _acceptTParams);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseParameterList(_p:T_parser, _name0:stdgo._internal.go.ast.Ast_ident.Ident, _typ0:stdgo._internal.go.ast.Ast_expr.Expr, _closing:stdgo._internal.go.token.Token_token.Token):Array<stdgo._internal.go.ast.Ast_field.Field> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _name0 = (_name0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return [for (i in stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseParameterList(_p, _name0, _typ0, _closing)) i];
    }
    static public function _parseParamDecl(_p:T_parser, _name:stdgo._internal.go.ast.Ast_ident.Ident, _typeSetsOK:Bool):T_field {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _name = (_name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseParamDecl(_p, _name, _typeSetsOK);
    }
    static public function _parseDotsType(_p:T_parser):stdgo._internal.go.ast.Ast_ellipsis.Ellipsis {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseDotsType(_p);
    }
    static public function _parsePointerType(_p:T_parser):stdgo._internal.go.ast.Ast_starexpr.StarExpr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parsePointerType(_p);
    }
    static public function _parseStructType(_p:T_parser):stdgo._internal.go.ast.Ast_structtype.StructType {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseStructType(_p);
    }
    static public function _parseFieldDecl(_p:T_parser):stdgo._internal.go.ast.Ast_field.Field {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseFieldDecl(_p);
    }
    static public function _parseArrayFieldOrTypeInstance(_p:T_parser, _x:stdgo._internal.go.ast.Ast_ident.Ident):stdgo.Tuple<stdgo._internal.go.ast.Ast_ident.Ident, stdgo._internal.go.ast.Ast_expr.Expr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseArrayFieldOrTypeInstance(_p, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseArrayType(_p:T_parser, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _len:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_arraytype.ArrayType {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseArrayType(_p, _lbrack, _len);
    }
    static public function _parseTypeName(_p:T_parser, _ident:stdgo._internal.go.ast.Ast_ident.Ident):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _ident = (_ident : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseTypeName(_p, _ident);
    }
    static public function _parseQualifiedIdent(_p:T_parser, _ident:stdgo._internal.go.ast.Ast_ident.Ident):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _ident = (_ident : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseQualifiedIdent(_p, _ident);
    }
    static public function _parseType(_p:T_parser):stdgo._internal.go.ast.Ast_expr.Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseType(_p);
    }
    static public function _parseList(_p:T_parser, _inRhs:Bool):Array<stdgo._internal.go.ast.Ast_expr.Expr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return [for (i in stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseList(_p, _inRhs)) i];
    }
    static public function _parseExprList(_p:T_parser):Array<stdgo._internal.go.ast.Ast_expr.Expr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return [for (i in stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseExprList(_p)) i];
    }
    static public function _parseIdentList(_p:T_parser):Array<stdgo._internal.go.ast.Ast_ident.Ident> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return [for (i in stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseIdentList(_p)) i];
    }
    static public function _parseIdent(_p:T_parser):stdgo._internal.go.ast.Ast_ident.Ident {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._parseIdent(_p);
    }
    static public function _safePos(_p:T_parser, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._safePos(_p, _pos);
    }
    static public function _advance(_p:T_parser, _to:Map<stdgo._internal.go.token.Token_token.Token, Bool>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _to = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>();
            for (key => value in _to) {
                __obj__[key] = value;
            };
            __obj__;
        };
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._advance(_p, _to);
    }
    static public function _atComma(_p:T_parser, _context:String, _follow:stdgo._internal.go.token.Token_token.Token):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._atComma(_p, _context, _follow);
    }
    static public function _expectSemi(_p:T_parser):stdgo._internal.go.ast.Ast_commentgroup.CommentGroup {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._expectSemi(_p);
    }
    static public function _expectClosing(_p:T_parser, _tok:stdgo._internal.go.token.Token_token.Token, _context:String):stdgo._internal.go.token.Token_pos.Pos {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._expectClosing(_p, _tok, _context);
    }
    static public function _expect2(_p:T_parser, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._expect2(_p, _tok);
    }
    static public function _expect(_p:T_parser, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._expect(_p, _tok);
    }
    static public function _errorExpected(_p:T_parser, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._errorExpected(_p, _pos, _msg);
    }
    static public function _error(_p:T_parser, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._error(_p, _pos, _msg);
    }
    static public function _next(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._next(_p);
    }
    static public function _consumeCommentGroup(_p:T_parser, _n:StdTypes.Int):stdgo.Tuple<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._consumeCommentGroup(_p, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _consumeComment(_p:T_parser):stdgo.Tuple<stdgo._internal.go.ast.Ast_comment.Comment, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._consumeComment(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _next0(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._next0(_p);
    }
    static public function _printTrace(_p:T_parser, _a:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._printTrace(_p, ...[for (i in _a) i]);
    }
    static public function _init(_p:T_parser, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _filename:String, _src:Array<std.UInt>, _mode:Mode):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _filename = (_filename : stdgo.GoString);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension._init(_p, _fset, _filename, _src, _mode);
    }
}
@:dox(hide) typedef T_bailoutPointer = stdgo._internal.go.parser.Parser_t_bailoutpointer.T_bailoutPointer;
@:dox(hide) class T_bailout_static_extension {

}
@:dox(hide) typedef T_fieldPointer = stdgo._internal.go.parser.Parser_t_fieldpointer.T_fieldPointer;
@:dox(hide) class T_field_static_extension {

}
@:dox(hide) typedef T_resolverPointer = stdgo._internal.go.parser.Parser_t_resolverpointer.T_resolverPointer;
@:dox(hide) class T_resolver_static_extension {
    static public function _walkBody(_r:T_resolver, _body:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _body = (_body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkBody(_r, _body);
    }
    static public function _walkTParams(_r:T_resolver, _list:stdgo._internal.go.ast.Ast_fieldlist.FieldList):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = (_list : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkTParams(_r, _list);
    }
    static public function _walkFieldList(_r:T_resolver, _list:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = (_list : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkFieldList(_r, _list, _kind);
    }
    static public function _walkRecv(_r:T_resolver, _recv:stdgo._internal.go.ast.Ast_fieldlist.FieldList):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _recv = (_recv : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkRecv(_r, _recv);
    }
    static public function _declareList(_r:T_resolver, _list:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = (_list : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._declareList(_r, _list, _kind);
    }
    static public function _resolveList(_r:T_resolver, _list:stdgo._internal.go.ast.Ast_fieldlist.FieldList):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = (_list : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._resolveList(_r, _list);
    }
    static public function _walkFuncType(_r:T_resolver, _typ:stdgo._internal.go.ast.Ast_functype.FuncType):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkFuncType(_r, _typ);
    }
    static public function visit(_r:T_resolver, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        return stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension.visit(_r, _node);
    }
    static public function _walkStmts(_r:T_resolver, _list:Array<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkStmts(_r, _list);
    }
    static public function _walkLHS(_r:T_resolver, _list:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkLHS(_r, _list);
    }
    static public function _walkExprs(_r:T_resolver, _list:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._walkExprs(_r, _list);
    }
    static public function _resolve(_r:T_resolver, _ident:stdgo._internal.go.ast.Ast_ident.Ident, _collectUnresolved:Bool):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _ident = (_ident : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._resolve(_r, _ident, _collectUnresolved);
    }
    static public function _shortVarDecl(_r:T_resolver, _decl:stdgo._internal.go.ast.Ast_assignstmt.AssignStmt):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _decl = (_decl : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._shortVarDecl(_r, _decl);
    }
    static public function _declare(_r:T_resolver, _decl:stdgo.AnyInterface, _data:stdgo.AnyInterface, _scope:stdgo._internal.go.ast.Ast_scope.Scope, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _idents:haxe.Rest<stdgo._internal.go.ast.Ast_ident.Ident>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _decl = (_decl : stdgo.AnyInterface);
        final _data = (_data : stdgo.AnyInterface);
        final _scope = (_scope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._declare(_r, _decl, _data, _scope, _kind, ...[for (i in _idents) i]);
    }
    static public function _closeLabelScope(_r:T_resolver):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._closeLabelScope(_r);
    }
    static public function _openLabelScope(_r:T_resolver):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._openLabelScope(_r);
    }
    static public function _closeScope(_r:T_resolver):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._closeScope(_r);
    }
    static public function _openScope(_r:T_resolver, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._openScope(_r, _pos);
    }
    static public function _sprintf(_r:T_resolver, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._sprintf(_r, _format, ...[for (i in _args) i]);
    }
    static public function _trace(_r:T_resolver, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension._trace(_r, _format, ...[for (i in _args) i]);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.go.parser.Parser_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef ModePointer = stdgo._internal.go.parser.Parser_modepointer.ModePointer;
class Mode_static_extension {

}
@:dox(hide) typedef T_parseSpecFunctionPointer = stdgo._internal.go.parser.Parser_t_parsespecfunctionpointer.T_parseSpecFunctionPointer;
@:dox(hide) class T_parseSpecFunction_static_extension {

}
/**
    * Package parser implements a parser for Go source files. Input may be
    * provided in a variety of forms (see the various Parse* functions); the
    * output is an abstract syntax tree (AST) representing the Go source. The
    * parser is invoked through one of the Parse* functions.
    * 
    * The parser accepts a larger language than is syntactically permitted by
    * the Go spec, for simplicity, and for improved robustness in the presence
    * of syntax errors. For instance, in method declarations, the receiver is
    * treated like an ordinary parameter list and thus may contain multiple
    * entries where the spec permits exactly one. Consequently, the corresponding
    * field in the AST (ast.FuncDecl.Recv) field is not restricted to one entry.
**/
class Parser {
    /**
        * ParseFile parses the source code of a single Go source file and returns
        * the corresponding ast.File node. The source code may be provided via
        * the filename of the source file, or via the src parameter.
        * 
        * If src != nil, ParseFile parses the source from src and the filename is
        * only used when recording position information. The type of the argument
        * for the src parameter must be string, []byte, or io.Reader.
        * If src == nil, ParseFile parses the file specified by filename.
        * 
        * The mode parameter controls the amount of source text parsed and other
        * optional parser functionality. If the SkipObjectResolution mode bit is set,
        * the object resolution phase of parsing will be skipped, causing File.Scope,
        * File.Unresolved, and all Ident.Obj fields to be nil.
        * 
        * Position information is recorded in the file set fset, which must not be
        * nil.
        * 
        * If the source couldn't be read, the returned AST is nil and the error
        * indicates the specific failure. If the source was read but syntax
        * errors were found, the result is a partial AST (with ast.Bad* nodes
        * representing the fragments of erroneous source code). Multiple errors
        * are returned via a scanner.ErrorList which is sorted by source position.
    **/
    static public inline function parseFile(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _filename:String, _src:stdgo.AnyInterface, _mode:Mode):stdgo.Tuple<stdgo._internal.go.ast.Ast_file.File, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _filename = (_filename : stdgo.GoString);
        final _src = (_src : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename, _src, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseDir calls ParseFile for all files with names ending in ".go" in the
        * directory specified by path and returns a map of package name -> package
        * AST with all the packages found.
        * 
        * If filter != nil, only the files with fs.FileInfo entries passing through
        * the filter (and ending in ".go") are considered. The mode bits are passed
        * to ParseFile unchanged. Position information is recorded in fset, which
        * must not be nil.
        * 
        * If the directory couldn't be read, a nil map and the respective error are
        * returned. If a parse error occurred, a non-nil but incomplete map and the
        * first error encountered are returned.
    **/
    static public inline function parseDir(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _path:String, _filter:stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> Bool, _mode:Mode):stdgo.Tuple<Map<String, stdgo._internal.go.ast.Ast_package.Package>, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _path = (_path : stdgo.GoString);
        final _filter = _filter;
        return {
            final obj = stdgo._internal.go.parser.Parser_parsedir.parseDir(_fset, _path, _filter, _mode);
            { _0 : {
                final __obj__:Map<String, stdgo._internal.go.ast.Ast_package.Package> = [];
                for (key => value in obj._0) {
                    __obj__[key] = value;
                };
                __obj__;
            }, _1 : obj._1 };
        };
    }
    /**
        * ParseExprFrom is a convenience function for parsing an expression.
        * The arguments have the same meaning as for ParseFile, but the source must
        * be a valid Go (type or value) expression. Specifically, fset must not
        * be nil.
        * 
        * If the source couldn't be read, the returned AST is nil and the error
        * indicates the specific failure. If the source was read but syntax
        * errors were found, the result is a partial AST (with ast.Bad* nodes
        * representing the fragments of erroneous source code). Multiple errors
        * are returned via a scanner.ErrorList which is sorted by source position.
    **/
    static public inline function parseExprFrom(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _filename:String, _src:stdgo.AnyInterface, _mode:Mode):stdgo.Tuple<stdgo._internal.go.ast.Ast_expr.Expr, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _filename = (_filename : stdgo.GoString);
        final _src = (_src : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(_fset, _filename, _src, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseExpr is a convenience function for obtaining the AST of an expression x.
        * The position information recorded in the AST is undefined. The filename used
        * in error messages is the empty string.
        * 
        * If syntax errors were found, the result is a partial AST (with ast.Bad* nodes
        * representing the fragments of erroneous source code). Multiple errors are
        * returned via a scanner.ErrorList which is sorted by source position.
    **/
    static public inline function parseExpr(_x:String):stdgo.Tuple<stdgo._internal.go.ast.Ast_expr.Expr, stdgo.Error> {
        final _x = (_x : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.parser.Parser_parseexpr.parseExpr(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
