package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdHang(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(_args[(0 : stdgo.GoInt)]?.__copy__()), _sleep:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("hang" : stdgo.GoString), (1 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        var _exitOnInterrupt = _fs.bool_(("interrupt" : stdgo.GoString), false, ("if true, commands should exit 0 on os.Interrupt" : stdgo.GoString));
        var _subsleep = _fs.duration(("subsleep" : stdgo.GoString), (0i64 : stdgo._internal.time.Time_Duration.Duration), ("amount of time for the \'hang\' helper to leave an orphaned subprocess sleeping with stderr open" : stdgo.GoString));
        var _probe = _fs.duration(("probe" : stdgo.GoString), (0i64 : stdgo._internal.time.Time_Duration.Duration), ("if nonzero, the \'hang\' helper should write to stderr at this interval, and exit nonzero if a write fails" : stdgo.GoString));
        var _read = _fs.bool_(("read" : stdgo.GoString), false, ("if true, the \'hang\' helper should read stdin to completion before sleeping" : stdgo.GoString));
        _fs.parse((_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
        var _pid = (stdgo._internal.os.Os_getpid.getpid() : stdgo.GoInt);
        if (_subsleep.value != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            var _cmd = stdgo._internal.os.exec.Exec_command.command(_internal.os.exec_test.Exec_test__exePath._exePath((null : stdgo._internal.testing.Testing_TB.TB))?.__copy__(), ("hang" : stdgo.GoString), (_subsleep.value.string() : stdgo.GoString)?.__copy__(), ("-read=true" : stdgo.GoString), (("-probe=" : stdgo.GoString) + (_probe.value.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            _cmd.stdin = stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin);
            _cmd.stderr = stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr);
            var __tmp__ = _cmd.stdoutPipe(), _out:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(_err));
                Sys.exit((1 : stdgo.GoInt));
            };
            _cmd.start();
            var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_buf), _out), __24:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(_err));
                    _cmd.process.kill();
                    _cmd.wait_();
                    Sys.exit((1 : stdgo.GoInt));
                };
            };
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%d: started %d: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            stdgo.Go.routine(() -> _cmd.wait_());
        };
        if (_exitOnInterrupt.value) {
            var _c = (new stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo._internal.os.Os_Signal.Signal)) : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>);
            stdgo._internal.os.signal.Signal_notify.notify(_c, stdgo._internal.os.Os_interrupt.interrupt);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var _sig = (_c.__get__() : stdgo._internal.os.Os_Signal.Signal);
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%d: received %v\n" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_sig));
                    Sys.exit((0 : stdgo.GoInt));
                };
                a();
            });
        } else {
            stdgo._internal.os.signal.Signal_ignore.ignore(stdgo._internal.os.Os_interrupt.interrupt);
        };
        stdgo._internal.os.Os_stdout.stdout.close();
        if (_read.value) {
            if (_internal.os.exec_test.Exec_test__pipeSignal._pipeSignal != null) {
                stdgo._internal.os.signal.Signal_ignore.ignore(_internal.os.exec_test.Exec_test__pipeSignal._pipeSignal);
            };
            var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin));
            while (true) {
                var __tmp__ = _r.readBytes((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%d: read %s" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_line));
                };
                if (_err != null) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%d: finished read: %v" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_err));
                    break;
                };
            };
        };
        if (_probe.value != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            var _ticker = stdgo._internal.time.Time_newTicker.newTicker(_probe.value);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    for (_ => _ in _ticker.c) {
                        {
                            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%d: ok\n" : stdgo.GoString), stdgo.Go.toInterface(_pid)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                Sys.exit((1 : stdgo.GoInt));
                            };
                        };
                    };
                };
                a();
            });
        };
        if (_sleep != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            stdgo._internal.time.Time_sleep.sleep(_sleep);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%d: slept %v\n" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(stdgo.Go.asInterface(_sleep)));
        };
    }
