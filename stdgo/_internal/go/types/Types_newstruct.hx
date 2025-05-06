package stdgo._internal.go.types;
function newStruct(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _tags:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> {
        var _fset:stdgo._internal.go.types.Types_t_objset.T_objset = (null : stdgo._internal.go.types.Types_t_objset.T_objset);
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L29"
        for (__0 => _f in _fields) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L30"
            if ((((@:checkr _f ?? throw "null pointer dereference")._object._name != ("_" : stdgo.GoString)) && (_fset._insert(stdgo.Go.asInterface(_f)) != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L31"
                throw stdgo.Go.toInterface(("multiple fields with the same name" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L34"
        if (((_tags.length) > (_fields.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L35"
            throw stdgo.Go.toInterface(("more tags than fields" : stdgo.GoString));
        };
        var _s = (stdgo.Go.setRef(({ _fields : _fields, _tags : _tags } : stdgo._internal.go.types.Types_struct.Struct)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L38"
        _s._markComplete();
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L39"
        return _s;
    }
