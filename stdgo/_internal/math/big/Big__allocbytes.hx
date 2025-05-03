package stdgo._internal.math.big;
function _allocBytes(_f:() -> Void):stdgo.GoUInt64 {
        var _stats:stdgo._internal.runtime.Runtime_memstats.MemStats = ({} : stdgo._internal.runtime.Runtime_memstats.MemStats);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L172"
        stdgo._internal.runtime.Runtime_readmemstats.readMemStats((stdgo.Go.setRef(_stats) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>));
        var _t = (_stats.totalAlloc : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L174"
        _f();
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L175"
        stdgo._internal.runtime.Runtime_readmemstats.readMemStats((stdgo.Go.setRef(_stats) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>));
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L176"
        return (_stats.totalAlloc - _t : stdgo.GoUInt64);
    }
