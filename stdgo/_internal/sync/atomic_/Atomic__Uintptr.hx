package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension) class Uintptr {
    @:optional
    public var __18 : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy);
    public var _v : stdgo.GoUIntptr = 0;
    public function new(?__18:stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy, ?_v:stdgo.GoUIntptr) {
        if (__18 != null) this.__18 = __18;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uintptr(__18, _v);
    }
}
