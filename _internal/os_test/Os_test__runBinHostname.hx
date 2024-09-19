package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _runBinHostname(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):stdgo.GoString {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _r.close());
            var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("hostname" : stdgo.GoString)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errNotFound.errNotFound)) {
                    _t.skip(stdgo.Go.toInterface(("skipping test; test requires hostname but it does not exist" : stdgo.GoString)));
                };
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _argv = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hostname" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (false) {
                _argv = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hostname" : stdgo.GoString), ("-s" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            var __tmp__ = stdgo._internal.os.Os_startProcess.startProcess(_path?.__copy__(), _argv, (stdgo.Go.setRef(({ files : (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>(3, 3, ...[null, _w, stdgo._internal.os.Os_stderr.stderr]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>) } : stdgo._internal.os.Os_ProcAttr.ProcAttr)) : stdgo.Ref<stdgo._internal.os.Os_ProcAttr.ProcAttr>)), _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _w.close();
            var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.asInterface(_r));
            {
                var __tmp__ = _p.wait_();
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("run hostname Wait: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _p.kill();
            if (_err == null) {
                _t.errorf(("expected an error from Kill running \'hostname\'" : stdgo.GoString));
            };
            var _output = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _n = (_output.length : stdgo.GoInt);
                if (((_n > (0 : stdgo.GoInt) : Bool) && (_output[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                    _output = (_output.__slice__((0 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
            if (_output == (stdgo.Go.str())) {
                _t.fatalf(("/bin/hostname produced no output" : stdgo.GoString));
            };
            {
                final __ret__:stdgo.GoString = _output?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoString = ("" : stdgo.GoString);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoString = ("" : stdgo.GoString);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
