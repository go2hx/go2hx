package stdgo._internal.text.scanner;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errnoprogress.errNoProgress };
    }
}
