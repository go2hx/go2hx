package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_headerFileInfo_static_extension) abstract T_headerFileInfo(stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo) from stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo to stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo {
    public var _fh(get, set) : FileHeader;
    function get__fh():FileHeader return this._fh;
    function set__fh(v:FileHeader):FileHeader {
        this._fh = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return v;
    }
    public function new(?_fh:FileHeader) this = new stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo((_fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
