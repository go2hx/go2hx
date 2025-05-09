package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_record_asInterface) class T_record_static_extension {
    @:keep
    @:tdfield
    static public function _content( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L147"
        return ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._h.contentLength) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _read( _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        @:recv var _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record> = _rec;
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L133"
        {
            _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _rec ?? throw "null pointer dereference")._h) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header>))));
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L134"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L136"
        if ((@:checkr _rec ?? throw "null pointer dereference")._h.version != ((1 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L137"
            return _err = stdgo._internal.errors.Errors_new_.new_(("fcgi: invalid header version" : stdgo.GoString));
        };
        var _n = (((@:checkr _rec ?? throw "null pointer dereference")._h.contentLength : stdgo.GoInt) + ((@:checkr _rec ?? throw "null pointer dereference")._h.paddingLength : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L140"
        {
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, ((@:checkr _rec ?? throw "null pointer dereference")._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L141"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L143"
        return _err = (null : stdgo.Error);
    }
}
