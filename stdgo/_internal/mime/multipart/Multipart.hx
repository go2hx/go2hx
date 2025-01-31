package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge, __tmp__1 = stdgo._internal.mime.multipart.Multipart__multipartFiles._multipartFiles, __tmp__2 = stdgo._internal.mime.multipart.Multipart__multipartMaxParts._multipartMaxParts, __tmp__3 = stdgo._internal.mime.multipart.Multipart__emptyParams._emptyParams, __tmp__4 = stdgo._internal.mime.multipart.Multipart__multipartMaxHeaders._multipartMaxHeaders, __tmp__5 = stdgo._internal.mime.multipart.Multipart__quoteEscaper._quoteEscaper;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
