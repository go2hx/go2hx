package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_extraHeader_static_extension.T_extraHeader_static_extension) class T_extraHeader {
    public var _contentType : stdgo.GoString = "";
    public var _connection : stdgo.GoString = "";
    public var _transferEncoding : stdgo.GoString = "";
    public var _date : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _contentLength : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_contentType:stdgo.GoString, ?_connection:stdgo.GoString, ?_transferEncoding:stdgo.GoString, ?_date:stdgo.Slice<stdgo.GoUInt8>, ?_contentLength:stdgo.Slice<stdgo.GoUInt8>) {
        if (_contentType != null) this._contentType = _contentType;
        if (_connection != null) this._connection = _connection;
        if (_transferEncoding != null) this._transferEncoding = _transferEncoding;
        if (_date != null) this._date = _date;
        if (_contentLength != null) this._contentLength = _contentLength;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_extraHeader(_contentType, _connection, _transferEncoding, _date, _contentLength);
    }
}
