package stdgo._internal.net.http.fcgi;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.net.http.Http;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.http.cgi.Cgi;
import stdgo._internal.context.Context;
function _addFastCGIEnvToContext(_s:stdgo.GoString):Bool {
        {
            final __value__ = _s;
            if (__value__ == (("CONTENT_LENGTH" : stdgo.GoString)) || __value__ == (("CONTENT_TYPE" : stdgo.GoString)) || __value__ == (("HTTPS" : stdgo.GoString)) || __value__ == (("PATH_INFO" : stdgo.GoString)) || __value__ == (("QUERY_STRING" : stdgo.GoString)) || __value__ == (("REMOTE_ADDR" : stdgo.GoString)) || __value__ == (("REMOTE_HOST" : stdgo.GoString)) || __value__ == (("REMOTE_PORT" : stdgo.GoString)) || __value__ == (("REQUEST_METHOD" : stdgo.GoString)) || __value__ == (("REQUEST_URI" : stdgo.GoString)) || __value__ == (("SCRIPT_NAME" : stdgo.GoString)) || __value__ == (("SERVER_PROTOCOL" : stdgo.GoString))) {
                return false;
            };
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), ("HTTP_" : stdgo.GoString))) {
            return false;
        };
        {
            final __value__ = _s;
            if (__value__ == (("REMOTE_USER" : stdgo.GoString))) {
                return true;
            };
        };
        return true;
    }
