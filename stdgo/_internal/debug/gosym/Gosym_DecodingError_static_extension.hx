package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.DecodingError_asInterface) class DecodingError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError> = _e;
        var _msg = ((@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__() : stdgo.GoString);
        if ((@:checkr _e ?? throw "null pointer dereference")._val != null) {
            _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" \'%v\'" : stdgo.GoString), (@:checkr _e ?? throw "null pointer dereference")._val))?.__copy__() : stdgo.GoString);
        };
        _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" at byte %#x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference")._off)))?.__copy__() : stdgo.GoString);
        return _msg?.__copy__();
    }
}
