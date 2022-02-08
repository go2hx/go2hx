package stdgo.internal.execabs;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named @:structInit class Cmd extends stdgo.os.exec.Exec.Cmd {
    public function new(?path, ?args, ?env, ?dir, ?stdin, ?stdout, ?stderr, ?extraFiles, ?sysProcAttr, ?process, ?processState, ?_ctx, ?_lookPathErr, ?_finished, ?_childFiles, ?_closeAfterStart, ?_closeAfterWait, ?_goroutine, ?_errch, ?_waitDone) super(path,
args,
env,
dir,
stdin,
stdout,
stderr,
extraFiles,
sysProcAttr,
process,
processState,
_ctx,
_lookPathErr,
_finished,
_childFiles,
_closeAfterStart,
_closeAfterWait,
_goroutine,
_errch,
_waitDone);
    public override function __copy__() return new Cmd(
path,
args,
env,
dir,
stdin,
stdout,
stderr,
extraFiles,
sysProcAttr,
process,
processState,
_ctx,
_lookPathErr,
_finished,
_childFiles,
_closeAfterStart,
_closeAfterWait,
_goroutine,
_errch,
_waitDone);
}
@:named @:structInit class T_error extends stdgo.os.exec.Exec.T_error {
    public function new(?name, ?err) super(name, err);
    public override function __copy__() return new T_error(name, err);
}
@:named @:structInit class ExitError extends stdgo.os.exec.Exec.ExitError {
    public function new(?processState, ?stderr) super(processState, stderr);
    public override function __copy__() return new ExitError(processState, stderr);
}
var errNotFound : stdgo.Error = stdgo.os.exec.Exec.errNotFound;
function _relError(_file:GoString, _path:GoString):Error {
        return stdgo.fmt.Fmt.errorf(((("%s resolves to executable relative to current directory (.%c%s)" : GoString))), Go.toInterface(_file), Go.toInterface(((47 : GoInt32))), Go.toInterface(_path));
    }
function lookPath(_file:GoString):{ var _0 : GoString; var _1 : Error; } {
        var __tmp__ = stdgo.os.exec.Exec.lookPath(_file), _path:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : (""), _1 : _err };
        };
        if ((stdgo.path.filepath.Filepath.base(_file) == _file) && !stdgo.path.filepath.Filepath.isAbs(_path)) {
            return { _0 : (""), _1 : _relError(_file, _path) };
        };
        return { _0 : _path, _1 : ((null : stdgo.Error)) };
    }
function _fixCmd(_name:GoString, _cmd:Pointer<stdgo.os.exec.Exec.Cmd>):Void {
        if ((stdgo.path.filepath.Filepath.base(_name) == _name) && !stdgo.path.filepath.Filepath.isAbs(_cmd.value.path)) {
            var _lookPathErr:Pointer<stdgo.Error> = (_error.value)(((stdgo.reflect.Reflect.valueOf(Go.toInterface(_cmd)).elem().fieldByName(((("lookPathErr" : GoString)))).addr().pointer() : stdgo.unsafe.Unsafe.Pointer_)));
            if (Go.toInterface(_lookPathErr.value) == Go.toInterface(null)) {
                _lookPathErr.value = _relError(_name, _cmd.value.path);
            };
            _cmd.value.path = ("");
        };
    }
function commandContext(_ctx:stdgo.context.Context.Context, _name:GoString, _arg:haxe.Rest<GoString>):Pointer<stdgo.os.exec.Exec.Cmd> {
        var _arg = new Slice<GoString>(..._arg);
        var _cmd:Pointer<stdgo.os.exec.Exec.Cmd> = stdgo.os.exec.Exec.commandContext(_ctx, _name, ..._arg.toArray());
        _fixCmd(_name, _cmd);
        return _cmd;
    }
function command(_name:GoString, _arg:haxe.Rest<GoString>):Pointer<stdgo.os.exec.Exec.Cmd> {
        var _arg = new Slice<GoString>(..._arg);
        var _cmd:Pointer<stdgo.os.exec.Exec.Cmd> = stdgo.os.exec.Exec.command(_name, ..._arg.toArray());
        _fixCmd(_name, _cmd);
        return _cmd;
    }
