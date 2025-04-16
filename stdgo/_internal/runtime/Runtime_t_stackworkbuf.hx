package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackworkbuf_static_extension.T_stackWorkBuf_static_extension) class T_stackWorkBuf {
    @:embedded
    public var _stackWorkBufHdr : stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr = ({} : stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr);
    public function new(?_stackWorkBufHdr:stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr) {
        if (_stackWorkBufHdr != null) this._stackWorkBufHdr = _stackWorkBufHdr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stackWorkBuf(_stackWorkBufHdr);
    }
}
