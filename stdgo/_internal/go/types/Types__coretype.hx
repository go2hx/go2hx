package stdgo._internal.go.types;
function _coreType(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, _tpar = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L28"
        if (({
            final value = _tpar;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L29"
            return stdgo._internal.go.types.Types__under._under(_t);
        };
        var _su:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L33"
        if (_tpar._underIs(function(_u:stdgo._internal.go.types.Types_type_.Type_):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L34"
            if (_u == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L35"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L37"
            if (_su != null) {
                _u = stdgo._internal.go.types.Types__match._match(_su, _u);
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L39"
                if (_u == null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L40"
                    return false;
                };
            };
            _su = _u;
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L45"
            return true;
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L47"
            return _su;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L49"
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
