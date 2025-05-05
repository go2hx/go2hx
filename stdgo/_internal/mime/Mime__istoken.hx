package stdgo._internal.mime;
function _isToken(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/grammar.go#L28"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/grammar.go#L29"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/grammar.go#L31"
        return (stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), stdgo._internal.mime.Mime__isnottokenchar._isNotTokenChar) < (0 : stdgo.GoInt) : Bool);
    }
