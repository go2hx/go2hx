package stdgo._internal.crypto.md5;
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.md5.Md5_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.md5.Md5_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.md5.Md5_t_digest.T_digest>), __1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.md5.Md5_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.md5.Md5_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.md5.Md5_t_digest.T_digest>);
var _asm = __1, _gen = __0;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1280 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L149"
        stdgo._internal.crypto.rand.Rand_read.read(_buf);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L150"
        stdgo._internal.crypto.md5.Md5__blockgeneric._blockGeneric(_gen, _buf);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L151"
        stdgo._internal.crypto.md5.Md5__block._block(_asm, _buf);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L152"
        if (stdgo.Go.toInterface((_gen : stdgo._internal.crypto.md5.Md5_t_digest.T_digest)) != stdgo.Go.toInterface((_asm : stdgo._internal.crypto.md5.Md5_t_digest.T_digest))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L153"
            _t.error(stdgo.Go.toInterface(("block and blockGeneric resulted in different states" : stdgo.GoString)));
        };
    }
