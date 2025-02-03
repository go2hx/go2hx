package stdgo.crypto.ecdh;
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.T_x25519Curve_static_extension) abstract T_x25519Curve(stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve) from stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve to stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve {
    public function new() this = new stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
