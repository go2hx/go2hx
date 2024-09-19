package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _h : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header> = (null : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
    public function new(?_h:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>) {
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_h);
    }
}
