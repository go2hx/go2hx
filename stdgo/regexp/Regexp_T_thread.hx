package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_thread_static_extension) abstract T_thread(stdgo._internal.regexp.Regexp_T_thread.T_thread) from stdgo._internal.regexp.Regexp_T_thread.T_thread to stdgo._internal.regexp.Regexp_T_thread.T_thread {
    public var _inst(get, set) : Inst;
    function get__inst():Inst return this._inst;
    function set__inst(v:Inst):Inst {
        this._inst = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inst:Inst, ?_cap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp_T_thread.T_thread((_inst : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>), ([for (i in _cap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
