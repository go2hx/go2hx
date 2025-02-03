package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Pointer__static_extension) abstract Pointer_(stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_) from stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_ to stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_ {
    public var __4(get, set) : haxe.ds.Vector<Dynamic>;
    function get___4():haxe.ds.Vector<Dynamic> return haxe.ds.Vector.fromArrayCopy([for (i in this.__4) i]);
    function set___4(v:haxe.ds.Vector<Dynamic>):haxe.ds.Vector<Dynamic> {
        this.__4 = ([for (i in v) (i : stdgo.Ref<Dynamic>)] : stdgo.GoArray<stdgo.Ref<Dynamic>>);
        return v;
    }
    public var __5(get, set) : T_noCopy;
    function get___5():T_noCopy return this.__5;
    function set___5(v:T_noCopy):T_noCopy {
        this.__5 = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__v():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._v;
    function set__v(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._v = v;
        return v;
    }
    public function new(?__4:haxe.ds.Vector<Dynamic>, ?__5:T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_(([for (i in __4) (i : stdgo.Ref<Dynamic>)] : stdgo.GoArray<stdgo.Ref<Dynamic>>), __5, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
