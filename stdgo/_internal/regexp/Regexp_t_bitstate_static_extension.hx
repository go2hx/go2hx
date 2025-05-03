package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_bitState_asInterface) class T_bitState_static_extension {
    @:keep
    @:tdfield
    static public function _push( _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _arg:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = _b;
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L134"
        if ((((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)].op != (5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) && ((_arg || _b._shouldVisit(_pc, _pos) : Bool)) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__append__(({ _pc : _pc, _arg : _arg, _pos : _pos } : stdgo._internal.regexp.Regexp_t_job.T_job)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
        };
    }
    @:keep
    @:tdfield
    static public function _shouldVisit( _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = _b;
        var _n = ((((_pc : stdgo.GoInt) * (((@:checkr _b ?? throw "null pointer dereference")._end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + _pos : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L122"
        if (((@:checkr _b ?? throw "null pointer dereference")._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L123"
            return false;
        };
        (@:checkr _b ?? throw "null pointer dereference")._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ((@:checkr _b ?? throw "null pointer dereference")._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L126"
        return true;
    }
    @:keep
    @:tdfield
    static public function _reset( _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _end:stdgo.GoInt, _ncap:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._end = _end;
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L83"
        if ((@:checkr _b ?? throw "null pointer dereference")._jobs.capacity == ((0 : stdgo.GoInt))) {
            (@:checkr _b ?? throw "null pointer dereference")._jobs = (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>((0 : stdgo.GoInt).toBasic(), (256 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (256 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (256 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_job.T_job)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
        };
        var _visitedSize = (((((((@:checkr _prog ?? throw "null pointer dereference").inst.length) * ((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (32 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L90"
        if (((@:checkr _b ?? throw "null pointer dereference")._visited.capacity < _visitedSize : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._visited = (new stdgo.Slice<stdgo.GoUInt32>((_visitedSize : stdgo.GoInt).toBasic(), (8192 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._visited = ((@:checkr _b ?? throw "null pointer dereference")._visited.__slice__(0, _visitedSize) : stdgo.Slice<stdgo.GoUInt32>);
            //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L94"
            for (_i => _ in (@:checkr _b ?? throw "null pointer dereference")._visited) {
                (@:checkr _b ?? throw "null pointer dereference")._visited[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L99"
        if (((@:checkr _b ?? throw "null pointer dereference")._cap.capacity < _ncap : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._cap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._cap = ((@:checkr _b ?? throw "null pointer dereference")._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L104"
        for (_i => _ in (@:checkr _b ?? throw "null pointer dereference")._cap) {
            (@:checkr _b ?? throw "null pointer dereference")._cap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L108"
        if (((@:checkr _b ?? throw "null pointer dereference")._matchcap.capacity < _ncap : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._matchcap = ((@:checkr _b ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L113"
        for (_i => _ in (@:checkr _b ?? throw "null pointer dereference")._matchcap) {
            (@:checkr _b ?? throw "null pointer dereference")._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
    }
}
