package stdgo._internal.go.types;
function _dir(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L746"
        {
            var _i = (stdgo._internal.strings.Strings_lastindexany.lastIndexAny(_path?.__copy__(), ("/\\" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L747"
                return (_path.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L750"
        return ("." : stdgo.GoString);
    }
