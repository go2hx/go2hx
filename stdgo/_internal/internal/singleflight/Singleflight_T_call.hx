package stdgo._internal.internal.singleflight;
@:structInit class T_call {
    public var _wg : stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _dups : stdgo.GoInt = 0;
    public var _chans : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>> = (null : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>);
    public function new(?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:stdgo.GoInt, ?_chans:stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>) {
        if (_wg != null) this._wg = _wg;
        if (_val != null) this._val = _val;
        if (_err != null) this._err = _err;
        if (_dups != null) this._dups = _dups;
        if (_chans != null) this._chans = _chans;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_call(_wg, _val, _err, _dups, _chans);
    }
}
