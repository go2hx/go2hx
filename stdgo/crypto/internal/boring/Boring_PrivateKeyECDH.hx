package stdgo.crypto.internal.boring;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyECDH_static_extension) abstract PrivateKeyECDH(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH) from stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH to stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH {
    public function new() this = new stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
