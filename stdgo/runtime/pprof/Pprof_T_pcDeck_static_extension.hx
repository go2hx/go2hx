package stdgo.runtime.pprof;
class T_pcDeck_static_extension {
    static public function _tryAdd(_d:T_pcDeck, _pc:stdgo.GoUIntptr, _frames:Array<stdgo._internal.runtime.Runtime_Frame.Frame>, _symbolizeResult:T_symbolizeFlag):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>);
        final _pc = (_pc : stdgo.GoUIntptr);
        final _frames = ([for (i in _frames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        return stdgo._internal.runtime.pprof.Pprof_T_pcDeck_static_extension.T_pcDeck_static_extension._tryAdd(_d, _pc, _frames, _symbolizeResult);
    }
    static public function _reset(_d:T_pcDeck):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>);
        stdgo._internal.runtime.pprof.Pprof_T_pcDeck_static_extension.T_pcDeck_static_extension._reset(_d);
    }
}
