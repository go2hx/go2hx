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
function _initMime():Void {
        {
            var _fn = (stdgo._internal.mime.Mime__testInitMime._testInitMime : () -> Void);
            if (_fn != null) {
                _fn();
            } else {
                stdgo._internal.mime.Mime__setMimeTypes._setMimeTypes(stdgo._internal.mime.Mime__builtinTypesLower._builtinTypesLower, stdgo._internal.mime.Mime__builtinTypesLower._builtinTypesLower);
                stdgo._internal.mime.Mime__osInitMime._osInitMime();
            };
        };
    }
