package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.net.http.httputil.Httputil__reqWriteExcludeHeaderDump._reqWriteExcludeHeaderDump, __tmp__1 = stdgo._internal.net.http.httputil.Httputil__errNoBody._errNoBody, __tmp__2 = stdgo._internal.net.http.httputil.Httputil__emptyBody._emptyBody, __tmp__3 = stdgo._internal.net.http.httputil.Httputil_errLineTooLong.errLineTooLong, __tmp__4 = stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF, __tmp__5 = stdgo._internal.net.http.httputil.Httputil_errClosed.errClosed, __tmp__6 = stdgo._internal.net.http.httputil.Httputil_errPipeline.errPipeline, __tmp__7 = stdgo._internal.net.http.httputil.Httputil__errClosed._errClosed, __tmp__8 = stdgo._internal.net.http.httputil.Httputil__hopHeaders._hopHeaders;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
