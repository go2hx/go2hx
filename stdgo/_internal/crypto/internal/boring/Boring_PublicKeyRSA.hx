package stdgo._internal.crypto.internal.boring;
@:structInit class PublicKeyRSA {
    @:optional
    public var __3 : stdgo.GoInt = 0;
    public function new(?__3:stdgo.GoInt) {
        if (__3 != null) this.__3 = __3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKeyRSA(__3);
    }
}