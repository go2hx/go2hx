package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_statuserror_static_extension.T_statusError_static_extension) class T_statusError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statusError();
    }
}
