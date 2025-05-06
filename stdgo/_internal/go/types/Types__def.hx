package stdgo._internal.go.types;
function _def(_obj:stdgo._internal.go.types.Types_object.Object):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L264"
        stdgo._internal.go.types.Types__assert._assert(_obj._color() == ((1u32 : stdgo._internal.go.types.Types_t_color.T_color)));
        var _name = (_obj.name()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L266"
        if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), (" " : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L267"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L270"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, _typ = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _typ;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _typ ?? throw "null pointer dereference")._obj = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
            };
        };
        var _scope = stdgo._internal.go.types.Types_universe.universe;
        //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L275"
        if (_obj.exported()) {
            _scope = (@:checkr stdgo._internal.go.types.Types_unsafe.unsafe ?? throw "null pointer dereference")._scope;
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L278"
            {
                final __type__ = _obj;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>))) {
                    var _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__().value);
                    (@:checkr _obj ?? throw "null pointer dereference")._object._pkg = stdgo._internal.go.types.Types_unsafe.unsafe;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>))) {
                    var _obj:stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__().value);
                    (@:checkr _obj ?? throw "null pointer dereference")._object._pkg = stdgo._internal.go.types.Types_unsafe.unsafe;
                } else {
                    var _obj:stdgo._internal.go.types.Types_object.Object = __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L284"
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L287"
        if (_scope.insert(_obj) != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L288"
            throw stdgo.Go.toInterface(("double declaration of predeclared identifier" : stdgo.GoString));
        };
    }
