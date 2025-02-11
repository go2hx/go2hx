package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Int32_asInterface) class Int32_static_extension {
    @:keep
    @:tdfield
    static public function add( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _delta:stdgo.GoInt32):stdgo.GoInt32 throw "Int32:sync.atomic_.add is not yet implemented";
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool throw "Int32:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _new_:stdgo.GoInt32):stdgo.GoInt32 throw "Int32:sync.atomic_.swap is not yet implemented";
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _val:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32> = _x;
        _x._v = _val;
    }
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>):stdgo.GoInt32 {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32> = _x;
        return @:privateAccess _x._v;
    }
}
