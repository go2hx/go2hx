package stdgo._internal.go.doc;
function _isExampleSuffix(_s:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L721"
        return ((_size > (0 : stdgo.GoInt) : Bool) && stdgo._internal.unicode.Unicode_islower.isLower(_r) : Bool);
    }
