package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_httpRange_static_extension.T_httpRange_static_extension) class T_httpRange {
    public var _start : stdgo.GoInt64 = 0;
    public var _length : stdgo.GoInt64 = 0;
    public function new(?_start:stdgo.GoInt64, ?_length:stdgo.GoInt64) {
        if (_start != null) this._start = _start;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_httpRange(_start, _length);
    }
}
