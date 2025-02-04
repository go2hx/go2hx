package stdgo._internal.database.sql;
function _validateNamedValueName(_name:stdgo.GoString):stdgo.Error {
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_name?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __19:stdgo.GoInt = __tmp__._1;
        if (stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("name %q does not begin with a letter" : stdgo.GoString), stdgo.Go.toInterface(_name));
    }
