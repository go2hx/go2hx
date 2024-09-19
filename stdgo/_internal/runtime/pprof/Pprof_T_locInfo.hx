package stdgo._internal.runtime.pprof;
@:structInit class T_locInfo {
    public var _id : stdgo.GoUInt64 = 0;
    public var _pcs : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _firstPCFrames : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
    public var _firstPCSymbolizeResult : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
    public function new(?_id:stdgo.GoUInt64, ?_pcs:stdgo.Slice<stdgo.GoUIntptr>, ?_firstPCFrames:stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>, ?_firstPCSymbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag) {
        if (_id != null) this._id = _id;
        if (_pcs != null) this._pcs = _pcs;
        if (_firstPCFrames != null) this._firstPCFrames = _firstPCFrames;
        if (_firstPCSymbolizeResult != null) this._firstPCSymbolizeResult = _firstPCSymbolizeResult;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_locInfo(_id, _pcs, _firstPCFrames, _firstPCSymbolizeResult);
    }
}