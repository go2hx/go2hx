package stdgo._internal.go.build;
function _nameExt(_name:stdgo.GoString):stdgo.GoString {
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L530"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L531"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L533"
        return (_name.__slice__(_i) : stdgo.GoString)?.__copy__();
    }
