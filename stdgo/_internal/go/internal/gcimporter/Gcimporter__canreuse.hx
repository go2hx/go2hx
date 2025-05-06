package stdgo._internal.go.internal.gcimporter;
function _canReuse(_def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _rhs:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L306"
        if (({
            final value = _def;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L307"
            return true;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rhs) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
        }, _iface = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L310"
        if (({
            final value = _iface;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L311"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L314"
        return ((_iface.numEmbeddeds() == (0 : stdgo.GoInt)) && (_iface.numExplicitMethods() == (0 : stdgo.GoInt)) : Bool);
    }
