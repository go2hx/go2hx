package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.DecodeError_asInterface) class DecodeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError):stdgo.GoString {
        @:recv var _e:stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError = _e?.__copy__();
        return (((((("decoding dwarf section " : stdgo.GoString) + _e.name?.__copy__() : stdgo.GoString) + (" at offset 0x" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_e.offset : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
