package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_t_data_static_extension.T_data_static_extension) class T_data {
    public var _n : stdgo.GoInt = 0;
    public var _swap : (stdgo.GoInt, stdgo.GoInt) -> Void = null;
    public var _less : (stdgo.GoInt, stdgo.GoInt) -> Bool = null;
    public function new(?_n:stdgo.GoInt, ?_swap:(stdgo.GoInt, stdgo.GoInt) -> Void, ?_less:(stdgo.GoInt, stdgo.GoInt) -> Bool) {
        if (_n != null) this._n = _n;
        if (_swap != null) this._swap = _swap;
        if (_less != null) this._less = _less;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_data(_n, _swap, _less);
    }
}
