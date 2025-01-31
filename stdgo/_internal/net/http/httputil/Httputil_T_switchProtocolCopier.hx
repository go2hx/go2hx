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
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier_static_extension.T_switchProtocolCopier_static_extension) class T_switchProtocolCopier {
    public var _user : stdgo._internal.io.Io_ReadWriter.ReadWriter = (null : stdgo._internal.io.Io_ReadWriter.ReadWriter);
    public var _backend : stdgo._internal.io.Io_ReadWriter.ReadWriter = (null : stdgo._internal.io.Io_ReadWriter.ReadWriter);
    public function new(?_user:stdgo._internal.io.Io_ReadWriter.ReadWriter, ?_backend:stdgo._internal.io.Io_ReadWriter.ReadWriter) {
        if (_user != null) this._user = _user;
        if (_backend != null) this._backend = _backend;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_switchProtocolCopier(_user, _backend);
    }
}
