package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.ResponseController_static_extension) abstract ResponseController(stdgo._internal.net.http.Http_ResponseController.ResponseController) from stdgo._internal.net.http.Http_ResponseController.ResponseController to stdgo._internal.net.http.Http_ResponseController.ResponseController {
    public function new() this = new stdgo._internal.net.http.Http_ResponseController.ResponseController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
