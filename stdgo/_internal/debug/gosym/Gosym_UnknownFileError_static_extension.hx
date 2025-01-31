package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.UnknownFileError_asInterface) class UnknownFileError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError):stdgo.GoString {
        @:recv var _e:stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError = _e;
        return (("unknown file: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
