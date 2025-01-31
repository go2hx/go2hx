package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo._internal.compress.bzip2.Bzip2_StructuralError.StructuralError):stdgo.GoString {
        @:recv var _s:stdgo._internal.compress.bzip2.Bzip2_StructuralError.StructuralError = _s;
        return (("bzip2 data invalid: " : stdgo.GoString) + (_s : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
