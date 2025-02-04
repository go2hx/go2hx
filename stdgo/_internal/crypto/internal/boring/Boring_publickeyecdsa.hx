package stdgo._internal.crypto.internal.boring;
@:structInit @:using(stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa_static_extension.PublicKeyECDSA_static_extension) class PublicKeyECDSA {
    @:optional
    public var __1 : stdgo.GoInt = 0;
    public function new(?__1:stdgo.GoInt) {
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKeyECDSA(__1);
    }
}
