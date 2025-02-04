package stdgo._internal.crypto.internal.boring;
@:structInit @:using(stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa_static_extension.PrivateKeyECDSA_static_extension) class PrivateKeyECDSA {
    @:optional
    public var __2 : stdgo.GoInt = 0;
    public function new(?__2:stdgo.GoInt) {
        if (__2 != null) this.__2 = __2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrivateKeyECDSA(__2);
    }
}
