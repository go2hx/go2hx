package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.DecodeError_asInterface) class DecodeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError):stdgo.GoString {
        @:recv var _e:stdgo._internal.debug.dwarf.Dwarf_decodeerror.DecodeError = _e?.__copy__();
        return (((((("decoding dwarf section " : stdgo.GoString) + _e.name?.__copy__() : stdgo.GoString) + (" at offset 0x" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_e.offset : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
