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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.mime.Mime__errInvalidWord._errInvalidWord, __tmp__1 = stdgo._internal.mime.Mime__maxBase64Len._maxBase64Len, __tmp__2 = stdgo._internal.mime.Mime_errInvalidMediaParameter.errInvalidMediaParameter, __tmp__3 = stdgo._internal.mime.Mime__builtinTypesLower._builtinTypesLower, __tmp__4 = stdgo._internal.mime.Mime__mimeGlobs._mimeGlobs, __tmp__5 = stdgo._internal.mime.Mime__typeFiles._typeFiles;
            stdgo._internal.mime.Mime__osInitMime._osInitMime = stdgo._internal.mime.Mime__initMimeUnix._initMimeUnix;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
