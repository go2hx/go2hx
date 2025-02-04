package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension) class T_compiler {
    public var _p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
    public function new(?_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compiler(_p);
    }
}
