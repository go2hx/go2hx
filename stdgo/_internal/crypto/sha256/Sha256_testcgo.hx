package stdgo._internal.crypto.sha256;
function testCgo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData>);
        (@:checkr _d ?? throw "null pointer dereference").ptr = _d;
        var _h = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L324"
        _h.write(((@:checkr _d ?? throw "null pointer dereference").data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L325"
        _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
