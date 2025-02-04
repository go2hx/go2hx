package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_profile_static_extension.Profile_static_extension) class Profile {
    public var _name : stdgo.GoString = "";
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>);
    public var _count : () -> stdgo.GoInt = null;
    public var _write : (stdgo._internal.io.Io_writer.Writer, stdgo.GoInt) -> stdgo.Error = null;
    public function new(?_name:stdgo.GoString, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>, ?_count:() -> stdgo.GoInt, ?_write:(stdgo._internal.io.Io_writer.Writer, stdgo.GoInt) -> stdgo.Error) {
        if (_name != null) this._name = _name;
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
        if (_count != null) this._count = _count;
        if (_write != null) this._write = _write;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Profile(_name, _mu, _m, _count, _write);
    }
}
