package stdgo._internal.text.scanner;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T_countReader_asInterface) class T_countReader_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function read( _r:stdgo.Pointer<stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        _r.value++;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
    }
}
