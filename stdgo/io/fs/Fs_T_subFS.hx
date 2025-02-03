package stdgo.io.fs;
@:structInit @:using(stdgo.io.fs.Fs.T_subFS_static_extension) abstract T_subFS(stdgo._internal.io.fs.Fs_T_subFS.T_subFS) from stdgo._internal.io.fs.Fs_T_subFS.T_subFS to stdgo._internal.io.fs.Fs_T_subFS.T_subFS {
    public var _fsys(get, set) : FS;
    function get__fsys():FS return this._fsys;
    function set__fsys(v:FS):FS {
        this._fsys = v;
        return v;
    }
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = (v : stdgo.GoString);
        return v;
    }
    public function new(?_fsys:FS, ?_dir:String) this = new stdgo._internal.io.fs.Fs_T_subFS.T_subFS(_fsys, (_dir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
