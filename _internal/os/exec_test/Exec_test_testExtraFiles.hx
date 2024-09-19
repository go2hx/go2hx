package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testExtraFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.testing.Testing_short.short()) {
                _t.skipf(("skipping test in short mode that would build a helper binary" : stdgo.GoString));
            };
            if (_internal.os.exec_test.Exec_test__haveUnexpectedFDs._haveUnexpectedFDs) {
                _t.skip(stdgo.Go.toInterface(("skipping test because test was run with FDs open" : stdgo.GoString)));
            };
            stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
            stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
            stdgo._internal.internal.testenv.Testenv_mustInternalLink.mustInternalLink(stdgo.Go.asInterface(_t), false);
            if (false) {
                _t.skipf(("skipping test on %q" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _ln.close());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ln) : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>)) : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>).file(), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.net.Net_fileListener.fileListener(_f), _ln2:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _ln2.close());
            var _ts = stdgo._internal.net.http.httptest.Httptest_newUnstartedServer.newUnstartedServer(stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {} : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc)));
            _ts.config.errorLog = stdgo._internal.log.Log_new_.new_(stdgo._internal.io.Io_discard.discard, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
            _ts.startTLS();
            __deferstack__.unshift(() -> _ts.close());
            {
                var __tmp__ = stdgo._internal.net.http.Http_get.get(_ts.url?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.errorf(("success trying to fetch %s; want an error" : stdgo.GoString), stdgo.Go.toInterface(_ts.url));
            };
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()), _tf:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("TempFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tf.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _tf.close());
            {};
            {
                var __tmp__ = _tf.write((("Hello, fd 3!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _tf.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Seek: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _tempdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _exe = (stdgo._internal.path.filepath.Filepath_join.join(_tempdir?.__copy__(), ("read3.exe" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _c = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), _exe?.__copy__(), ("read3.go" : stdgo.GoString));
            _c.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("CGO_ENABLED=0" : stdgo.GoString)));
            {
                var __tmp__ = _c.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.logf(("go build -o %s read3.go\n%s" : stdgo.GoString), stdgo.Go.toInterface(_exe), stdgo.Go.toInterface(_output));
                    _t.fatalf(("go build failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var _ctx = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
            {
                var __tmp__ = _t.deadline(), _deadline:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _deadline = _deadline.add((-stdgo._internal.time.Time_until.until(_deadline?.__copy__()) / (5i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
                    var _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                    {
                        var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(_ctx, _deadline?.__copy__());
                        _ctx = __tmp__._0;
                        _cancel = __tmp__._1;
                    };
                    __deferstack__.unshift(() -> _cancel());
                };
            };
            _c = stdgo._internal.os.exec.Exec_commandContext.commandContext(_ctx, _exe?.__copy__());
            var __0:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __1:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
var _stderr = __1, _stdout = __0;
            _c.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_stdout) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
            _c.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(_stderr) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
            _c.extraFiles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>(1, 1, ...[_tf]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
            if (false) {
                _c.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("GOMAXPROCS=1" : stdgo.GoString)));
            };
            _err = _c.run();
            if (_err != null) {
                _t.fatalf(("Run: %v\n--- stdout:\n%s--- stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_stdout.string() : stdgo.GoString)), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)));
            };
            if ((_stdout.string() : stdgo.GoString) != (("Hello, fd 3!" : stdgo.GoString))) {
                _t.errorf(("got stdout %q, stderr %q; want %q on stdout" : stdgo.GoString), stdgo.Go.toInterface((_stdout.string() : stdgo.GoString)), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)), stdgo.Go.toInterface(("Hello, fd 3!" : stdgo.GoString)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
