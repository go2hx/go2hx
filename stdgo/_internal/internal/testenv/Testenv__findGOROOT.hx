package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
function _findGOROOT():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:check2 stdgo._internal.internal.testenv.Testenv__gorootOnce._gorootOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__gorootPath._gorootPath = stdgo._internal.runtime.Runtime_gOROOT.gOROOT()?.__copy__();
            if (stdgo._internal.internal.testenv.Testenv__gorootPath._gorootPath != (stdgo.Go.str())) {
                return;
            };
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.internal.testenv.Testenv__gorootErr._gorootErr = stdgo._internal.fmt.Fmt_errorf.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            var _dir = (_cwd?.__copy__() : stdgo.GoString);
            while (true) {
                var _parent = (stdgo._internal.path.filepath.Filepath_dir.dir(_dir?.__copy__())?.__copy__() : stdgo.GoString);
                if (_parent == (_dir)) {
                    stdgo._internal.internal.testenv.Testenv__gorootErr._gorootErr = stdgo._internal.fmt.Fmt_errorf.errorf(("failed to locate GOROOT/src in any parent directory" : stdgo.GoString));
                    return;
                };
                {
                    var _base = (stdgo._internal.path.filepath.Filepath_base.base(_dir?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_base != (("src" : stdgo.GoString))) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.os.Os_readFile.readFile(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo._internal.os.Os_isNotExist.isNotExist(_err)) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                    stdgo._internal.internal.testenv.Testenv__gorootErr._gorootErr = stdgo._internal.fmt.Fmt_errorf.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                var _goMod = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
                while (_goMod != (stdgo.Go.str())) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_goMod?.__copy__(), ("\n" : stdgo.GoString));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _goMod = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    var _fields = stdgo._internal.strings.Strings_fields.fields(_line?.__copy__());
                    if (((((_fields.length) >= (2 : stdgo.GoInt) : Bool) && _fields[(0 : stdgo.GoInt)] == (("module" : stdgo.GoString)) : Bool) && (_fields[(1 : stdgo.GoInt)] == ("std" : stdgo.GoString)) : Bool)) {
                        stdgo._internal.internal.testenv.Testenv__gorootPath._gorootPath = _parent?.__copy__();
                        return;
                    };
                };
            };
        });
        return { _0 : stdgo._internal.internal.testenv.Testenv__gorootPath._gorootPath?.__copy__(), _1 : stdgo._internal.internal.testenv.Testenv__gorootErr._gorootErr };
    }
