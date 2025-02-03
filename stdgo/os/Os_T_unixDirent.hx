package stdgo.os;
@:structInit @:using(stdgo.os.Os.T_unixDirent_static_extension) abstract T_unixDirent(stdgo._internal.os.Os_T_unixDirent.T_unixDirent) from stdgo._internal.os.Os_T_unixDirent.T_unixDirent to stdgo._internal.os.Os_T_unixDirent.T_unixDirent {
    public var _parent(get, set) : String;
    function get__parent():String return this._parent;
    function set__parent(v:String):String {
        this._parent = (v : stdgo.GoString);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.io.fs.Fs_FileMode.FileMode;
    function get__typ():stdgo._internal.io.fs.Fs_FileMode.FileMode return this._typ;
    function set__typ(v:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        this._typ = v;
        return v;
    }
    public var _info(get, set) : stdgo._internal.io.fs.Fs_FileInfo.FileInfo;
    function get__info():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return this._info;
    function set__info(v:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_parent:String, ?_name:String, ?_typ:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo) this = new stdgo._internal.os.Os_T_unixDirent.T_unixDirent((_parent : stdgo.GoString), (_name : stdgo.GoString), _typ, _info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
