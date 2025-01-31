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
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest_static_extension.T_beginRequest_static_extension) class T_beginRequest {
    public var _role : stdgo.GoUInt16 = 0;
    public var _flags : stdgo.GoUInt8 = 0;
    public var _reserved : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(5, 5).__setNumber32__();
    public function new(?_role:stdgo.GoUInt16, ?_flags:stdgo.GoUInt8, ?_reserved:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_role != null) this._role = _role;
        if (_flags != null) this._flags = _flags;
        if (_reserved != null) this._reserved = _reserved;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_beginRequest(_role, _flags, _reserved);
    }
}
