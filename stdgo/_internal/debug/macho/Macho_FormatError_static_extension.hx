package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
@:keep @:allow(stdgo._internal.debug.macho.Macho.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.macho.Macho_FormatError.FormatError> = _e;
        var _msg = ((@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__() : stdgo.GoString);
        if ((@:checkr _e ?? throw "null pointer dereference")._val != null) {
            _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" \'%v\'" : stdgo.GoString), (@:checkr _e ?? throw "null pointer dereference")._val))?.__copy__() : stdgo.GoString);
        };
        _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" in record at byte %#x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference")._off)))?.__copy__() : stdgo.GoString);
        return _msg?.__copy__();
    }
}
