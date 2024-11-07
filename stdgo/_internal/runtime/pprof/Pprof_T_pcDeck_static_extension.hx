package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_pcDeck_asInterface) class T_pcDeck_static_extension {
    @:keep
    static public function _tryAdd( _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>, _pc:stdgo.GoUIntptr, _frames:stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>, _symbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck> = _d;
        var _success = false;
        {
            var _existing = (_d._frames.length : stdgo.GoInt);
            if ((_existing > (0 : stdgo.GoInt) : Bool)) {
                var _newFrame = (_frames[(0 : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_Frame.Frame);
                var _last = (_d._frames[(_existing - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_Frame.Frame);
                if ((_last.func != null && ((_last.func : Dynamic).__nil__ == null || !(_last.func : Dynamic).__nil__))) {
                    return false;
                };
                if (((_last.entry == (0 : stdgo.GoUIntptr)) || (_newFrame.entry == (0 : stdgo.GoUIntptr)) : Bool)) {
                    return false;
                };
                if (_last.entry != (_newFrame.entry)) {
                    return false;
                };
                if (_last.function_ == (_newFrame.function_)) {
                    return false;
                };
            };
        };
        _d._pcs = (_d._pcs.__append__(_pc));
        _d._frames = (_d._frames.__append__(...(_frames : Array<stdgo._internal.runtime.Runtime_Frame.Frame>)));
        _d._symbolizeResult = (_d._symbolizeResult | (_symbolizeResult) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
        if ((_d._pcs.length) == ((1 : stdgo.GoInt))) {
            _d._firstPCFrames = (_d._frames.length);
            _d._firstPCSymbolizeResult = _symbolizeResult;
        };
        return true;
    }
    @:keep
    static public function _reset( _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck> = _d;
        _d._pcs = (_d._pcs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
        _d._frames = (_d._frames.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        _d._symbolizeResult = (0 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
        _d._firstPCFrames = (0 : stdgo.GoInt);
        _d._firstPCSymbolizeResult = (0 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
    }
}
