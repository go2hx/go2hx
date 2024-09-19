package stdgo._internal.regexp.syntax;
function _nextRune(_s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _c = (0 : stdgo.GoInt32), _t = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_s?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
        if (((_c == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        return { _0 : _c, _1 : (_s.__slice__(_size) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }
