package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uintptr_static_extension) abstract Uintptr(stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr) from stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr to stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr {
    public var __18(get, set) : T_noCopy;
    function get___18():T_noCopy return this.__18;
    function set___18(v:T_noCopy):T_noCopy {
        this.__18 = v;
        return v;
    }
    public var _v(get, set) : stdgo.GoUIntptr;
    function get__v():stdgo.GoUIntptr return this._v;
    function set__v(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._v = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?__18:T_noCopy, ?_v:stdgo.GoUIntptr) this = new stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr(__18, (_v : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
