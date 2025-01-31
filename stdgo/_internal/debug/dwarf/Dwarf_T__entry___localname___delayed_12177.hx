package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:structInit class T__entry___localname___delayed_12177 {
    public var _idx : stdgo.GoInt = 0;
    public var _off : stdgo.GoUInt64 = 0;
    public var _fmt : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format);
    public function new(?_idx:stdgo.GoInt, ?_off:stdgo.GoUInt64, ?_fmt:stdgo._internal.debug.dwarf.Dwarf_T_format.T_format) {
        if (_idx != null) this._idx = _idx;
        if (_off != null) this._off = _off;
        if (_fmt != null) this._fmt = _fmt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__entry___localname___delayed_12177(_idx, _off, _fmt);
    }
}
