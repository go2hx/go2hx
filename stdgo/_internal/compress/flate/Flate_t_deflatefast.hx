package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_deflatefast_static_extension.T_deflateFast_static_extension) class T_deflateFast {
    public var _table : stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry> = new stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>(16384, 16384, ...[for (i in 0 ... (16384 > 16384 ? 16384 : 16384 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry)]);
    public var _prev : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cur : stdgo.GoInt32 = 0;
    public function new(?_table:stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_cur:stdgo.GoInt32) {
        if (_table != null) this._table = _table;
        if (_prev != null) this._prev = _prev;
        if (_cur != null) this._cur = _cur;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deflateFast(_table, _prev, _cur);
    }
}
