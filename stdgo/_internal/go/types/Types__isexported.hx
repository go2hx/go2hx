package stdgo._internal.go.types;
function _isExported(_name:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_name?.__copy__()), _ch:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L66"
        return stdgo._internal.unicode.Unicode_isupper.isUpper(_ch);
    }
