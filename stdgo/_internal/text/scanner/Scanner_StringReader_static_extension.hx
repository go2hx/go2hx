package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.StringReader_asInterface) class StringReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.text.scanner.Scanner_StringReader.StringReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.text.scanner.Scanner_StringReader.StringReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _r ?? throw "null pointer dereference")._step < ((@:checkr _r ?? throw "null pointer dereference")._data.length) : Bool)) {
            var _s = ((@:checkr _r ?? throw "null pointer dereference")._data[((@:checkr _r ?? throw "null pointer dereference")._step : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            _n = _p.__copyTo__(_s);
            (@:checkr _r ?? throw "null pointer dereference")._step++;
        } else {
            _err = stdgo._internal.io.Io_eOF.eOF;
        };
        return { _0 : _n, _1 : _err };
    }
}
