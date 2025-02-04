package stdgo._internal.hash.maphash;
function makeSeed():stdgo._internal.hash.maphash.Maphash_seed.Seed {
        var _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        while (true) {
            _s = stdgo._internal.hash.maphash.Maphash__randuint64._randUint64();
            if (_s != ((0i64 : stdgo.GoUInt64))) {
                break;
            };
        };
        return ({ _s : _s } : stdgo._internal.hash.maphash.Maphash_seed.Seed);
    }
