package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension) class T_machine {
    public var _re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    public var _p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
    public var _q0 : stdgo._internal.regexp.Regexp_t_queue.T_queue = ({} : stdgo._internal.regexp.Regexp_t_queue.T_queue);
    public var _q1 : stdgo._internal.regexp.Regexp_t_queue.T_queue = ({} : stdgo._internal.regexp.Regexp_t_queue.T_queue);
    public var _pool : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
    public var _matched : Bool = false;
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _inputs : stdgo._internal.regexp.Regexp_t_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_t_inputs.T_inputs);
    public function new(?_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, ?_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, ?_q0:stdgo._internal.regexp.Regexp_t_queue.T_queue, ?_q1:stdgo._internal.regexp.Regexp_t_queue.T_queue, ?_pool:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>, ?_matched:Bool, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_inputs:stdgo._internal.regexp.Regexp_t_inputs.T_inputs) {
        if (_re != null) this._re = _re;
        if (_p != null) this._p = _p;
        if (_q0 != null) this._q0 = _q0;
        if (_q1 != null) this._q1 = _q1;
        if (_pool != null) this._pool = _pool;
        if (_matched != null) this._matched = _matched;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_machine(_re, _p, _q0, _q1, _pool, _matched, _matchcap, _inputs);
    }
}
