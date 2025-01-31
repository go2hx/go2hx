package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension) class T_x25519Curve {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_x25519Curve();
    }
}
