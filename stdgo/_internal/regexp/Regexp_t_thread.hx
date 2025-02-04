package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_thread_static_extension.T_thread_static_extension) class T_thread {
    public var _inst : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
    public var _cap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_inst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, ?_cap:stdgo.Slice<stdgo.GoInt>) {
        if (_inst != null) this._inst = _inst;
        if (_cap != null) this._cap = _cap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_thread(_inst, _cap);
    }
}
