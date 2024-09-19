package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.os.Os_T_unixDirent_static_extension.T_unixDirent_static_extension) class T_unixDirent {
    public var _parent : stdgo.GoString = "";
    public var _name : stdgo.GoString = "";
    public var _typ : stdgo._internal.io.fs.Fs_FileMode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    public var _info : stdgo._internal.io.fs.Fs_FileInfo.FileInfo = (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
    public function new(?_parent:stdgo.GoString, ?_name:stdgo.GoString, ?_typ:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo) {
        if (_parent != null) this._parent = _parent;
        if (_name != null) this._name = _name;
        if (_typ != null) this._typ = _typ;
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unixDirent(_parent, _name, _typ, _info);
    }
}