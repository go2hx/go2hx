package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.strconv.Strconv.NumError_asInterface) class NumError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> = _e;
        return ((((((("strconv." : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").func?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("parsing " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote((@:checkr _e ?? throw "null pointer dereference").num?.__copy__())?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
