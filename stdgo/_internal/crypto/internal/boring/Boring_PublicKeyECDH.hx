package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
@:structInit @:using(stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH_static_extension.PublicKeyECDH_static_extension) class PublicKeyECDH {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKeyECDH();
    }
}
