package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUsage(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _called = (false : Bool);
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(function():Void {
            _called = true;
        });
        if (stdgo._internal.flag.Flag_commandLine.commandLine.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-x" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) == null) {
            _t.error(stdgo.Go.toInterface(("parse did not fail for unknown flag" : stdgo.GoString)));
        };
        if (!_called) {
            _t.error(stdgo.Go.toInterface(("did not call Usage for unknown flag" : stdgo.GoString)));
        };
    }
