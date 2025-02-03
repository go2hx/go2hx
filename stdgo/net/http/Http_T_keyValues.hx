package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_keyValues_static_extension) abstract T_keyValues(stdgo._internal.net.http.Http_T_keyValues.T_keyValues) from stdgo._internal.net.http.Http_T_keyValues.T_keyValues to stdgo._internal.net.http.Http_T_keyValues.T_keyValues {
    public function new() this = new stdgo._internal.net.http.Http_T_keyValues.T_keyValues();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
