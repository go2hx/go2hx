package stdgo._internal.crypto.sha512;
function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L819"
        {
            var _got = (_c.blockSize() : stdgo.GoInt);
            if (_got != ((128 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L820"
                _t.errorf(("BlockSize = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((128 : stdgo.GoInt)));
            };
        };
    }
