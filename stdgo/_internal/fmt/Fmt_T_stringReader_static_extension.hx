package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_stringReader_asInterface) class T_stringReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader,  _r:stdgo.Pointer<stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = stdgo.Go.copySlice(_b, _r.value);
        _r.value = ((_r.value).__slice__(_n) : stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader);
        if (_n == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io_eof.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}