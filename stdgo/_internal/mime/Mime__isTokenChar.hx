package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _isTokenChar(_r:stdgo.GoInt32):Bool {
        return (((_r > (32 : stdgo.GoInt32) : Bool) && (_r < (127 : stdgo.GoInt32) : Bool) : Bool) && !stdgo._internal.mime.Mime__isTSpecial._isTSpecial(_r) : Bool);
    }
