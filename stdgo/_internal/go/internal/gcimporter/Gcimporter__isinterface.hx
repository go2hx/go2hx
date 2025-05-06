package stdgo._internal.go.internal.gcimporter;
function _isInterface(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
        }, __0 = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L602"
        return _ok;
    }
