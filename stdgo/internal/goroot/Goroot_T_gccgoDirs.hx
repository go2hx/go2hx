package stdgo.internal.goroot;
@:structInit @:using(stdgo.internal.goroot.Goroot.T_gccgoDirs_static_extension) abstract T_gccgoDirs(stdgo._internal.internal.goroot.Goroot_T_gccgoDirs.T_gccgoDirs) from stdgo._internal.internal.goroot.Goroot_T_gccgoDirs.T_gccgoDirs to stdgo._internal.internal.goroot.Goroot_T_gccgoDirs.T_gccgoDirs {
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _dirs(get, set) : Array<String>;
    function get__dirs():Array<String> return [for (i in this._dirs) i];
    function set__dirs(v:Array<String>):Array<String> {
        this._dirs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_Once.Once, ?_dirs:Array<String>) this = new stdgo._internal.internal.goroot.Goroot_T_gccgoDirs.T_gccgoDirs(_once, ([for (i in _dirs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
