package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
@:structInit @:using(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH_static_extension.PrivateKeyECDH_static_extension) class PrivateKeyECDH {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrivateKeyECDH();
    }
}
