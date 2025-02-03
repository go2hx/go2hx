package stdgo.regexp;
class T_machine_static_extension {
    static public function _add(_m:T_machine, _q:T_queue, _pc:std.UInt, _pos:StdTypes.Int, _cap:Array<StdTypes.Int>, _cond:stdgo.Pointer<T_lazyFlag>, _t:T_thread):T_thread {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        final _cap = ([for (i in _cap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        final _t = (_t : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>);
        return stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._add(_m, _q, _pc, _pos, _cap, _cond, _t);
    }
    static public function _step(_m:T_machine, _runq:T_queue, _nextq:T_queue, _pos:StdTypes.Int, _nextPos:StdTypes.Int, _c:StdTypes.Int, _nextCond:stdgo.Pointer<T_lazyFlag>):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        final _runq = (_runq : stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>);
        final _nextq = (_nextq : stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>);
        final _pos = (_pos : stdgo.GoInt);
        final _nextPos = (_nextPos : stdgo.GoInt);
        final _c = (_c : stdgo.GoInt32);
        stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._step(_m, _runq, _nextq, _pos, _nextPos, _c, _nextCond);
    }
    static public function _clear(_m:T_machine, _q:T_queue):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>);
        stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._clear(_m, _q);
    }
    static public function _match(_m:T_machine, _i:T_input, _pos:StdTypes.Int):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._match(_m, _i, _pos);
    }
    static public function _alloc(_m:T_machine, _i:Inst):T_thread {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        return stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._alloc(_m, _i);
    }
    static public function _init(_m:T_machine, _ncap:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        final _ncap = (_ncap : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._init(_m, _ncap);
    }
}
