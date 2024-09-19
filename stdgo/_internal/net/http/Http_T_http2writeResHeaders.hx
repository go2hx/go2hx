package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writeResHeaders_static_extension.T_http2writeResHeaders_static_extension) class T_http2writeResHeaders {
    public var _streamID : stdgo.GoUInt32 = 0;
    public var _httpResCode : stdgo.GoInt = 0;
    public var _h : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _trailers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _endStream : Bool = false;
    public var _date : stdgo.GoString = "";
    public var _contentType : stdgo.GoString = "";
    public var _contentLength : stdgo.GoString = "";
    public function new(?_streamID:stdgo.GoUInt32, ?_httpResCode:stdgo.GoInt, ?_h:stdgo._internal.net.http.Http_Header.Header, ?_trailers:stdgo.Slice<stdgo.GoString>, ?_endStream:Bool, ?_date:stdgo.GoString, ?_contentType:stdgo.GoString, ?_contentLength:stdgo.GoString) {
        if (_streamID != null) this._streamID = _streamID;
        if (_httpResCode != null) this._httpResCode = _httpResCode;
        if (_h != null) this._h = _h;
        if (_trailers != null) this._trailers = _trailers;
        if (_endStream != null) this._endStream = _endStream;
        if (_date != null) this._date = _date;
        if (_contentType != null) this._contentType = _contentType;
        if (_contentLength != null) this._contentLength = _contentLength;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writeResHeaders(_streamID, _httpResCode, _h, _trailers, _endStream, _date, _contentType, _contentLength);
    }
}
