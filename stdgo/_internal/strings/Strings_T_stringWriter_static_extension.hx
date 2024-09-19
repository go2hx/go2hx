package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_stringWriter_asInterface) class T_stringWriter_static_extension {
    @:keep
    static public function writeString( _w:stdgo._internal.strings.Strings_T_stringWriter.T_stringWriter, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.strings.Strings_T_stringWriter.T_stringWriter = _w?.__copy__();
        return _w._w.write((_s : stdgo.Slice<stdgo.GoUInt8>));
    }
}
