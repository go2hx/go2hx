package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.ReadError_asInterface) class ReadError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_ReadError.ReadError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_ReadError.ReadError> = _e;
        return (((("flate: read error at offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(_e.offset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
