package stdgo._internal.go.types;
function _isBytesOrRunes(_typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L291"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
            }, _s = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _s;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under((@:checkr _s ?? throw "null pointer dereference")._elem)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                }, _t = __tmp__._0, __1 = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L293"
                return (({
                    final value = _t;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((((@:checkr _t ?? throw "null pointer dereference")._kind == (8 : stdgo._internal.go.types.Types_basickind.BasicKind)) || ((@:checkr _t ?? throw "null pointer dereference")._kind == (5 : stdgo._internal.go.types.Types_basickind.BasicKind)) : Bool)) : Bool);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/conversions.go#L295"
        return false;
    }
