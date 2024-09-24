package stdgo.internal.singleflight;
@:structInit abstract T_call(stdgo._internal.internal.singleflight.Singleflight_T_call.T_call) from stdgo._internal.internal.singleflight.Singleflight_T_call.T_call to stdgo._internal.internal.singleflight.Singleflight_T_call.T_call {
    public var _wg(get, set) : stdgo._internal.sync.Sync_WaitGroup.WaitGroup;
    function get__wg():stdgo._internal.sync.Sync_WaitGroup.WaitGroup return this._wg;
    function set__wg(v:stdgo._internal.sync.Sync_WaitGroup.WaitGroup):stdgo._internal.sync.Sync_WaitGroup.WaitGroup {
        this._wg = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _dups(get, set) : StdTypes.Int;
    function get__dups():StdTypes.Int return this._dups;
    function set__dups(v:StdTypes.Int):StdTypes.Int {
        this._dups = v;
        return v;
    }
    public var _chans(get, set) : Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>;
    function get__chans():Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>> return [for (i in this._chans) i];
    function set__chans(v:Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>):Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>> {
        this._chans = ([for (i in v) i] : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>);
        return v;
    }
    public function new(?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:StdTypes.Int, ?_chans:Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>) this = new stdgo._internal.internal.singleflight.Singleflight_T_call.T_call(_wg, _val, _err, _dups, ([for (i in _chans) i] : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.singleflight.Singleflight.Group_static_extension) abstract Group(stdgo._internal.internal.singleflight.Singleflight_Group.Group) from stdgo._internal.internal.singleflight.Singleflight_Group.Group to stdgo._internal.internal.singleflight.Singleflight_Group.Group {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>> {
        this._m = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>) this = new stdgo._internal.internal.singleflight.Singleflight_Group.Group(_mu, _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Result(stdgo._internal.internal.singleflight.Singleflight_Result.Result) from stdgo._internal.internal.singleflight.Singleflight_Result.Result to stdgo._internal.internal.singleflight.Singleflight_Result.Result {
    public var val(get, set) : stdgo.AnyInterface;
    function get_val():stdgo.AnyInterface return this.val;
    function set_val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.val = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public var shared(get, set) : Bool;
    function get_shared():Bool return this.shared;
    function set_shared(v:Bool):Bool {
        this.shared = v;
        return v;
    }
    public function new(?val:stdgo.AnyInterface, ?err:stdgo.Error, ?shared:Bool) this = new stdgo._internal.internal.singleflight.Singleflight_Result.Result(val, err, shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Group_static_extension {
    static public function forgetUnshared(_g:Group, _key:String):Bool {
        return stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension.forgetUnshared(_g, _key);
    }
    static public function _doCall(_g:Group, _c:T_call, _key:String, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):Void {
        final _fn = _fn;
        stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension._doCall(_g, _c, _key, _fn);
    }
    static public function doChan(_g:Group, _key:String, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result> {
        final _fn = _fn;
        return stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension.doChan(_g, _key, _fn);
    }
    static public function do_(_g:Group, _key:String, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Tuple.Tuple3<stdgo.AnyInterface, stdgo.Error, Bool> {
        final _fn = _fn;
        return {
            final obj = stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension.do_(_g, _key, _fn);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
/**
    Package singleflight provides a duplicate function call suppression
    mechanism.
**/
class Singleflight {

}
