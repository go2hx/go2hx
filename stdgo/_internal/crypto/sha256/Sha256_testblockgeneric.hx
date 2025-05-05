package stdgo._internal.crypto.sha256;
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L220"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L221"
            _t.skip(stdgo.Go.toInterface(("BoringCrypto doesn\'t expose digest" : stdgo.GoString)));
        };
        var __0 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>), __1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
var _asm = __1, _gen = __0;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1280 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L225"
        stdgo._internal.crypto.rand.Rand_read.read(_buf);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L226"
        stdgo._internal.crypto.sha256.Sha256__blockgeneric._blockGeneric(_gen, _buf);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L227"
        stdgo._internal.crypto.sha256.Sha256__block._block(_asm, _buf);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L228"
        if (stdgo.Go.toInterface((_gen : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest)) != stdgo.Go.toInterface((_asm : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L229"
            _t.error(stdgo.Go.toInterface(("block and blockGeneric resulted in different states" : stdgo.GoString)));
        };
    }
