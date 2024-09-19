package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_bitState_asInterface) class T_bitState_static_extension {
    @:keep
    static public function _push( _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _arg:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> = _b;
        if (((_re._prog.inst[(_pc : stdgo.GoInt)].op != (5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) && ((_arg || _b._shouldVisit(_pc, _pos) : Bool)) : Bool)) {
            _b._jobs = (_b._jobs.__append__(({ _pc : _pc, _arg : _arg, _pos : _pos } : stdgo._internal.regexp.Regexp_T_job.T_job)));
        };
    }
    @:keep
    static public function _shouldVisit( _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> = _b;
        var _n = ((((_pc : stdgo.GoInt) * ((_b._end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + _pos : stdgo.GoInt) : stdgo.GoUInt);
        if ((_b._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            return false;
        };
        _b._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = (_b._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return true;
    }
    @:keep
    static public function _reset( _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>, _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>, _end:stdgo.GoInt, _ncap:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> = _b;
        _b._end = _end;
        if (_b._jobs.capacity == ((0 : stdgo.GoInt))) {
            _b._jobs = (new stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>((0 : stdgo.GoInt).toBasic(), (256 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (256 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (256 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_T_job.T_job)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
        } else {
            _b._jobs = (_b._jobs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
        };
        var _visitedSize = ((((((_prog.inst.length) * ((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (32 : stdgo.GoInt) : stdgo.GoInt);
        if ((_b._visited.capacity < _visitedSize : Bool)) {
            _b._visited = (new stdgo.Slice<stdgo.GoUInt32>((_visitedSize : stdgo.GoInt).toBasic(), (8192 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        } else {
            _b._visited = (_b._visited.__slice__(0, _visitedSize) : stdgo.Slice<stdgo.GoUInt32>);
            for (_i => _ in _b._visited) {
                _b._visited[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
            };
        };
        if ((_b._cap.capacity < _ncap : Bool)) {
            _b._cap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            _b._cap = (_b._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        for (_i => _ in _b._cap) {
            _b._cap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        if ((_b._matchcap.capacity < _ncap : Bool)) {
            _b._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            _b._matchcap = (_b._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        for (_i => _ in _b._matchcap) {
            _b._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
    }
}