package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension) class T_http2MetaHeadersFrame {
    @:embedded
    public var _http2HeadersFrame : stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>);
    public var fields : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
    public var truncated : Bool = false;
    public function new(?_http2HeadersFrame:stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>, ?fields:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>, ?truncated:Bool) {
        if (_http2HeadersFrame != null) this._http2HeadersFrame = _http2HeadersFrame;
        if (fields != null) this.fields = fields;
        if (truncated != null) this.truncated = truncated;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function hasPriority():Bool return this._http2HeadersFrame.hasPriority();
    @:embedded
    public function header():stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return this._http2HeadersFrame.header();
    @:embedded
    public function headerBlockFragment():stdgo.Slice<stdgo.GoUInt8> return this._http2HeadersFrame.headerBlockFragment();
    @:embedded
    public function headersEnded():Bool return this._http2HeadersFrame.headersEnded();
    @:embedded
    public function streamEnded():Bool return this._http2HeadersFrame.streamEnded();
    @:embedded
    public function string():stdgo.GoString return this._http2HeadersFrame.string();
    @:embedded
    public function _checkValid() this._http2HeadersFrame._checkValid();
    @:embedded
    public function _invalidate() this._http2HeadersFrame._invalidate();
    @:embedded
    public function _writeDebug(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) this._http2HeadersFrame._writeDebug(_buf);
    public function __copy__() {
        return new T_http2MetaHeadersFrame(_http2HeadersFrame, fields, truncated);
    }
}
