package stdgo._internal.go.types;
function _allBasic(_t:stdgo._internal.go.types.Types_type_.Type_, _info:stdgo._internal.go.types.Types_basicinfo.BasicInfo):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L52"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _tpar = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _tpar;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L53"
                return _tpar._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L53"
                    return (({
                        final value = _t;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && stdgo._internal.go.types.Types__isbasic._isBasic((@:checkr _t ?? throw "null pointer dereference")._typ, _info) : Bool);
                });
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L55"
        return stdgo._internal.go.types.Types__isbasic._isBasic(_t, _info);
    }
