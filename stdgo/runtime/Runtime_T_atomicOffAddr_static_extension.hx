package stdgo.runtime;
class T_atomicOffAddr_static_extension {
    static public function load(_b:T_atomicOffAddr):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr>);
        return {
            final obj = stdgo._internal.runtime.Runtime_T_atomicOffAddr_static_extension.T_atomicOffAddr_static_extension.load(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function storeMarked(_b:T_atomicOffAddr, _addr:stdgo.GoUIntptr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr>);
        final _addr = (_addr : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_T_atomicOffAddr_static_extension.T_atomicOffAddr_static_extension.storeMarked(_b, _addr);
    }
    static public function storeUnmark(_b:T_atomicOffAddr, _markedAddr:stdgo.GoUIntptr, _newAddr:stdgo.GoUIntptr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr>);
        final _markedAddr = (_markedAddr : stdgo.GoUIntptr);
        final _newAddr = (_newAddr : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_T_atomicOffAddr_static_extension.T_atomicOffAddr_static_extension.storeUnmark(_b, _markedAddr, _newAddr);
    }
    static public function storeMin(_b:T_atomicOffAddr, _addr:stdgo.GoUIntptr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr>);
        final _addr = (_addr : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_T_atomicOffAddr_static_extension.T_atomicOffAddr_static_extension.storeMin(_b, _addr);
    }
    static public function clear(_b:T_atomicOffAddr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_T_atomicOffAddr.T_atomicOffAddr>);
        stdgo._internal.runtime.Runtime_T_atomicOffAddr_static_extension.T_atomicOffAddr_static_extension.clear(_b);
    }
}
