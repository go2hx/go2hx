package stdgo._internal.runtime.pprof;
@:structInit class LabelSet {
    public var _list : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label> = (null : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>);
    public function new(?_list:stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>) {
        if (_list != null) this._list = _list;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LabelSet(_list);
    }
}
