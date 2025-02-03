package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_machine_static_extension) abstract T_machine(stdgo._internal.regexp.Regexp_T_machine.T_machine) from stdgo._internal.regexp.Regexp_T_machine.T_machine to stdgo._internal.regexp.Regexp_T_machine.T_machine {
    public var _re(get, set) : Regexp_;
    function get__re():Regexp_ return this._re;
    function set__re(v:Regexp_):Regexp_ {
        this._re = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return v;
    }
    public var _p(get, set) : Prog;
    function get__p():Prog return this._p;
    function set__p(v:Prog):Prog {
        this._p = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        return v;
    }
    public var _q0(get, set) : T_queue;
    function get__q0():T_queue return this._q0;
    function set__q0(v:T_queue):T_queue {
        this._q0 = v;
        return v;
    }
    public var _q1(get, set) : T_queue;
    function get__q1():T_queue return this._q1;
    function set__q1(v:T_queue):T_queue {
        this._q1 = v;
        return v;
    }
    public var _pool(get, set) : Array<T_thread>;
    function get__pool():Array<T_thread> return [for (i in this._pool) i];
    function set__pool(v:Array<T_thread>):Array<T_thread> {
        this._pool = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>>);
        return v;
    }
    public var _matched(get, set) : Bool;
    function get__matched():Bool return this._matched;
    function set__matched(v:Bool):Bool {
        this._matched = v;
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_re:Regexp_, ?_p:Prog, ?_q0:T_queue, ?_q1:T_queue, ?_pool:Array<T_thread>, ?_matched:Bool, ?_matchcap:Array<StdTypes.Int>, ?_inputs:T_inputs) this = new stdgo._internal.regexp.Regexp_T_machine.T_machine((_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>), (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>), _q0, _q1, ([for (i in _pool) (i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>>), _matched, ([for (i in _matchcap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
