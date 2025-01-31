package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement_static_extension.T_gcmFieldElement_static_extension) class T_gcmFieldElement {
    public var _low : stdgo.GoUInt64 = 0;
    public var _high : stdgo.GoUInt64 = 0;
    public function new(?_low:stdgo.GoUInt64, ?_high:stdgo.GoUInt64) {
        if (_low != null) this._low = _low;
        if (_high != null) this._high = _high;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcmFieldElement(_low, _high);
    }
}
