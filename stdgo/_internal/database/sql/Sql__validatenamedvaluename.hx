package stdgo._internal.database.sql;
function _validateNamedValueName(_name:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L31"
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L32"
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_name?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __19:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L35"
        if (stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L36"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L38"
        return stdgo._internal.fmt.Fmt_errorf.errorf(("name %q does not begin with a letter" : stdgo.GoString), stdgo.Go.toInterface(_name));
    }
