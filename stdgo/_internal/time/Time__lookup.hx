package stdgo._internal.time;
function _lookup(_tab:stdgo.Slice<stdgo.GoString>, _val:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        for (_i => _v in _tab) {
            if ((((_val.length) >= (_v.length) : Bool) && stdgo._internal.time.Time__match._match((_val.__slice__((0 : stdgo.GoInt), (_v.length)) : stdgo.GoString)?.__copy__(), _v?.__copy__()) : Bool)) {
                return { _0 : _i, _1 : (_val.__slice__((_v.length)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
            };
        };
        return { _0 : (-1 : stdgo.GoInt), _1 : _val?.__copy__(), _2 : stdgo._internal.time.Time__errbad._errBad };
    }
