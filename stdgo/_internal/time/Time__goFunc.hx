package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _goFunc(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        stdgo.Go.routine(() -> (stdgo.Go.typeAssert((_arg : () -> Void)) : () -> Void)());
    }
