package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension) class T_http2HeadersFrame {
    @:embedded
    public var _http2FrameHeader : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader);
    public var priority : stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam = ({} : stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam);
    public var _headerFragBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_http2FrameHeader:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, ?priority:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam, ?_headerFragBuf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_http2FrameHeader != null) this._http2FrameHeader = _http2FrameHeader;
        if (priority != null) this.priority = priority;
        if (_headerFragBuf != null) this._headerFragBuf = _headerFragBuf;
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
        return new T_http2HeadersFrame(_http2FrameHeader, priority, _headerFragBuf);
    }
}