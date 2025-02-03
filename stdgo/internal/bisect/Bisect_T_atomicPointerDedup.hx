package stdgo.internal.bisect;
@:structInit @:using(stdgo.internal.bisect.Bisect.T_atomicPointerDedup_static_extension) abstract T_atomicPointerDedup(stdgo._internal.internal.bisect.Bisect_T_atomicPointerDedup.T_atomicPointerDedup) from stdgo._internal.internal.bisect.Bisect_T_atomicPointerDedup.T_atomicPointerDedup to stdgo._internal.internal.bisect.Bisect_T_atomicPointerDedup.T_atomicPointerDedup {
    public var _p(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__p():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._p;
    function set__p(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.internal.bisect.Bisect_T_atomicPointerDedup.T_atomicPointerDedup(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
