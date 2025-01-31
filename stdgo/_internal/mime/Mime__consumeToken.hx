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
function _consumeToken(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _token = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _notPos = (stdgo._internal.strings.Strings_indexFunc.indexFunc(_v?.__copy__(), stdgo._internal.mime.Mime__isNotTokenChar._isNotTokenChar) : stdgo.GoInt);
        if (_notPos == ((-1 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _v?.__copy__(), _1 : stdgo.Go.str()?.__copy__() };
                _token = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
        if (_notPos == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _v?.__copy__() };
                _token = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_v.__slice__((0 : stdgo.GoInt), _notPos) : stdgo.GoString)?.__copy__(), _1 : (_v.__slice__(_notPos) : stdgo.GoString)?.__copy__() };
            _token = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
