package stdgo._internal.crypto.internal.boring;
@:structInit class PrivateKeyRSA {
    @:optional
    public var __4 : stdgo.GoInt = 0;
    public function new(?__4:stdgo.GoInt) {
        if (__4 != null) this.__4 = __4;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrivateKeyRSA(__4);
    }
}
