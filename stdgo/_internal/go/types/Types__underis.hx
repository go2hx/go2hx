package stdgo._internal.go.types;
function _underIs(_typ:stdgo._internal.go.types.Types_type_.Type_, _f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L119"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _tpar = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _tpar;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L120"
                return _tpar._underIs(_f);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L122"
        return _f(stdgo._internal.go.types.Types__under._under(_typ));
    }
