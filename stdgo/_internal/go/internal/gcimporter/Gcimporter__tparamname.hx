package stdgo._internal.go.internal.gcimporter;
function _tparamName(_exportName:stdgo.GoString):stdgo.GoString {
        var _ix = (stdgo._internal.strings.Strings_lastindex.lastIndex(_exportName?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L809"
        if ((_ix < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L810"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("malformed type parameter export name %s: missing prefix" : stdgo.GoString), stdgo.Go.toInterface(_exportName));
        };
        var _name = ((_exportName.__slice__((_ix + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L813"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("$" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L814"
            return ("_" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L816"
        return _name?.__copy__();
    }
