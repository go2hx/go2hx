package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension) class Pointer_<T_> {
    @:optional
    public var __4 : stdgo.GoArray<stdgo.Ref<Dynamic>> = new stdgo.GoArray<stdgo.Ref<Dynamic>>(0, 0);
    @:optional
    public var __5 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _v : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?__4:stdgo.GoArray<stdgo.Ref<Dynamic>>, ?__5:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (__4 != null) this.__4 = __4;
        if (__5 != null) this.__5 = __5;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pointer_(__4, __5, _v);
    }
}
