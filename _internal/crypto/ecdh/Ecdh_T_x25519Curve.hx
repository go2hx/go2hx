package _internal.crypto.ecdh;
@:structInit @:using(_internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension) class T_x25519Curve {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_x25519Curve();
    }
}
