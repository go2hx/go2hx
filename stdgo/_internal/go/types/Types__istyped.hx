package stdgo._internal.go.types;
function _isTyped(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
        }, _b = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L87"
        return (({
            final value = _b;
            (value == null || (value : Dynamic).__nil__);
        }) || (((@:checkr _b ?? throw "null pointer dereference")._info & (64 : stdgo._internal.go.types.Types_basicinfo.BasicInfo) : stdgo._internal.go.types.Types_basicinfo.BasicInfo) == (0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo)) : Bool);
    }
