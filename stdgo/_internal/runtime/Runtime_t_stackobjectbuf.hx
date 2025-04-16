package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackobjectbuf_static_extension.T_stackObjectBuf_static_extension) class T_stackObjectBuf {
    @:embedded
    public var _stackObjectBufHdr : stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr = ({} : stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr);
    public function new(?_stackObjectBufHdr:stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr) {
        if (_stackObjectBufHdr != null) this._stackObjectBufHdr = _stackObjectBufHdr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stackObjectBuf(_stackObjectBufHdr);
    }
}
