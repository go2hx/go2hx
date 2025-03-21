package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>, _old:stdgo.Ref<Dynamic>, _new_:stdgo.Ref<Dynamic>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        stdgo.Go.globalMutex.acquire();
        final b = stdgo.Go.toInterface(_old) == stdgo.Go.toInterface(_new_);
        if (b) _x._v = stdgo.Go.toInterface(_new_);
        stdgo.Go.globalMutex.release();
        return b;
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>, _new_:stdgo.Ref<Dynamic>):stdgo.Ref<Dynamic> {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        stdgo.Go.globalMutex.acquire();
        final old = @:privateAccess _x._v;
        _x._v = stdgo.Go.toInterface(_new_);
        stdgo.Go.globalMutex.release();
        return stdgo.Go.toInterface(old);
    }
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>, _val:stdgo.Ref<Dynamic>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        stdgo.Go.globalMutex.acquire();
        _x._v = stdgo.Go.toInterface(_val);
        stdgo.Go.globalMutex.release();
    }
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>):stdgo.Ref<Dynamic> {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>> = _x;
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v.__toRef__();
        stdgo.Go.globalMutex.release();
        return value;
    }
}
