package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError = _e;
        return (("flate: corrupt input before offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
