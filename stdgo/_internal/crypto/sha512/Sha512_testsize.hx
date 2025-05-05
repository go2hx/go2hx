package stdgo._internal.crypto.sha512;
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L800"
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((64 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L801"
                _t.errorf(("Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((64 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha512.Sha512_new384.new384();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L804"
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((48 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L805"
                _t.errorf(("New384.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((48 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L808"
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((28 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L809"
                _t.errorf(("New512224.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((28 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L812"
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((32 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L813"
                _t.errorf(("New512256.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((32 : stdgo.GoInt)));
            };
        };
    }
