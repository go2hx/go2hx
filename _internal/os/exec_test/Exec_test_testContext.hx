package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testContext(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        var _c = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
        var __tmp__ = _c.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _c.stdoutPipe(), _stdout:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (_c.start() : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _stdin.write((("O:hi\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __26:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_stdout, _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != ((_buf.length)) || _err != null : Bool) || ((_buf : stdgo.GoString) != ("O:hi\n" : stdgo.GoString)) : Bool)) {
            _t.fatalf(("ReadFull = %d, %v, %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
        stdgo.Go.routine(() -> _cancel());
        {
            var _err = (_c.wait_() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected Wait failure" : stdgo.GoString)));
            };
        };
    }
