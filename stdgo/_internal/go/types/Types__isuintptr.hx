package stdgo._internal.go.types;
function _isUintptr(_typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
        }, _t = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L277"
        return (({
            final value = _t;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _t ?? throw "null pointer dereference")._kind == (12 : stdgo._internal.go.types.Types_basickind.BasicKind)) : Bool);
    }
