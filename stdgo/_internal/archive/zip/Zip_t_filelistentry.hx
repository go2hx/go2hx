package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_filelistentry_static_extension.T_fileListEntry_static_extension) class T_fileListEntry {
    public var _name : stdgo.GoString = "";
    public var _file : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>);
    public var _isDir : Bool = false;
    public var _isDup : Bool = false;
    public function new(?_name:stdgo.GoString, ?_file:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, ?_isDir:Bool, ?_isDup:Bool) {
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
        if (_isDir != null) this._isDir = _isDir;
        if (_isDup != null) this._isDup = _isDup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileListEntry(_name, _file, _isDir, _isDup);
    }
}
