package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(function():Void {
            _t.error(stdgo.Go.toInterface(("bad parse" : stdgo.GoString)));
        });
        _internal.flag_test.Flag_test__testParse._testParse(stdgo._internal.flag.Flag_commandLine.commandLine, _t);
    }
