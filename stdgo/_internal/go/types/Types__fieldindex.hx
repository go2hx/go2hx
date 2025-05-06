package stdgo._internal.go.types;
function _fieldIndex(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L566"
        if (_name != (("_" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L567"
            for (_i => _f in _fields) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L568"
                if (_f._sameId(_pkg, _name?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L569"
                    return _i;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L573"
        return (-1 : stdgo.GoInt);
    }
