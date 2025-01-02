package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2RSTStreamFrame_static_extension.T_http2RSTStreamFrame_static_extension) class T_http2RSTStreamFrame {
    @:embedded
    public var _http2FrameHeader : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader);
    public var errCode : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
    public function new(?_http2FrameHeader:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, ?errCode:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) {
        if (_http2FrameHeader != null) this._http2FrameHeader = _http2FrameHeader;
        if (errCode != null) this.errCode = errCode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var header(get, never) : () -> stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence").header;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence")._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence")._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> -> Void return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence")._writeDebug;
    public function __copy__() {
        return new T_http2RSTStreamFrame(_http2FrameHeader, errCode);
    }
}
