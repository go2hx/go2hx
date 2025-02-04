package stdgo._internal.debug.pe;
@:keep @:allow(stdgo._internal.debug.pe.Pe.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.pe.Pe_formaterror.FormatError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.pe.Pe_formaterror.FormatError> = _e;
        return ("unknown error" : stdgo.GoString);
    }
}
