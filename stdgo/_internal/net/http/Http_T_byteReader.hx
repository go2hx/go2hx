package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_byteReader_static_extension.T_byteReader_static_extension) class T_byteReader {
    public var _b : stdgo.GoUInt8 = 0;
    public var _done : Bool = false;
    public function new(?_b:stdgo.GoUInt8, ?_done:Bool) {
        if (_b != null) this._b = _b;
        if (_done != null) this._done = _done;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_byteReader(_b, _done);
    }
}
