package stdgo._internal.go.internal.gccgoimporter;
function _deref(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L232"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, _p = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _p;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _typ = _p.elem();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L235"
        return _typ;
    }
