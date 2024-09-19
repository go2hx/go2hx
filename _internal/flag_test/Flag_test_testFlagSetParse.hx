package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testFlagSetParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.flag_test.Flag_test__testParse._testParse(stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling)), _t);
    }
