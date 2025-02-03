package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_bodyLocked_static_extension) abstract T_bodyLocked(stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked) from stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked to stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked {
    public function new() this = new stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
