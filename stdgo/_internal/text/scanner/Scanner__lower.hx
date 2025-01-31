package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function _lower(_ch:stdgo.GoInt32):stdgo.GoInt32 {
        return ((32 : stdgo.GoInt32) | _ch : stdgo.GoInt32);
    }
