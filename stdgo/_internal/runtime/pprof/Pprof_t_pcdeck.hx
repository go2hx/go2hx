package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_pcdeck_static_extension.T_pcDeck_static_extension) class T_pcDeck {
    public var _pcs : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _frames : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
    public var _symbolizeResult : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
    public var _firstPCFrames : stdgo.GoInt = 0;
    public var _firstPCSymbolizeResult : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
    public function new(?_pcs:stdgo.Slice<stdgo.GoUIntptr>, ?_frames:stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>, ?_symbolizeResult:stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag, ?_firstPCFrames:stdgo.GoInt, ?_firstPCSymbolizeResult:stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag) {
        if (_pcs != null) this._pcs = _pcs;
        if (_frames != null) this._frames = _frames;
        if (_symbolizeResult != null) this._symbolizeResult = _symbolizeResult;
        if (_firstPCFrames != null) this._firstPCFrames = _firstPCFrames;
        if (_firstPCSymbolizeResult != null) this._firstPCSymbolizeResult = _firstPCSymbolizeResult;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pcDeck(_pcs, _frames, _symbolizeResult, _firstPCFrames, _firstPCSymbolizeResult);
    }
}
