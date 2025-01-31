package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension) class T_deflateFast {
    public var _table : stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry> = new stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>(16384, 16384, ...[for (i in 0 ... (16384 > 16384 ? 16384 : 16384 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry)]);
    public var _prev : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cur : stdgo.GoInt32 = 0;
    public function new(?_table:stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_cur:stdgo.GoInt32) {
        if (_table != null) this._table = _table;
        if (_prev != null) this._prev = _prev;
        if (_cur != null) this._cur = _cur;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deflateFast(_table, _prev, _cur);
    }
}
