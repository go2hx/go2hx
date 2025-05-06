package stdgo._internal.go.types;
function _comparable(t:stdgo._internal.go.types.Types_type_.Type_, _dynamic:Bool, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>, _reportf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L141"
        if ((_seen[t] ?? false)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L142"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L144"
        if (_seen == null) {
            _seen = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>);
        };
        _seen[t] = true;
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L149"
        {
            final __type__ = stdgo._internal.go.types.Types__under._under(t);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L153"
                return (@:checkr _t ?? throw "null pointer dereference")._kind != ((25 : stdgo._internal.go.types.Types_basickind.BasicKind));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L155"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L157"
                for (__0 => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L158"
                    if (!stdgo._internal.go.types.Types__comparable._comparable((@:checkr _f ?? throw "null pointer dereference")._object._typ, _dynamic, _seen, null)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L159"
                        if (_reportf != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L160"
                            _reportf(("struct containing %s cannot be compared" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._object._typ));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L162"
                        return false;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L165"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L167"
                if (!stdgo._internal.go.types.Types__comparable._comparable((@:checkr _t ?? throw "null pointer dereference")._elem, _dynamic, _seen, null)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L168"
                    if (_reportf != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L169"
                        _reportf(("%s cannot be compared" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L171"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L173"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L175"
                if (((_dynamic && !stdgo._internal.go.types.Types__istypeparam._isTypeParam(t) : Bool) || _t._typeSet().isComparable(_seen) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L176"
                    return true;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L178"
                if (_reportf != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L179"
                    if (_t._typeSet().isEmpty()) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L180"
                        _reportf(("empty type set" : stdgo.GoString));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L182"
                        _reportf(("incomparable types in type set" : stdgo.GoString));
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L187"
        return false;
    }
