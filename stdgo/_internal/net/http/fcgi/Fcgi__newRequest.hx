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
function _newRequest(_reqId:stdgo.GoUInt16, _flags:stdgo.GoUInt8):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request> {
        var _r = (stdgo.Go.setRef(({ _reqId : _reqId, _params : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _keepConn : (_flags & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) } : stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>);
        (@:checkr _r ?? throw "null pointer dereference")._rawParams = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _r;
    }
