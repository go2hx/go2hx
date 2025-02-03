package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_noBody_static_extension) abstract T_noBody(stdgo._internal.net.http.Http_T_noBody.T_noBody) from stdgo._internal.net.http.Http_T_noBody.T_noBody to stdgo._internal.net.http.Http_T_noBody.T_noBody {
    public function new() this = new stdgo._internal.net.http.Http_T_noBody.T_noBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
