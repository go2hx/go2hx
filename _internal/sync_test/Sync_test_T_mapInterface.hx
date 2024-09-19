package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
typedef T_mapInterface = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function load(_0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function store(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function loadOrStore(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function delete(_0:stdgo.AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function swap(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function compareAndDelete(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function range(_0:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void;
};
