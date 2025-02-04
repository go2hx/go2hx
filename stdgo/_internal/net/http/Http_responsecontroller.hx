package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_responsecontroller_static_extension.ResponseController_static_extension) class ResponseController {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ResponseController();
    }
}
