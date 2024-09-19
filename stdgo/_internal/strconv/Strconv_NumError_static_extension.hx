package stdgo._internal.strconv;
@:keep @:allow(stdgo._internal.strconv.Strconv.NumError_asInterface) class NumError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> = _e;
        return ((((((("strconv." : stdgo.GoString) + _e.func?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("parsing " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_e.num?.__copy__())?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
