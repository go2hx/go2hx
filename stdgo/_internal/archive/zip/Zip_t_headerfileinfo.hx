package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
    public function new(?_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>) {
        if (_fh != null) this._fh = _fh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_fh);
    }
}
