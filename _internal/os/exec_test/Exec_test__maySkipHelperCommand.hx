package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _maySkipHelperCommand(_name:stdgo.GoString):Void {
        _internal.os.exec_test.Exec_test__helperCommandUsed._helperCommandUsed.store(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(true));
    }
