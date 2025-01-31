package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function tokenString(_tok:stdgo.GoInt32):stdgo.GoString {
        {
            var __tmp__ = (stdgo._internal.text.scanner.Scanner__tokenString._tokenString != null && stdgo._internal.text.scanner.Scanner__tokenString._tokenString.exists(_tok) ? { _0 : stdgo._internal.text.scanner.Scanner__tokenString._tokenString[_tok], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return _s?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_tok : stdgo.GoString)))?.__copy__();
    }
