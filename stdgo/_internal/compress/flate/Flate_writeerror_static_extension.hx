package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.WriteError_asInterface) class WriteError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_writeerror.WriteError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_writeerror.WriteError> = _e;
        return (((("flate: write error at offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _e ?? throw "null pointer dereference").offset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
