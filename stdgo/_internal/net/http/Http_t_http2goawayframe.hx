package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension) class T_http2GoAwayFrame {
    public var lastStreamID : stdgo.GoUInt32 = 0;
    public var errCode : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
    public function new(?lastStreamID:stdgo.GoUInt32, ?errCode:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) {
        if (lastStreamID != null) this.lastStreamID = lastStreamID;
        if (errCode != null) this.errCode = errCode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var header(get, never) : () -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:check31 (this.lastStreamID ?? throw "null pointer dereference").header;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.lastStreamID ?? throw "null pointer dereference").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check32 this.lastStreamID._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check32 this.lastStreamID._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void return @:check31 (this.lastStreamID ?? throw "null pointer dereference")._writeDebug;
    public function __copy__() {
        return new T_http2GoAwayFrame(lastStreamID, errCode);
    }
}
