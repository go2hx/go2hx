package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_workbuf_static_extension.T_workbuf_static_extension) class T_workbuf {
    @:embedded
    public var _workbufhdr : stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr = ({} : stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr);
    public function new(?_workbufhdr:stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr) {
        if (_workbufhdr != null) this._workbufhdr = _workbufhdr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workbuf(_workbufhdr);
    }
}
