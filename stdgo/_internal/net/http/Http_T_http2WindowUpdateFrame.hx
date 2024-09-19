package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2WindowUpdateFrame_static_extension.T_http2WindowUpdateFrame_static_extension) class T_http2WindowUpdateFrame {
    @:embedded
    public var _http2FrameHeader : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader);
    public var increment : stdgo.GoUInt32 = 0;
    public function new(?_http2FrameHeader:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, ?increment:stdgo.GoUInt32) {
        if (_http2FrameHeader != null) this._http2FrameHeader = _http2FrameHeader;
        if (increment != null) this.increment = increment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function header():stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return this._http2FrameHeader.header();
    @:embedded
    public function string():stdgo.GoString return this._http2FrameHeader.string();
    @:embedded
    public function _checkValid() this._http2FrameHeader._checkValid();
    @:embedded
    public function _invalidate() this._http2FrameHeader._invalidate();
    @:embedded
    public function _writeDebug(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) this._http2FrameHeader._writeDebug(_buf);
    public function __copy__() {
        return new T_http2WindowUpdateFrame(_http2FrameHeader, increment);
    }
}
