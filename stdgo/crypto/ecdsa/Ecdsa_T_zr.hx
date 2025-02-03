package stdgo.crypto.ecdsa;
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.T_zr_static_extension) abstract T_zr(stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr) from stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr to stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr {
    public function new() this = new stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
