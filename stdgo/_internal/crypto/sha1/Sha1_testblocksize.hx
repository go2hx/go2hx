package stdgo._internal.crypto.sha1;
function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L141"
        {
            var _got = (_c.blockSize() : stdgo.GoInt);
            if (_got != ((64 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L142"
                _t.errorf(("BlockSize = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((64 : stdgo.GoInt)));
            };
        };
    }
