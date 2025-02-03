package stdgo.internal.singleflight;
@:structInit @:using(stdgo.internal.singleflight.Singleflight.T_call_static_extension) abstract T_call(stdgo._internal.internal.singleflight.Singleflight_T_call.T_call) from stdgo._internal.internal.singleflight.Singleflight_T_call.T_call to stdgo._internal.internal.singleflight.Singleflight_T_call.T_call {
    public var _wg(get, set) : stdgo._internal.sync.Sync_WaitGroup.WaitGroup;
    function get__wg():stdgo._internal.sync.Sync_WaitGroup.WaitGroup return this._wg;
    function set__wg(v:stdgo._internal.sync.Sync_WaitGroup.WaitGroup):stdgo._internal.sync.Sync_WaitGroup.WaitGroup {
        this._wg = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _dups(get, set) : StdTypes.Int;
    function get__dups():StdTypes.Int return this._dups;
    function set__dups(v:StdTypes.Int):StdTypes.Int {
        this._dups = (v : stdgo.GoInt);
        return v;
    }
    public var _chans(get, set) : Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>;
    function get__chans():Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>> return [for (i in this._chans) i];
    function set__chans(v:Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>):Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>> {
        this._chans = ([for (i in v) (i : stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>)] : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>);
        return v;
    }
    public function new(?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:StdTypes.Int, ?_chans:Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>) this = new stdgo._internal.internal.singleflight.Singleflight_T_call.T_call(_wg, (_val : stdgo.AnyInterface), (_err : stdgo.Error), (_dups : stdgo.GoInt), ([for (i in _chans) (i : stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>)] : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
