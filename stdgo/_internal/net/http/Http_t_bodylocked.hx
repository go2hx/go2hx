package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_bodylocked_static_extension.T_bodyLocked_static_extension) class T_bodyLocked {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bodyLocked();
    }
}
