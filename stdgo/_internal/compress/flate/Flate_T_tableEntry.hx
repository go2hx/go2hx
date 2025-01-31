package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_T_tableEntry_static_extension.T_tableEntry_static_extension) class T_tableEntry {
    public var _val : stdgo.GoUInt32 = 0;
    public var _offset : stdgo.GoInt32 = 0;
    public function new(?_val:stdgo.GoUInt32, ?_offset:stdgo.GoInt32) {
        if (_val != null) this._val = _val;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tableEntry(_val, _offset);
    }
}
