package stdgo._internal.crypto.sha1;
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L134"
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((20 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L135"
                _t.errorf(("Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((20 : stdgo.GoInt)));
            };
        };
    }
