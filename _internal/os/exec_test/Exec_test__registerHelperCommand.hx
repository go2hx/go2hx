package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _registerHelperCommand(_name:stdgo.GoString, _f:stdgo.Slice<stdgo.GoString> -> Void):Void {
        if ((_internal.os.exec_test.Exec_test__helperCommands._helperCommands[_name] ?? null) != null) {
            throw stdgo.Go.toInterface((("duplicate command registered: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
        };
        _internal.os.exec_test.Exec_test__helperCommands._helperCommands[_name] = _f;
    }
