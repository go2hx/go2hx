package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool throw "Value:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    @:tdfield
    static public function swap( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>, _new_:stdgo.AnyInterface):stdgo.AnyInterface throw "Value:sync.atomic_.swap is not yet implemented";
    @:keep
    @:tdfield
    static public function store( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>, _val:stdgo.AnyInterface):Void throw "Value:sync.atomic_.store is not yet implemented";
    @:keep
    @:tdfield
    static public function load( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>):stdgo.AnyInterface throw "Value:sync.atomic_.load is not yet implemented";
}
