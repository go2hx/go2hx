package stdgo._internal.crypto.sha1;
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L148"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L149"
            _t.skip(stdgo.Go.toInterface(("BoringCrypto doesn\'t expose digest" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L151"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (30 : stdgo.GoInt) : Bool)) {
                var __0 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.sha1.Sha1_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>), __1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.sha1.Sha1_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
var _asm = __1, _gen = __0;
var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((64 : stdgo.GoInt) * _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L154"
                stdgo._internal.crypto.rand.Rand_read.read(_buf);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L155"
                stdgo._internal.crypto.sha1.Sha1__blockgeneric._blockGeneric(_gen, _buf);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L156"
                stdgo._internal.crypto.sha1.Sha1__block._block(_asm, _buf);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L157"
                if (stdgo.Go.toInterface((_gen : stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest)) != stdgo.Go.toInterface((_asm : stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L158"
                    _t.errorf(("For %#v block and blockGeneric resulted in different states" : stdgo.GoString), stdgo.Go.toInterface(_buf));
                };
                _i++;
            };
        };
    }
