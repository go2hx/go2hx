package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _goFunc(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        stdgo.Go.routine(() -> (stdgo.Go.typeAssert((_arg : () -> Void)) : () -> Void)());
    }
