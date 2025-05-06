package stdgo._internal.go.types;
function _derefStructPtr(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L548"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, _p = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _p;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L549"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under((@:checkr _p ?? throw "null pointer dereference")._base)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : false };
                    }, __1 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L550"
                        return (@:checkr _p ?? throw "null pointer dereference")._base;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L553"
        return _typ;
    }
