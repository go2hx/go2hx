package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_cthwrapper_static_extension.T_cthWrapper_static_extension) class T_cthWrapper {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cthWrapper();
    }
}
