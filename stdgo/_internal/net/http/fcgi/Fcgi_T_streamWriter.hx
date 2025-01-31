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
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter_static_extension.T_streamWriter_static_extension) class T_streamWriter {
    public var _c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
    public var _recType : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType);
    public var _reqId : stdgo.GoUInt16 = 0;
    public function new(?_c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>, ?_recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, ?_reqId:stdgo.GoUInt16) {
        if (_c != null) this._c = _c;
        if (_recType != null) this._recType = _recType;
        if (_reqId != null) this._reqId = _reqId;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_streamWriter(_c, _recType, _reqId);
    }
}
