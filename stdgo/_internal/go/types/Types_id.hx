package stdgo._internal.go.types;
function id(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L72"
        if (stdgo._internal.go.types.Types__isexported._isExported(_name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L73"
            return _name?.__copy__();
        };
        var _path = (("_" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L83"
        if ((({
            final value = _pkg;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _pkg ?? throw "null pointer dereference")._path != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _path = (@:checkr _pkg ?? throw "null pointer dereference")._path?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L86"
        return ((_path + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
    }
