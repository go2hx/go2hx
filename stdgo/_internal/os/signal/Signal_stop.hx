package stdgo._internal.os.signal;
function stop(_c:stdgo.Chan<stdgo._internal.os.Os_signal.Signal>):Void {
        stdgo._internal.os.signal.Signal__handlers._handlers.lock();
        var _h = (stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] ?? (null : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>));
        if ((_h == null || (_h : Dynamic).__nil__)) {
            stdgo._internal.os.signal.Signal__handlers._handlers.unlock();
            return;
        };
        if (stdgo._internal.os.signal.Signal__handlers._handlers._m != null) stdgo._internal.os.signal.Signal__handlers._handlers._m.__remove__(_c);
        {
            var _n = (0 : stdgo.GoInt);
            while ((_n < (65 : stdgo.GoInt) : Bool)) {
                if (@:check2r _h._want(_n)) {
                    stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]--;
                    if (stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)] == ((0i64 : stdgo.GoInt64))) {
                        stdgo._internal.os.signal.Signal__disablesignal._disableSignal(_n);
                    };
                };
                _n++;
            };
        };
        stdgo._internal.os.signal.Signal__handlers._handlers._stopping = (stdgo._internal.os.signal.Signal__handlers._handlers._stopping.__append__((new stdgo._internal.os.signal.Signal_t_stopping.T_stopping(_c, _h) : stdgo._internal.os.signal.Signal_t_stopping.T_stopping)));
        stdgo._internal.os.signal.Signal__handlers._handlers.unlock();
        stdgo._internal.os.signal.Signal__signalwaituntilidle._signalWaitUntilIdle();
        stdgo._internal.os.signal.Signal__handlers._handlers.lock();
        for (_i => _s in stdgo._internal.os.signal.Signal__handlers._handlers._stopping) {
            if (_s._c == (_c)) {
                stdgo._internal.os.signal.Signal__handlers._handlers._stopping = ((stdgo._internal.os.signal.Signal__handlers._handlers._stopping.__slice__(0, _i) : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>).__append__(...((stdgo._internal.os.signal.Signal__handlers._handlers._stopping.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>) : Array<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>)));
                break;
            };
        };
        stdgo._internal.os.signal.Signal__handlers._handlers.unlock();
    }
