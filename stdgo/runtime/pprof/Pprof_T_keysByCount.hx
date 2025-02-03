package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_keysByCount_static_extension) abstract T_keysByCount(stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount) from stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount to stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount {
    public var _keys(get, set) : Array<String>;
    function get__keys():Array<String> return [for (i in this._keys) i];
    function set__keys(v:Array<String>):Array<String> {
        this._keys = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _count(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__count():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._count;
    function set__count(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._count = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public function new(?_keys:Array<String>, ?_count:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) this = new stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount(([for (i in _keys) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_count : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
