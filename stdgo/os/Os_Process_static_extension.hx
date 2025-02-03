package stdgo.os;
class Process_static_extension {
    static public function _blockUntilWaitable(_p:Process):stdgo.Tuple<Bool, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return {
            final obj = stdgo._internal.os.Os_Process_static_extension.Process_static_extension._blockUntilWaitable(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _release(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension._release(_p);
    }
    static public function _signal(_p:Process, _sig:Signal):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension._signal(_p, _sig);
    }
    static public function _wait(_p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return {
            final obj = stdgo._internal.os.Os_Process_static_extension.Process_static_extension._wait(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _kill(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension._kill(_p);
    }
    static public function signal(_p:Process, _sig:Signal):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension.signal(_p, _sig);
    }
    static public function wait_(_p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return {
            final obj = stdgo._internal.os.Os_Process_static_extension.Process_static_extension.wait_(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function kill(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension.kill(_p);
    }
    static public function release(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension.release(_p);
    }
    static public function _done(_p:Process):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        return stdgo._internal.os.Os_Process_static_extension.Process_static_extension._done(_p);
    }
    static public function _setDone(_p:Process):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_Process.Process>);
        stdgo._internal.os.Os_Process_static_extension.Process_static_extension._setDone(_p);
    }
}
