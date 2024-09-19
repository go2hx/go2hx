package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2frameCache_static_extension.T_http2frameCache_static_extension) class T_http2frameCache {
    public var _dataFrame : stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame = ({} : stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame);
    public function new(?_dataFrame:stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame) {
        if (_dataFrame != null) this._dataFrame = _dataFrame;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2frameCache(_dataFrame);
    }
}
