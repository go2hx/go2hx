package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Bool__asInterface) class Bool__static_extension {
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>, _old:Bool, _new:Bool):Bool throw "Bool_:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>, _new:Bool):Bool throw "Bool_:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>, _val:Bool):Void stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0);
    @:keep
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>):Bool return @:privateAccess _x._v == 1;
}
