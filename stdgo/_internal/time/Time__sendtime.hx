package stdgo._internal.time;
function _sendTime(_c:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        {
            var __select__ = true;
            var __c__0 = (stdgo.Go.typeAssert((_c : stdgo.Chan<stdgo._internal.time.Time_time.Time>)) : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
            while (__select__) {
                if ((stdgo.Go.typeAssert((_c : stdgo.Chan<stdgo._internal.time.Time_time.Time>)) : stdgo.Chan<stdgo._internal.time.Time_time.Time>) != null && __c__0.__isSend__(true)) {
                    __select__ = false;
                    {
                        __c__0.__send__(stdgo._internal.time.Time_now.now());
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
    }
