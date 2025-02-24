package stdgo;
@:structInit @:using(stdgo.internal.singleflight.Singleflight.T_call_static_extension) @:dox(hide) abstract T_call(stdgo._internal.internal.singleflight.Singleflight_t_call.T_call) from stdgo._internal.internal.singleflight.Singleflight_t_call.T_call to stdgo._internal.internal.singleflight.Singleflight_t_call.T_call {
    public var _wg(get, set) : stdgo._internal.sync.Sync_waitgroup.WaitGroup;
    function get__wg():stdgo._internal.sync.Sync_waitgroup.WaitGroup return this._wg;
    function set__wg(v:stdgo._internal.sync.Sync_waitgroup.WaitGroup):stdgo._internal.sync.Sync_waitgroup.WaitGroup {
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
    public var _chans(get, set) : Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>;
    function get__chans():Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>> return [for (i in this._chans) i];
    function set__chans(v:Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>):Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>> {
        this._chans = ([for (i in v) (i : stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>)] : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>);
        return v;
    }
    public function new(?_wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:StdTypes.Int, ?_chans:Array<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>) this = new stdgo._internal.internal.singleflight.Singleflight_t_call.T_call(_wg, (_val : stdgo.AnyInterface), (_err : stdgo.Error), (_dups : stdgo.GoInt), ([for (i in _chans) (i : stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>)] : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.singleflight.Singleflight.Group_static_extension) abstract Group(stdgo._internal.internal.singleflight.Singleflight_group.Group) from stdgo._internal.internal.singleflight.Singleflight_group.Group to stdgo._internal.internal.singleflight.Singleflight_group.Group {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : Map<String, T_call>;
    function get__m():Map<String, T_call> return {
        final __obj__:Map<String, T_call> = [];
        for (key => value in this._m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__m(v:Map<String, T_call>):Map<String, T_call> {
        this._m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:Map<String, T_call>) this = new stdgo._internal.internal.singleflight.Singleflight_group.Group(_mu, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>();
        for (key => value in _m) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.singleflight.Singleflight.Result_static_extension) abstract Result(stdgo._internal.internal.singleflight.Singleflight_result.Result) from stdgo._internal.internal.singleflight.Singleflight_result.Result to stdgo._internal.internal.singleflight.Singleflight_result.Result {
    public var val(get, set) : stdgo.AnyInterface;
    function get_val():stdgo.AnyInterface return this.val;
    function set_val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.val = (v : stdgo.AnyInterface);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var shared(get, set) : Bool;
    function get_shared():Bool return this.shared;
    function set_shared(v:Bool):Bool {
        this.shared = v;
        return v;
    }
    public function new(?val:stdgo.AnyInterface, ?err:stdgo.Error, ?shared:Bool) this = new stdgo._internal.internal.singleflight.Singleflight_result.Result((val : stdgo.AnyInterface), (err : stdgo.Error), shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_callPointer = stdgo._internal.internal.singleflight.Singleflight_t_callpointer.T_callPointer;
@:dox(hide) class T_call_static_extension {

}
typedef GroupPointer = stdgo._internal.internal.singleflight.Singleflight_grouppointer.GroupPointer;
class Group_static_extension {
    static public function forgetUnshared(_g:Group, _key:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.internal.singleflight.Singleflight_group_static_extension.Group_static_extension.forgetUnshared(_g, _key);
    }
    static public function _doCall(_g:Group, _c:T_call, _key:String, _fn:() -> stdgo.Tuple<stdgo.AnyInterface, stdgo.Error>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>);
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
        final _key = (_key : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.internal.singleflight.Singleflight_group_static_extension.Group_static_extension._doCall(_g, _c, _key, _fn);
    }
    static public function doChan(_g:Group, _key:String, _fn:() -> stdgo.Tuple<stdgo.AnyInterface, stdgo.Error>):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>);
        final _key = (_key : stdgo.GoString);
        final _fn = _fn;
        return stdgo._internal.internal.singleflight.Singleflight_group_static_extension.Group_static_extension.doChan(_g, _key, _fn);
    }
    static public function do_(_g:Group, _key:String, _fn:() -> stdgo.Tuple<stdgo.AnyInterface, stdgo.Error>):stdgo.Tuple.Tuple3<stdgo.AnyInterface, stdgo.Error, Bool> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>);
        final _key = (_key : stdgo.GoString);
        final _fn = _fn;
        return {
            final obj = stdgo._internal.internal.singleflight.Singleflight_group_static_extension.Group_static_extension.do_(_g, _key, _fn);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef ResultPointer = stdgo._internal.internal.singleflight.Singleflight_resultpointer.ResultPointer;
class Result_static_extension {

}
/**
    * Package singleflight provides a duplicate function call suppression
    * mechanism.
**/
class Singleflight {

}
