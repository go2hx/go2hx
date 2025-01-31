package stdgo._internal.encoding.ascii85;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.encoding.ascii85.Ascii85.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.ascii85.Ascii85_CorruptInputError.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.ascii85.Ascii85_CorruptInputError.CorruptInputError = _e;
        return (("illegal ascii85 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
