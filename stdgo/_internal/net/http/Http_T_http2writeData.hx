package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writeData_static_extension.T_http2writeData_static_extension) class T_http2writeData {
    public var _streamID : stdgo.GoUInt32 = 0;
    public var _p : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _endStream : Bool = false;
    public function new(?_streamID:stdgo.GoUInt32, ?_p:stdgo.Slice<stdgo.GoUInt8>, ?_endStream:Bool) {
        if (_streamID != null) this._streamID = _streamID;
        if (_p != null) this._p = _p;
        if (_endStream != null) this._endStream = _endStream;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writeData(_streamID, _p, _endStream);
    }
}
