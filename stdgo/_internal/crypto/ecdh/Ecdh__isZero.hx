package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
function _isZero(_a:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _acc:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        for (__0 => _b in _a) {
            _acc = (_acc | (_b) : stdgo.GoUInt8);
        };
        return _acc == ((0 : stdgo.GoUInt8));
    }
