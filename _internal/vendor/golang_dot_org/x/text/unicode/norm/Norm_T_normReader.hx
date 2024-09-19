package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normReader_static_extension.T_normReader_static_extension) class T_normReader {
    public var _rb : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _inbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _bufStart : stdgo.GoInt = 0;
    public var _lastBoundary : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_rb:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_inbuf:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.Slice<stdgo.GoUInt8>, ?_bufStart:stdgo.GoInt, ?_lastBoundary:stdgo.GoInt, ?_err:stdgo.Error) {
        if (_rb != null) this._rb = _rb;
        if (_r != null) this._r = _r;
        if (_inbuf != null) this._inbuf = _inbuf;
        if (_outbuf != null) this._outbuf = _outbuf;
        if (_bufStart != null) this._bufStart = _bufStart;
        if (_lastBoundary != null) this._lastBoundary = _lastBoundary;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_normReader(_rb, _r, _inbuf, _outbuf, _bufStart, _lastBoundary, _err);
    }
}
