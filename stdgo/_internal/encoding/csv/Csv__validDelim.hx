package stdgo._internal.encoding.csv;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _validDelim(_r:stdgo.GoInt32):Bool {
        return (((((_r != ((0 : stdgo.GoInt32)) && _r != ((34 : stdgo.GoInt32)) : Bool) && _r != ((13 : stdgo.GoInt32)) : Bool) && _r != ((10 : stdgo.GoInt32)) : Bool) && stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_r) : Bool) && (_r != (65533 : stdgo.GoInt32)) : Bool);
    }
