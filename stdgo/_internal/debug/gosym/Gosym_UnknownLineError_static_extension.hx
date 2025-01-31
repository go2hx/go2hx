package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.UnknownLineError_asInterface) class UnknownLineError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError> = _e;
        return (((("no code at " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").file?.__copy__() : stdgo.GoString) + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _e ?? throw "null pointer dereference").line)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
