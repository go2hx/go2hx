package stdgo._internal.text.scanner;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.StringReader_asInterface) class StringReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.text.scanner.Scanner_StringReader.StringReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.text.scanner.Scanner_StringReader.StringReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._step < (_r._data.length) : Bool)) {
            var _s = (_r._data[(_r._step : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            _n = _p.__copyTo__(_s);
            _r._step++;
        } else {
            _err = stdgo._internal.io.Io_eof.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
