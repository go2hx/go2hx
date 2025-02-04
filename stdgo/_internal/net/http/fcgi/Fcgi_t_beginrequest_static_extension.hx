package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_beginRequest_asInterface) class T_beginRequest_static_extension {
    @:keep
    @:tdfield
    static public function _read( _br:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest>, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest> = _br;
        if ((_content.length) != ((8 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("fcgi: invalid begin request record" : stdgo.GoString));
        };
        (@:checkr _br ?? throw "null pointer dereference")._role = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16(_content);
        (@:checkr _br ?? throw "null pointer dereference")._flags = _content[(2 : stdgo.GoInt)];
        return (null : stdgo.Error);
    }
}
