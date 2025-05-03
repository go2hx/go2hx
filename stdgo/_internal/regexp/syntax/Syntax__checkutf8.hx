package stdgo._internal.regexp.syntax;
function _checkUTF8(_s:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2082"
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2084"
            if (((_rune == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2085"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
            };
            _s = (_s.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2089"
        return (null : stdgo.Error);
    }
