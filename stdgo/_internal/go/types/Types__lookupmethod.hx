package stdgo._internal.go.types;
function _lookupMethod(_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } {
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L579"
        if (_name != (("_" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L580"
            for (_i => _m in _methods) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L581"
                if ((((((@:checkr _m ?? throw "null pointer dereference")._object._name == _name) || (_foldCase && stdgo._internal.strings.Strings_equalfold.equalFold((@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__(), _name?.__copy__()) : Bool) : Bool)) && _m._sameId(_pkg, (@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L582"
                    return { _0 : _i, _1 : _m };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L586"
        return { _0 : (-1 : stdgo.GoInt), _1 : null };
    }
