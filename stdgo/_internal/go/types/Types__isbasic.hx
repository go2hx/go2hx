package stdgo._internal.go.types;
function _isBasic(_t:stdgo._internal.go.types.Types_type_.Type_, _info:stdgo._internal.go.types.Types_basicinfo.BasicInfo):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_t)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
        }, _u = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L30"
        return (({
            final value = _u;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (((@:checkr _u ?? throw "null pointer dereference")._info & _info : stdgo._internal.go.types.Types_basicinfo.BasicInfo) != (0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo)) : Bool);
    }
