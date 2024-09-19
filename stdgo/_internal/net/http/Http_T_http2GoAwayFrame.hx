package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension) class T_http2GoAwayFrame {
    @:embedded
    public var _http2FrameHeader : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader);
    public var lastStreamID : stdgo.GoUInt32 = 0;
    public var errCode : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
    public var _debugData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_http2FrameHeader:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, ?lastStreamID:stdgo.GoUInt32, ?errCode:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, ?_debugData:stdgo.Slice<stdgo.GoUInt8>) {
        if (_http2FrameHeader != null) this._http2FrameHeader = _http2FrameHeader;
        if (lastStreamID != null) this.lastStreamID = lastStreamID;
        if (errCode != null) this.errCode = errCode;
        if (_debugData != null) this._debugData = _debugData;
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
        return new T_http2GoAwayFrame(_http2FrameHeader, lastStreamID, errCode, _debugData);
    }
}
