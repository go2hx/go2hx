package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testCommandRelativeName(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("echo" : stdgo.GoString), ("foo" : stdgo.GoString));
        var _base = (stdgo._internal.path.filepath.Filepath_base.base(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        var _dir = (stdgo._internal.path.filepath.Filepath_dir.dir(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        if (_dir == (("." : stdgo.GoString))) {
            _t.skip(stdgo.Go.toInterface(("skipping; running test at root somehow" : stdgo.GoString)));
        };
        var _parentDir = (stdgo._internal.path.filepath.Filepath_dir.dir(_dir?.__copy__())?.__copy__() : stdgo.GoString);
        var _dirBase = (stdgo._internal.path.filepath.Filepath_base.base(_dir?.__copy__())?.__copy__() : stdgo.GoString);
        if (_dirBase == (("." : stdgo.GoString))) {
            _t.skipf(("skipping; unexpected shallow dir of %q" : stdgo.GoString), stdgo.Go.toInterface(_dir));
        };
        _cmd.path = stdgo._internal.path.filepath.Filepath_join.join(_dirBase?.__copy__(), _base?.__copy__())?.__copy__();
        _cmd.dir = _parentDir?.__copy__();
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("echo: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0 = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("foo\n" : stdgo.GoString);
var _e = __1, _g = __0;
            if (_g != (_e)) {
                _t.errorf(("echo: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_g));
            };
        };
    }
