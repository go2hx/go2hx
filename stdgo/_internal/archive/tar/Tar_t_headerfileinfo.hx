package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _h : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header> = (null : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
    public function new(?_h:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>) {
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_h);
    }
}
