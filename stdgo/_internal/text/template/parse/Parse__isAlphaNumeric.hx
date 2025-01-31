package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _isAlphaNumeric(_r:stdgo.GoInt32):Bool {
        return ((_r == ((95 : stdgo.GoInt32)) || stdgo._internal.unicode.Unicode_isLetter.isLetter(_r) : Bool) || stdgo._internal.unicode.Unicode_isDigit.isDigit(_r) : Bool);
    }
