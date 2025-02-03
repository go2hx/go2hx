package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_fakeLocker_static_extension) abstract T_fakeLocker(stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker) from stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker to stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker {
    public function new() this = new stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
