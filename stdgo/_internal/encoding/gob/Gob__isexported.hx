package stdgo._internal.encoding.gob;
function _isExported(_name:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_name?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1;
        return stdgo._internal.unicode.Unicode_isupper.isUpper(_rune);
    }
