package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:interface typedef PoolDequeue = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function pushHead(_val:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
};
