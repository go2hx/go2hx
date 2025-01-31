package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
function newPrivateKeyRSA(n:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, e:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, d:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, p:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, q:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, dp:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, dq:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt, qinv:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>; var _1 : stdgo.Error; } {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
