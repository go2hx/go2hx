package _internal.internal.goroot;
@:structInit @:using(_internal.internal.goroot.Goroot_T_gccgoDirs_static_extension.T_gccgoDirs_static_extension) class T_gccgoDirs {
    public var _once : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _dirs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_once:stdgo._internal.sync.Sync_Once.Once, ?_dirs:stdgo.Slice<stdgo.GoString>) {
        if (_once != null) this._once = _once;
        if (_dirs != null) this._dirs = _dirs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gccgoDirs(_once, _dirs);
    }
}