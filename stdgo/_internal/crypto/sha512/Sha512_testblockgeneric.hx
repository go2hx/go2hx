package stdgo._internal.crypto.sha512;
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (false) {
            @:check2r _t.skip(stdgo.Go.toInterface(("BoringCrypto doesn\'t expose digest" : stdgo.GoString)));
        };
        var __0 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.sha512.Sha512_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>), __1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.crypto.sha512.Sha512_new_.new_()) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
var _asm = __1, _gen = __0;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2560 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.rand.Rand_read.read(_buf);
        stdgo._internal.crypto.sha512.Sha512__blockgeneric._blockGeneric(_gen, _buf);
        stdgo._internal.crypto.sha512.Sha512__block._block(_asm, _buf);
        if (stdgo.Go.toInterface((_gen : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest)) != stdgo.Go.toInterface((_asm : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest))) {
            @:check2r _t.error(stdgo.Go.toInterface(("block and blockGeneric resulted in different states" : stdgo.GoString)));
        };
    }
