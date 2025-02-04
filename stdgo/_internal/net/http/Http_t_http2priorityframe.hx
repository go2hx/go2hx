package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension) class T_http2PriorityFrame {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var header(get, never) : () -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:check31 (this.new ?? throw "null pointer dereference").header;
    public var isZero(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isZero():() -> Bool return @:check31 (this.__underlying__ ?? throw "null pointer dereference").isZero;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.new ?? throw "null pointer dereference").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check32 this.new._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check32 this.new._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void return @:check31 (this.new ?? throw "null pointer dereference")._writeDebug;
    public function __copy__() {
        return new T_http2PriorityFrame();
    }
}
