package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T_countReader_asInterface) class T_countReader_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function read( _r:stdgo.Pointer<stdgo._internal.text.scanner.Scanner_T_countReader.T_countReader>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        _r.value++;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eOF.eOF };
    }
}
