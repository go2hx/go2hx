package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function decryptOAEP(_hash:stdgo._internal.hash.Hash_Hash.Hash, _random:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.rsa.Rsa__decryptOAEP._decryptOAEP(_hash, _hash, _random, _priv, _ciphertext, _label);
    }
