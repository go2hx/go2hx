package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_opendir_static_extension.T_openDir_static_extension) class T_openDir {
    public var _e : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
    public var _files : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = (null : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_e:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>, ?_files:stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>, ?_offset:stdgo.GoInt) {
        if (_e != null) this._e = _e;
        if (_files != null) this._files = _files;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_e, _files, _offset);
    }
}
