package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap<Dynamic>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>, _old:stdgo.Ref<Dynamic>, _new:stdgo.Ref<Dynamic>):Bool throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function swap<Dynamic>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>, _new:stdgo.Ref<Dynamic>):stdgo.Ref<Dynamic> throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function store<Dynamic>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>, _val:stdgo.Ref<Dynamic>):Void throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function load<Dynamic>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>):stdgo.Ref<Dynamic> throw "generic function is not supported";
}
