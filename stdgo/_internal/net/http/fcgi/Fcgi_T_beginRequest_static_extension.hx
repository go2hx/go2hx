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
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_beginRequest_asInterface) class T_beginRequest_static_extension {
    @:keep
    @:tdfield
    static public function _read( _br:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest>, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest> = _br;
        if ((_content.length) != ((8 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("fcgi: invalid begin request record" : stdgo.GoString));
        };
        (@:checkr _br ?? throw "null pointer dereference")._role = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint16(_content);
        (@:checkr _br ?? throw "null pointer dereference")._flags = _content[(2 : stdgo.GoInt)];
        return (null : stdgo.Error);
    }
}
