package stdgo;
@:structInit @:using(stdgo.internal.goroot.Goroot.T_gccgoDirs_static_extension) @:dox(hide) abstract T_gccgoDirs(stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs) from stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs to stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs {
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _dirs(get, set) : Array<String>;
    function get__dirs():Array<String> return [for (i in this._dirs) i];
    function set__dirs(v:Array<String>):Array<String> {
        this._dirs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_dirs:Array<String>) this = new stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs(_once, ([for (i in _dirs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_gccgoDirsPointer = stdgo._internal.internal.goroot.Goroot_t_gccgodirspointer.T_gccgoDirsPointer;
@:dox(hide) class T_gccgoDirs_static_extension {
    static public function _isStandard(_gd:T_gccgoDirs, _path:String):Bool {
        final _gd = (_gd : stdgo.Ref<stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs>);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.internal.goroot.Goroot_t_gccgodirs_static_extension.T_gccgoDirs_static_extension._isStandard(_gd, _path);
    }
    static public function _init(_gd:T_gccgoDirs):Void {
        final _gd = (_gd : stdgo.Ref<stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs>);
        stdgo._internal.internal.goroot.Goroot_t_gccgodirs_static_extension.T_gccgoDirs_static_extension._init(_gd);
    }
}
class Goroot {
    /**
        * IsStandardPackage reports whether path is a standard package,
        * given goroot and compiler.
    **/
    static public inline function isStandardPackage(_goroot:String, _compiler:String, _path:String):Bool {
        final _goroot = (_goroot : stdgo.GoString);
        final _compiler = (_compiler : stdgo.GoString);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.internal.goroot.Goroot_isstandardpackage.isStandardPackage(_goroot, _compiler, _path);
    }
}
