package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_headerFileInfo_static_extension) abstract T_headerFileInfo(stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo) from stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo to stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo {
    public var _h(get, set) : Header;
    function get__h():Header return this._h;
    function set__h(v:Header):Header {
        this._h = (v : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return v;
    }
    public function new(?_h:Header) this = new stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo((_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
