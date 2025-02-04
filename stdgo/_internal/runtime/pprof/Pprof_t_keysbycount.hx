package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_keysbycount_static_extension.T_keysByCount_static_extension) class T_keysByCount {
    public var _keys : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _count : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public function new(?_keys:stdgo.Slice<stdgo.GoString>, ?_count:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) {
        if (_keys != null) this._keys = _keys;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_keysByCount(_keys, _count);
    }
}
