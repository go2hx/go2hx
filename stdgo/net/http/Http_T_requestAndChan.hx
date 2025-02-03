package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_requestAndChan_static_extension) abstract T_requestAndChan(stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan) from stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan to stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan {
    public function new() this = new stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
