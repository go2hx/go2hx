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
function _checkMediaTypeDisposition(_s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.mime.Mime__consumeToken._consumeToken(_s?.__copy__()), _typ:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
        if (_typ == (stdgo.Go.str())) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: no media type" : stdgo.GoString));
        };
        if (_rest == (stdgo.Go.str())) {
            return (null : stdgo.Error);
        };
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: expected slash after first token" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.mime.Mime__consumeToken._consumeToken((_rest.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _subtype:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
        if (_subtype == (stdgo.Go.str())) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: expected token after slash" : stdgo.GoString));
        };
        if (_rest != (stdgo.Go.str())) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: unexpected content after media subtype" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
