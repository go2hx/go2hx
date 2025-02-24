package stdgo._internal.crypto.sha256;
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((32 : stdgo.GoInt))) {
                @:check2r _t.errorf(("Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((32 : stdgo.GoInt)));
            };
        };
        _c = stdgo._internal.crypto.sha256.Sha256_new224.new224();
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((28 : stdgo.GoInt))) {
                @:check2r _t.errorf(("New224.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((28 : stdgo.GoInt)));
            };
        };
    }
