package stdgo._internal.net.http.cgi;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.http.Http;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.log.Log;
function request():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_requestFromMap.requestFromMap(stdgo._internal.net.http.cgi.Cgi__envMap._envMap(stdgo._internal.os.Os_environ_.environ_())), _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if (((@:checkr _r ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference").body = stdgo._internal.io.Io_nopCloser.nopCloser(stdgo._internal.io.Io_limitReader.limitReader(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin), (@:checkr _r ?? throw "null pointer dereference").contentLength));
        };
        return { _0 : _r, _1 : (null : stdgo.Error) };
    }
