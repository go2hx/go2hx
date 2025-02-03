package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_pcDeck_static_extension) abstract T_pcDeck(stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck) from stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck to stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck {
    public var _pcs(get, set) : Array<stdgo.GoUIntptr>;
    function get__pcs():Array<stdgo.GoUIntptr> return [for (i in this._pcs) i];
    function set__pcs(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._pcs = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _frames(get, set) : Array<stdgo._internal.runtime.Runtime_Frame.Frame>;
    function get__frames():Array<stdgo._internal.runtime.Runtime_Frame.Frame> return [for (i in this._frames) i];
    function set__frames(v:Array<stdgo._internal.runtime.Runtime_Frame.Frame>):Array<stdgo._internal.runtime.Runtime_Frame.Frame> {
        this._frames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        return v;
    }
    public var _symbolizeResult(get, set) : T_symbolizeFlag;
    function get__symbolizeResult():T_symbolizeFlag return this._symbolizeResult;
    function set__symbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._symbolizeResult = v;
        return v;
    }
    public var _firstPCFrames(get, set) : StdTypes.Int;
    function get__firstPCFrames():StdTypes.Int return this._firstPCFrames;
    function set__firstPCFrames(v:StdTypes.Int):StdTypes.Int {
        this._firstPCFrames = (v : stdgo.GoInt);
        return v;
    }
    public var _firstPCSymbolizeResult(get, set) : T_symbolizeFlag;
    function get__firstPCSymbolizeResult():T_symbolizeFlag return this._firstPCSymbolizeResult;
    function set__firstPCSymbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._firstPCSymbolizeResult = v;
        return v;
    }
    public function new(?_pcs:Array<stdgo.GoUIntptr>, ?_frames:Array<stdgo._internal.runtime.Runtime_Frame.Frame>, ?_symbolizeResult:T_symbolizeFlag, ?_firstPCFrames:StdTypes.Int, ?_firstPCSymbolizeResult:T_symbolizeFlag) this = new stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck(([for (i in _pcs) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), ([for (i in _frames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>), _symbolizeResult, (_firstPCFrames : stdgo.GoInt), _firstPCSymbolizeResult);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
