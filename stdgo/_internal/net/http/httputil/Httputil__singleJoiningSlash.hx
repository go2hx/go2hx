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
function _singleJoiningSlash(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        var _aslash = (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_a?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        var _bslash = (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_b?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        if ((_aslash && _bslash : Bool)) {
            return (_a + (_b.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        } else if ((!_aslash && !_bslash : Bool)) {
            return ((_a + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _b?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (_a + _b?.__copy__() : stdgo.GoString)?.__copy__();
    }
