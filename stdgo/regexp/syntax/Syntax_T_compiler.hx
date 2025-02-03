package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) abstract T_compiler(stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler) from stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler to stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler {
    public var _p(get, set) : Prog;
    function get__p():Prog return this._p;
    function set__p(v:Prog):Prog {
        this._p = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        return v;
    }
    public function new(?_p:Prog) this = new stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler((_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
