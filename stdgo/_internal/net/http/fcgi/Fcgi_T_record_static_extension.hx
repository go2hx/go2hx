package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_record_asInterface) class T_record_static_extension {
    @:keep
    static public function _content( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record> = _r;
        return (_r._buf.__slice__(0, _r._h.contentLength) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _read( _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        @:recv var _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record> = _rec;
        var _err = (null : stdgo.Error);
        {
            _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rec._h) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header>))));
            if (_err != null) {
                return _err;
            };
        };
        if (_rec._h.version != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.errors.Errors_new_.new_(("fcgi: invalid header version" : stdgo.GoString));
        };
        var _n = ((_rec._h.contentLength : stdgo.GoInt) + (_rec._h.paddingLength : stdgo.GoInt) : stdgo.GoInt);
        {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_rec._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
}
