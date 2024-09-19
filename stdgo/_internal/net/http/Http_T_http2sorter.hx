package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension) class T_http2sorter {
    public var _v : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_v:stdgo.Slice<stdgo.GoString>) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2sorter(_v);
    }
}
