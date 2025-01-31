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
function _upperCaseAndUnderscore(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return (_r - (32 : stdgo.GoInt32) : stdgo.GoInt32);
        } else if (_r == ((45 : stdgo.GoInt32))) {
            return (95 : stdgo.GoInt32);
        } else if (_r == ((61 : stdgo.GoInt32))) {
            return (95 : stdgo.GoInt32);
        };
        return _r;
    }
