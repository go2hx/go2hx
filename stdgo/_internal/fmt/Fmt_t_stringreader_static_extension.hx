package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_stringReader_asInterface) class T_stringReader_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function read( _r:stdgo.Pointer<stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = _b.__copyTo__(_r.value);
        _r.value = ((_r.value).__slice__(_n) : stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader);
        if (_n == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        return { _0 : _n, _1 : _err };
    }
}
