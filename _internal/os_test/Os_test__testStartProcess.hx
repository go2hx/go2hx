package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testStartProcess(_dir:stdgo.GoString, _cmd:stdgo.GoString, _args:stdgo.Slice<stdgo.GoString>, _expect:stdgo.GoString):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __ret__:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _t.parallel();
                        var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            _t.fatalf(("Pipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        __deferstack__.unshift(() -> _r.close());
                        var _attr = (stdgo.Go.setRef(({ dir : _dir?.__copy__(), files : (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>(3, 3, ...[null, _w, stdgo._internal.os.Os_stderr.stderr]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>) } : stdgo._internal.os.Os_ProcAttr.ProcAttr)) : stdgo.Ref<stdgo._internal.os.Os_ProcAttr.ProcAttr>);
                        var __tmp__ = stdgo._internal.os.Os_startProcess.startProcess(_cmd?.__copy__(), _args, _attr), _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("StartProcess: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        _w.close();
                        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.asInterface(_r));
                        var _output = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        var __tmp__ = stdgo._internal.os.Os_stat.stat(stdgo._internal.strings.Strings_trimSpace.trimSpace(_output?.__copy__())?.__copy__()), _fi1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                        var __tmp__ = stdgo._internal.os.Os_stat.stat(_expect?.__copy__()), _fi2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, __9:stdgo.Error = __tmp__._1;
                        if (!stdgo._internal.os.Os_sameFile.sameFile(_fi1, _fi2)) {
                            _t.errorf(("exec %q returned %q wanted %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_cmd?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>))), (" " : stdgo.GoString))), stdgo.Go.toInterface(_output), stdgo.Go.toInterface(_expect));
                        };
                        _p.wait_();
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
                };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return null;
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
            return null;
        };
    }
