package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension) class T_http2MetaHeadersFrame {
    public var fields : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
    public var truncated : Bool = false;
    public function new(?fields:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>, ?truncated:Bool) {
        if (fields != null) this.fields = fields;
        if (truncated != null) this.truncated = truncated;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var hasPriority(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_hasPriority():() -> Bool return @:check32 this.fields.hasPriority;
    public var header(get, never) : () -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:check31 (this.fields ?? throw "null pointer dereference").header;
    public var headerBlockFragment(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_headerBlockFragment():() -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.fields.headerBlockFragment;
    public var headersEnded(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_headersEnded():() -> Bool return @:check32 this.fields.headersEnded;
    public var streamEnded(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_streamEnded():() -> Bool return @:check32 this.fields.streamEnded;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.fields ?? throw "null pointer dereference").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check32 this.fields._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check32 this.fields._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void return @:check31 (this.fields ?? throw "null pointer dereference")._writeDebug;
    public function __copy__() {
        return new T_http2MetaHeadersFrame(fields, truncated);
    }
}
