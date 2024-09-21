package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testDoubleStartLeavesPipesOpen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("pipetest" : stdgo.GoString));
        var __tmp__ = _cmd.stdinPipe(), _in:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _cmd.stdoutPipe(), _out:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (_cmd.start() : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err = (_cmd.wait_() : stdgo.Error);
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        });
        {
            var _err = (_cmd.start() : stdgo.Error);
            if (((_err == null) || !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_err.error()?.__copy__(), ("already started" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("second call to Start returned a nil; want an \'already started\' error" : stdgo.GoString));
            };
        };
        var _outc = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_out), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _outc.__send__(_b);
            };
            a();
        });
        {};
        {
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_in, ("O:Hello, pipe!\n" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _in.close();
        var _b = _outc.__get__();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b, (("O:Hello, pipe!\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
            _t.fatalf(("read %q from stdout pipe; want %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("O:Hello, pipe!\n" : stdgo.GoString)));
        };
    }
