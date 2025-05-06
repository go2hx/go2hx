package stdgo._internal.go.types;
function _lookupType(_m:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>, _typ:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L268"
        {
            var __tmp__ = (_m != null && _m.__exists__(_typ) ? { _0 : _m[_typ], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L269"
                return { _0 : _i, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L272"
        for (_t => _i in _m) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L273"
            if (stdgo._internal.go.types.Types_identical.identical(_t, _typ)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L274"
                return { _0 : _i, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L278"
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
