package stdgo._internal.go.types;
function _hasEmptyTypeset(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L117"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _tpar = __tmp__._0, __0 = __tmp__._1;
            if ((({
                final value = _tpar;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _tpar ?? throw "null pointer dereference")._bound != null) : Bool)) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__safeunderlying._safeUnderlying((@:checkr _tpar ?? throw "null pointer dereference")._bound)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _iface = __tmp__._0, __17 = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L119"
                return ((({
                    final value = _iface;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ({
                    final value = (@:checkr _iface ?? throw "null pointer dereference")._tset;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool) && (@:checkr _iface ?? throw "null pointer dereference")._tset.isEmpty() : Bool);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L121"
        return false;
    }
