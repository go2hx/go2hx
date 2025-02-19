package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_t_ntimes_static_extension.T_nTimes_static_extension) class T_nTimes {
    public var _s : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public var _off : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_n:stdgo.GoInt, ?_off:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_n != null) this._n = _n;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nTimes(_s, _n, _off);
    }
}
