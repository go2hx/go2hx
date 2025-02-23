package stdgo.constraint;
class Expr_static_extension {
    static public function _isExpr(t:stdgo._internal.go.build.constraint.Constraint_expr.Expr):Void {
        stdgo._internal.go.build.constraint.Constraint_expr_static_extension.Expr_static_extension._isExpr(t);
    }
    static public function eval(t:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _ok:String -> Bool):Bool {
        final _ok = _ok;
        return stdgo._internal.go.build.constraint.Constraint_expr_static_extension.Expr_static_extension.eval(t, _ok);
    }
    static public function string(t:stdgo._internal.go.build.constraint.Constraint_expr.Expr):String {
        return stdgo._internal.go.build.constraint.Constraint_expr_static_extension.Expr_static_extension.string(t);
    }
}
@:forward abstract Expr(stdgo._internal.go.build.constraint.Constraint_expr.Expr) from stdgo._internal.go.build.constraint.Constraint_expr.Expr to stdgo._internal.go.build.constraint.Constraint_expr.Expr {
    @:from
    static function fromHaxeInterface(x:{ function string():String; function eval(_ok:String -> Bool):Bool; function _isExpr():Void; }):Expr {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Expr = { string : () -> x.string(), eval : _0 -> x.eval(_0 -> _0(_0)), _isExpr : () -> x._isExpr(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.build.constraint.Constraint.TagExpr_static_extension) abstract TagExpr(stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr) from stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr to stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr {
    public var tag(get, set) : String;
    function get_tag():String return this.tag;
    function set_tag(v:String):String {
        this.tag = (v : stdgo.GoString);
        return v;
    }
    public function new(?tag:String) this = new stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr((tag : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.constraint.Constraint.NotExpr_static_extension) abstract NotExpr(stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr) from stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr to stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public function new(?x:Expr) this = new stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.constraint.Constraint.AndExpr_static_extension) abstract AndExpr(stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr) from stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr to stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var y(get, set) : Expr;
    function get_y():Expr return this.y;
    function set_y(v:Expr):Expr {
        this.y = v;
        return v;
    }
    public function new(?x:Expr, ?y:Expr) this = new stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.constraint.Constraint.OrExpr_static_extension) abstract OrExpr(stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr) from stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr to stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr {
    public var x(get, set) : Expr;
    function get_x():Expr return this.x;
    function set_x(v:Expr):Expr {
        this.x = v;
        return v;
    }
    public var y(get, set) : Expr;
    function get_y():Expr return this.y;
    function set_y(v:Expr):Expr {
        this.y = v;
        return v;
    }
    public function new(?x:Expr, ?y:Expr) this = new stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.constraint.Constraint.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError) from stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError to stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError {
    public var offset(get, set) : StdTypes.Int;
    function get_offset():StdTypes.Int return this.offset;
    function set_offset(v:StdTypes.Int):StdTypes.Int {
        this.offset = (v : stdgo.GoInt);
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public function new(?offset:StdTypes.Int, ?err:String) this = new stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError((offset : stdgo.GoInt), (err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.constraint.Constraint.T_exprParser_static_extension) @:dox(hide) abstract T_exprParser(stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser) from stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser to stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _i(get, set) : StdTypes.Int;
    function get__i():StdTypes.Int return this._i;
    function set__i(v:StdTypes.Int):StdTypes.Int {
        this._i = (v : stdgo.GoInt);
        return v;
    }
    public var _tok(get, set) : String;
    function get__tok():String return this._tok;
    function set__tok(v:String):String {
        this._tok = (v : stdgo.GoString);
        return v;
    }
    public var _isTag(get, set) : Bool;
    function get__isTag():Bool return this._isTag;
    function set__isTag(v:Bool):Bool {
        this._isTag = v;
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_s:String, ?_i:StdTypes.Int, ?_tok:String, ?_isTag:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser((_s : stdgo.GoString), (_i : stdgo.GoInt), (_tok : stdgo.GoString), _isTag, (_pos : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TagExprPointer = stdgo._internal.go.build.constraint.Constraint_tagexprpointer.TagExprPointer;
class TagExpr_static_extension {
    static public function string(_x:TagExpr):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>);
        return stdgo._internal.go.build.constraint.Constraint_tagexpr_static_extension.TagExpr_static_extension.string(_x);
    }
    static public function eval(_x:TagExpr, _ok:String -> Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>);
        final _ok = _ok;
        return stdgo._internal.go.build.constraint.Constraint_tagexpr_static_extension.TagExpr_static_extension.eval(_x, _ok);
    }
    static public function _isExpr(_x:TagExpr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>);
        stdgo._internal.go.build.constraint.Constraint_tagexpr_static_extension.TagExpr_static_extension._isExpr(_x);
    }
}
typedef NotExprPointer = stdgo._internal.go.build.constraint.Constraint_notexprpointer.NotExprPointer;
class NotExpr_static_extension {
    static public function string(_x:NotExpr):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>);
        return stdgo._internal.go.build.constraint.Constraint_notexpr_static_extension.NotExpr_static_extension.string(_x);
    }
    static public function eval(_x:NotExpr, _ok:String -> Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>);
        final _ok = _ok;
        return stdgo._internal.go.build.constraint.Constraint_notexpr_static_extension.NotExpr_static_extension.eval(_x, _ok);
    }
    static public function _isExpr(_x:NotExpr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>);
        stdgo._internal.go.build.constraint.Constraint_notexpr_static_extension.NotExpr_static_extension._isExpr(_x);
    }
}
typedef AndExprPointer = stdgo._internal.go.build.constraint.Constraint_andexprpointer.AndExprPointer;
class AndExpr_static_extension {
    static public function string(_x:AndExpr):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>);
        return stdgo._internal.go.build.constraint.Constraint_andexpr_static_extension.AndExpr_static_extension.string(_x);
    }
    static public function eval(_x:AndExpr, _ok:String -> Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>);
        final _ok = _ok;
        return stdgo._internal.go.build.constraint.Constraint_andexpr_static_extension.AndExpr_static_extension.eval(_x, _ok);
    }
    static public function _isExpr(_x:AndExpr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>);
        stdgo._internal.go.build.constraint.Constraint_andexpr_static_extension.AndExpr_static_extension._isExpr(_x);
    }
}
typedef OrExprPointer = stdgo._internal.go.build.constraint.Constraint_orexprpointer.OrExprPointer;
class OrExpr_static_extension {
    static public function string(_x:OrExpr):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>);
        return stdgo._internal.go.build.constraint.Constraint_orexpr_static_extension.OrExpr_static_extension.string(_x);
    }
    static public function eval(_x:OrExpr, _ok:String -> Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>);
        final _ok = _ok;
        return stdgo._internal.go.build.constraint.Constraint_orexpr_static_extension.OrExpr_static_extension.eval(_x, _ok);
    }
    static public function _isExpr(_x:OrExpr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>);
        stdgo._internal.go.build.constraint.Constraint_orexpr_static_extension.OrExpr_static_extension._isExpr(_x);
    }
}
typedef SyntaxErrorPointer = stdgo._internal.go.build.constraint.Constraint_syntaxerrorpointer.SyntaxErrorPointer;
class SyntaxError_static_extension {
    static public function error(_e:SyntaxError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>);
        return stdgo._internal.go.build.constraint.Constraint_syntaxerror_static_extension.SyntaxError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_exprParserPointer = stdgo._internal.go.build.constraint.Constraint_t_exprparserpointer.T_exprParserPointer;
@:dox(hide) class T_exprParser_static_extension {
    static public function _lex(_p:T_exprParser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
        stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension._lex(_p);
    }
    static public function _atom(_p:T_exprParser):Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
        return stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension._atom(_p);
    }
    static public function _not(_p:T_exprParser):Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
        return stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension._not(_p);
    }
    static public function _and(_p:T_exprParser):Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
        return stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension._and(_p);
    }
    static public function _or(_p:T_exprParser):Expr {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
        return stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension._or(_p);
    }
}
/**
    * Package constraint implements parsing and evaluation of build constraint lines.
    * See https://golang.org/cmd/go/#hdr-Build_constraints for documentation about build constraints themselves.
    * 
    * This package parses both the original “// +build” syntax and the “//go:build” syntax that was added in Go 1.17.
    * See https://golang.org/design/draft-gobuild for details about the “//go:build” syntax.
**/
class Constraint {
    /**
        * Parse parses a single build constraint line of the form “//go:build ...” or “// +build ...”
        * and returns the corresponding boolean expression.
    **/
    static public inline function parse(_line:String):stdgo.Tuple<Expr, stdgo.Error> {
        final _line = (_line : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.constraint.Constraint_parse.parse(_line);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * IsGoBuild reports whether the line of text is a “//go:build” constraint.
        * It only checks the prefix of the text, not that the expression itself parses.
    **/
    static public inline function isGoBuild(_line:String):Bool {
        final _line = (_line : stdgo.GoString);
        return stdgo._internal.go.build.constraint.Constraint_isgobuild.isGoBuild(_line);
    }
    /**
        * IsPlusBuild reports whether the line of text is a “// +build” constraint.
        * It only checks the prefix of the text, not that the expression itself parses.
    **/
    static public inline function isPlusBuild(_line:String):Bool {
        final _line = (_line : stdgo.GoString);
        return stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_line);
    }
    /**
        * PlusBuildLines returns a sequence of “// +build” lines that evaluate to the build expression x.
        * If the expression is too complex to convert directly to “// +build” lines, PlusBuildLines returns an error.
    **/
    static public inline function plusBuildLines(_x:Expr):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.go.build.constraint.Constraint_plusbuildlines.plusBuildLines(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * GoVersion returns the minimum Go version implied by a given build expression.
        * If the expression can be satisfied without any Go version tags, GoVersion returns an empty string.
        * 
        * For example:
        * 
        * 	GoVersion(linux && go1.22) = "go1.22"
        * 	GoVersion((linux && go1.22) || (windows && go1.20)) = "go1.20" => go1.20
        * 	GoVersion(linux) = ""
        * 	GoVersion(linux || (windows && go1.22)) = ""
        * 	GoVersion(!go1.22) = ""
        * 
        * GoVersion assumes that any tag or negated tag may independently be true,
        * so that its analysis can be purely structural, without SAT solving.
        * “Impossible” subexpressions may therefore affect the result.
        * 
        * For example:
        * 
        * 	GoVersion((linux && !linux && go1.20) || go1.21) = "go1.20"
    **/
    static public inline function goVersion(_x:Expr):String {
        return stdgo._internal.go.build.constraint.Constraint_goversion.goVersion(_x);
    }
}
