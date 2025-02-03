package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.Profile_static_extension) abstract Profile(stdgo._internal.runtime.pprof.Pprof_Profile.Profile) from stdgo._internal.runtime.pprof.Pprof_Profile.Profile to stdgo._internal.runtime.pprof.Pprof_Profile.Profile {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>;
    function get__m():stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>):stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>> {
        this._m = (v : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>);
        return v;
    }
    public var _count(get, set) : () -> stdgo.GoInt;
    function get__count():() -> stdgo.GoInt return () -> this._count();
    function set__count(v:() -> stdgo.GoInt):() -> stdgo.GoInt {
        this._count = v;
        return v;
    }
    public var _write(get, set) : (stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error;
    function get__write():(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error return (_0, _1) -> this._write(_0, _1);
    function set__write(v:(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error):(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error {
        this._write = v;
        return v;
    }
    public function new(?_name:String, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>, ?_count:() -> stdgo.GoInt, ?_write:(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error) this = new stdgo._internal.runtime.pprof.Pprof_Profile.Profile((_name : stdgo.GoString), _mu, (_m : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>), _count, _write);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
