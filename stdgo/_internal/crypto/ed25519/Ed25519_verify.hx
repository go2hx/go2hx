package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import _internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
function verify(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
    }
