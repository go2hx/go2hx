package stdgo.crypto.internal.boring;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyECDH_static_extension) abstract PublicKeyECDH(stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH) from stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH to stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH {
    public function new() this = new stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
