package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension) class ResponseController {
    public var _rw : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
    public function new(?_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter) {
        if (_rw != null) this._rw = _rw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ResponseController(_rw);
    }
}
