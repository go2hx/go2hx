package stdgo._internal.go.types;
function _pathString(_path:stdgo.Slice<stdgo._internal.go.types.Types_object.Object>):stdgo.GoString {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L45"
        for (_i => _p in _path) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L46"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + (("->" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (_p.name())?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L51"
        return _s?.__copy__();
    }
