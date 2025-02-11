package stdgo._internal.internal.profile;
function _addString(_strings:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _s:stdgo.GoString):stdgo.GoInt64 {
        var __tmp__ = (_strings != null && _strings.__exists__(_s?.__copy__()) ? { _0 : _strings[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _i = (_strings.length);
            _strings[_s] = _i;
        };
        return (_i : stdgo.GoInt64);
    }
