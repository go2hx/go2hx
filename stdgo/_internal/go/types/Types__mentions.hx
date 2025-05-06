package stdgo._internal.go.types;
function _mentions(t:stdgo._internal.go.types.Types_type_.Type_, _typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L340"
        {
            final __type__ = t;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L342"
                for (__8 => _e in (@:checkr t ?? throw "null pointer dereference")._embeddeds) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L343"
                    if (stdgo._internal.go.types.Types__mentions._mentions(_e, _typ)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L344"
                        return true;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                var t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L348"
                for (__0 => _t in (@:checkr t ?? throw "null pointer dereference")._terms) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L349"
                    if (stdgo._internal.go.types.Types__mentions._mentions((@:checkr _t ?? throw "null pointer dereference")._typ, _typ)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L350"
                        return true;
                    };
                };
            } else {
                var t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L354"
                if (stdgo._internal.go.types.Types_identical.identical(t, _typ)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L355"
                    return true;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/instantiate.go#L358"
        return false;
    }
