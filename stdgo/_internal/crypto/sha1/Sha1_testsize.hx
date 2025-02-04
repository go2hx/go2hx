package stdgo._internal.crypto.sha1;
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        {
            var _got = (_c.size() : stdgo.GoInt);
            if (_got != ((20 : stdgo.GoInt))) {
                @:check2r _t.errorf(("Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((20 : stdgo.GoInt)));
            };
        };
    }
