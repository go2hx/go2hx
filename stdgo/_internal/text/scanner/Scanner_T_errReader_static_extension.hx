package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errNoProgress.errNoProgress };
    }
}
