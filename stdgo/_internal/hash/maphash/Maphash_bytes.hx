package stdgo._internal.hash.maphash;
function bytes(_seed:stdgo._internal.hash.maphash.Maphash_seed.Seed, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        var _state = (_seed._s : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L40"
        if (_state == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L41"
            throw stdgo.Go.toInterface(("maphash: use of uninitialized Seed" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L44"
        if (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(0, (_b.length), (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L46"
            while (((_b.length) > (128 : stdgo.GoInt) : Bool)) {
                _state = stdgo._internal.hash.maphash.Maphash__rthash._rthash((_b.__slice__(0, (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _state);
                _b = (_b.__slice__((128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L51"
        return stdgo._internal.hash.maphash.Maphash__rthash._rthash(_b, _state);
    }
