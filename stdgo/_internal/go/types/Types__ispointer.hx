package stdgo._internal.go.types;
function _isPointer(_typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
        }, __0 = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L287"
        return _ok;
    }
