package stdgo._internal.internal.bisect;
@:structInit @:using(stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension) class Matcher {
    public var _verbose : Bool = false;
    public var _quiet : Bool = false;
    public var _enable : Bool = false;
    public var _list : stdgo.Slice<stdgo._internal.internal.bisect.Bisect_t_cond.T_cond> = (null : stdgo.Slice<stdgo._internal.internal.bisect.Bisect_t_cond.T_cond>);
    public var _dedup : stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup = ({} : stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup);
    public function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:stdgo.Slice<stdgo._internal.internal.bisect.Bisect_t_cond.T_cond>, ?_dedup:stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup) {
        if (_verbose != null) this._verbose = _verbose;
        if (_quiet != null) this._quiet = _quiet;
        if (_enable != null) this._enable = _enable;
        if (_list != null) this._list = _list;
        if (_dedup != null) this._dedup = _dedup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Matcher(_verbose, _quiet, _enable, _list, _dedup);
    }
}
