package stdgo._internal.time;
function _lookup(_tab:stdgo.Slice<stdgo.GoString>, _val:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L388"
        for (_i => _v in _tab) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L389"
            if ((((_val.length) >= (_v.length) : Bool) && stdgo._internal.time.Time__match._match((_val.__slice__((0 : stdgo.GoInt), (_v.length)) : stdgo.GoString)?.__copy__(), _v?.__copy__()) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L390"
                return { _0 : _i, _1 : (_val.__slice__((_v.length)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L393"
        return { _0 : (-1 : stdgo.GoInt), _1 : _val?.__copy__(), _2 : stdgo._internal.time.Time__errbad._errBad };
    }
