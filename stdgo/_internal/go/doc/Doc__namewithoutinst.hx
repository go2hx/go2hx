package stdgo._internal.go.doc;
function _nameWithoutInst(_name:stdgo.GoString):stdgo.GoString {
        var _start = (stdgo._internal.strings.Strings_index.index(_name?.__copy__(), ("[" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L691"
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L692"
            return _name?.__copy__();
        };
        var _end = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L695"
        if ((_end < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L697"
            return _name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L699"
        return ((_name.__slice__((0 : stdgo.GoInt), _start) : stdgo.GoString) + (_name.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
