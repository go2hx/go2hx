package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_tracebuf_static_extension.T_traceBuf_static_extension) class T_traceBuf {
    @:embedded
    public var _traceBufHeader : stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader = ({} : stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader);
    public function new(?_traceBufHeader:stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader) {
        if (_traceBufHeader != null) this._traceBufHeader = _traceBufHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_traceBuf(_traceBufHeader);
    }
}
