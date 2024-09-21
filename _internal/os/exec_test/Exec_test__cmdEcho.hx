package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdEcho(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var _iargs = (new stdgo.Slice<stdgo.AnyInterface>(0, 0, ...[]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__0 => _s in _args) {
            _iargs = (_iargs.__append__(stdgo.Go.toInterface(_s)));
        };
        stdgo._internal.fmt.Fmt_println.println(...(_iargs : Array<stdgo.AnyInterface>));
    }
