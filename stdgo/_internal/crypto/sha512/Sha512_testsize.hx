package stdgo._internal.crypto.sha512;
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((64 : stdgo.GoInt))) {
                @:check2r _t.errorf(("Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((64 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha512.Sha512_new384.new384();
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((48 : stdgo.GoInt))) {
                @:check2r _t.errorf(("New384.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((48 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224();
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((28 : stdgo.GoInt))) {
                @:check2r _t.errorf(("New512224.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((28 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256();
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((32 : stdgo.GoInt))) {
                @:check2r _t.errorf(("New512256.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((32 : stdgo.GoInt)));
            };
        };
    }
