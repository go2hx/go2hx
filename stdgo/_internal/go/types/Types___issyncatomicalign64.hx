package stdgo._internal.go.types;
function __IsSyncAtomicAlign64(t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
        }, _named = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L118"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L119"
            return false;
        };
        var _obj = _named.obj();
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L122"
        return ((_obj.name() == (("align64" : stdgo.GoString)) && ({
            final value = _obj.pkg();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool) && (((_obj.pkg().path() == ("sync/atomic" : stdgo.GoString)) || (_obj.pkg().path() == ("runtime/internal/atomic" : stdgo.GoString)) : Bool)) : Bool);
    }
