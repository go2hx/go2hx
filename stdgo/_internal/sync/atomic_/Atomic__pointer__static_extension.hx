package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>, _old:stdgo.Ref<Dynamic>, _new_:stdgo.Ref<Dynamic>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        final b = stdgo.Go.toInterface(_old) == stdgo.Go.toInterface(_new_);
        if (b) _x._v = stdgo.Go.toInterface(_new_);
        return b;
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>, _new_:stdgo.Ref<Dynamic>):stdgo.Ref<Dynamic> {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        final old = @:privateAccess _x._v;
        _x._v = stdgo.Go.toInterface(_new_);
        return stdgo.Go.toInterface(old);
    }
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>, _val:stdgo.Ref<Dynamic>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        _x._v = stdgo.Go.toInterface(_val);
    }
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>):stdgo.Ref<Dynamic> {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        return @:privateAccess _x._v.__toRef__();
    }
}
