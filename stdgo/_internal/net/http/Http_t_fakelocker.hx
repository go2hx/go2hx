package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_fakelocker_static_extension.T_fakeLocker_static_extension) class T_fakeLocker {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fakeLocker();
    }
}
