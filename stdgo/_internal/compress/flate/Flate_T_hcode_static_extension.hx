package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_hcode_asInterface) class T_hcode_static_extension {
    @:keep
    @:tdfield
    static public function _set( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>, _code:stdgo.GoUInt16, _length:stdgo.GoUInt16):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode> = _h;
        (@:checkr _h ?? throw "null pointer dereference")._len = _length;
        (@:checkr _h ?? throw "null pointer dereference")._code = _code;
    }
}
