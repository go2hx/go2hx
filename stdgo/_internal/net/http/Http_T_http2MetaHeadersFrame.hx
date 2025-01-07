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
    public var hasPriority(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_hasPriority():() -> Bool return @:check32 this._http2HeadersFrame.hasPriority;
    public var header(get, never) : () -> stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return @:check31 (this._http2HeadersFrame ?? throw "null pointer dereference").header;
    public var headerBlockFragment(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_headerBlockFragment():() -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this._http2HeadersFrame.headerBlockFragment;
    public var headersEnded(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_headersEnded():() -> Bool return @:check32 this._http2HeadersFrame.headersEnded;
    public var streamEnded(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_streamEnded():() -> Bool return @:check32 this._http2HeadersFrame.streamEnded;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this._http2HeadersFrame ?? throw "null pointer dereference").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check32 this._http2HeadersFrame._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check32 this._http2HeadersFrame._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> -> Void return @:check31 (this._http2HeadersFrame ?? throw "null pointer dereference")._writeDebug;
    public function __copy__() {
        return new T_http2MetaHeadersFrame(_http2HeadersFrame, fields, truncated);
    }
}
