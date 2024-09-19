package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension) class Pointer_<T_> {
    @:optional
    public var __5 : stdgo.GoArray<stdgo.Ref<Dynamic>> = new stdgo.GoArray<stdgo.Ref<Dynamic>>(0, 0);
    @:optional
    public var __6 : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy);
    public var _v : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?__5:stdgo.GoArray<stdgo.Ref<Dynamic>>, ?__6:stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (__5 != null) this.__5 = __5;
        if (__6 != null) this.__6 = __6;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pointer_<T_>(__5, __6, _v);
    }
}
