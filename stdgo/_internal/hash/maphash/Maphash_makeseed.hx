package stdgo._internal.hash.maphash;
function makeSeed():stdgo._internal.hash.maphash.Maphash_seed.Seed {
        var _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L246"
        while (true) {
            _s = stdgo._internal.hash.maphash.Maphash__randuint64._randUint64();
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L250"
            if (_s != ((0i64 : stdgo.GoUInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L251"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L254"
        return ({ _s : _s } : stdgo._internal.hash.maphash.Maphash_seed.Seed);
    }
