package stdgo._internal.bytes;
@:structInit @:using(stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension) class Buffer {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt = 0;
    public var _lastRead : stdgo._internal.bytes.Bytes_t_readop.T_readOp = ((0 : stdgo.GoInt8) : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:stdgo._internal.bytes.Bytes_t_readop.T_readOp) {
        if (_buf != null) this._buf = _buf;
        if (_off != null) this._off = _off;
        if (_lastRead != null) this._lastRead = _lastRead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Buffer(_buf, _off, _lastRead);
    }
}
