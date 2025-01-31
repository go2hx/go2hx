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
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_header_static_extension.T_header_static_extension) class T_header {
    public var version : stdgo.GoUInt8 = 0;
    public var type : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType);
    public var id : stdgo.GoUInt16 = 0;
    public var contentLength : stdgo.GoUInt16 = 0;
    public var paddingLength : stdgo.GoUInt8 = 0;
    public var reserved : stdgo.GoUInt8 = 0;
    public function new(?version:stdgo.GoUInt8, ?type:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, ?id:stdgo.GoUInt16, ?contentLength:stdgo.GoUInt16, ?paddingLength:stdgo.GoUInt8, ?reserved:stdgo.GoUInt8) {
        if (version != null) this.version = version;
        if (type != null) this.type = type;
        if (id != null) this.id = id;
        if (contentLength != null) this.contentLength = contentLength;
        if (paddingLength != null) this.paddingLength = paddingLength;
        if (reserved != null) this.reserved = reserved;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_header(version, type, id, contentLength, paddingLength, reserved);
    }
}
