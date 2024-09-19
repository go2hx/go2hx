package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError> = _e;
        if (_e.message == (stdgo.Go.str())) {
            return (((((((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_e.value?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_e.layout?.__copy__())?.__copy__() : stdgo.GoString) + (": cannot parse " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_e.valueElem?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_e.layoutElem?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_e.value?.__copy__())?.__copy__() : stdgo.GoString) + _e.message?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
