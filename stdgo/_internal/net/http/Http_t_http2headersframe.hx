package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension) class T_http2HeadersFrame {
    public var priority : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam = ({} : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam);
    public function new(?priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam) {
        if (priority != null) this.priority = priority;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var header(get, never) : () -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:check31 (this.priority ?? throw "null pointer dereference").header;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.priority ?? throw "null pointer dereference").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check32 this.priority._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check32 this.priority._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void return @:check31 (this.priority ?? throw "null pointer dereference")._writeDebug;
    public function __copy__() {
        return new T_http2HeadersFrame(priority);
    }
}
