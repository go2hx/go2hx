package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_locInfo_static_extension) abstract T_locInfo(stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo) from stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo to stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pcs(get, set) : Array<stdgo.GoUIntptr>;
    function get__pcs():Array<stdgo.GoUIntptr> return [for (i in this._pcs) i];
    function set__pcs(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._pcs = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _firstPCFrames(get, set) : Array<stdgo._internal.runtime.Runtime_Frame.Frame>;
    function get__firstPCFrames():Array<stdgo._internal.runtime.Runtime_Frame.Frame> return [for (i in this._firstPCFrames) i];
    function set__firstPCFrames(v:Array<stdgo._internal.runtime.Runtime_Frame.Frame>):Array<stdgo._internal.runtime.Runtime_Frame.Frame> {
        this._firstPCFrames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        return v;
    }
    public var _firstPCSymbolizeResult(get, set) : T_symbolizeFlag;
    function get__firstPCSymbolizeResult():T_symbolizeFlag return this._firstPCSymbolizeResult;
    function set__firstPCSymbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._firstPCSymbolizeResult = v;
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_pcs:Array<stdgo.GoUIntptr>, ?_firstPCFrames:Array<stdgo._internal.runtime.Runtime_Frame.Frame>, ?_firstPCSymbolizeResult:T_symbolizeFlag) this = new stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo((_id : stdgo.GoUInt64), ([for (i in _pcs) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), ([for (i in _firstPCFrames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>), _firstPCSymbolizeResult);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
