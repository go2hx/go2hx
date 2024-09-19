package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _sendTime(_c:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        {
            var __select__ = true;
            while (__select__) {
                if ((stdgo.Go.typeAssert((_c : stdgo.Chan<stdgo._internal.time.Time_Time.Time>)) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>) != null && (stdgo.Go.typeAssert((_c : stdgo.Chan<stdgo._internal.time.Time_Time.Time>)) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>).__isSend__()) {
                    __select__ = false;
                    {
                        (stdgo.Go.typeAssert((_c : stdgo.Chan<stdgo._internal.time.Time_Time.Time>)) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>).__send__(stdgo._internal.time.Time_now.now());
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
