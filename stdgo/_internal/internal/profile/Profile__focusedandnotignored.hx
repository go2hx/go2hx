package stdgo._internal.internal.profile;
function _focusedAndNotIgnored(_locs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>, _m:stdgo.GoMap<stdgo.GoUInt64, Bool>):Bool {
        var _f:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L98"
        for (__0 => _loc in _locs) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L99"
            {
                var __tmp__ = (_m != null && _m.__exists__((@:checkr _loc ?? throw "null pointer dereference").iD) ? { _0 : _m[(@:checkr _loc ?? throw "null pointer dereference").iD], _1 : true } : { _0 : false, _1 : false }), _focus:Bool = __tmp__._0, _focusOrIgnore:Bool = __tmp__._1;
                if (_focusOrIgnore) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L100"
                    if (_focus) {
                        _f = true;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L106"
                        return false;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L110"
        return _f;
    }
