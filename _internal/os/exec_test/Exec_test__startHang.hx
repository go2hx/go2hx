package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _startHang(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _ctx:stdgo._internal.context.Context_Context.Context, _hangTime:stdgo._internal.time.Time_Duration.Duration, _interrupt:stdgo._internal.os.Os_Signal.Signal, _waitDelay:stdgo._internal.time.Time_Duration.Duration, _flags:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> {
        var _flags = new stdgo.Slice<stdgo.GoString>(_flags.length, 0, ..._flags);
        _t.helper();
        var _args = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[(_hangTime.string() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_flags : Array<stdgo.GoString>)));
        var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("hang" : stdgo.GoString), ...(_args : Array<stdgo.GoString>));
        _cmd.stdin = stdgo.Go.asInterface(_internal.os.exec_test.Exec_test__newTickReader._newTickReader((1000000i64 : stdgo._internal.time.Time_Duration.Duration)));
        _cmd.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        if (_interrupt == null) {
            _cmd.cancel = null;
        } else {
            _cmd.cancel = function():stdgo.Error {
                return _cmd.process.signal(_interrupt);
            };
        };
        _cmd.waitDelay = _waitDelay;
        var __tmp__ = _cmd.stdoutPipe(), _out:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _t.log(stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
        {
            var _err = (_cmd.start() : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_buf), _out), __46:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                _cmd.process.kill();
                _cmd.wait_();
                _t.failNow();
            };
        };
        if ((_buf.len() > (0 : stdgo.GoInt) : Bool)) {
            _t.logf(("stdout %v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.args), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
        };
        return _cmd;
    }
