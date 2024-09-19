package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUserDefinedForCommandLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _result:stdgo.GoString = ("" : stdgo.GoString);
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(function():Void {
            _result = ("HELP" : stdgo.GoString);
        });
        stdgo._internal.flag.Flag_usage.usage();
        if (_result != (("HELP" : stdgo.GoString))) {
            _t.fatalf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(("HELP" : stdgo.GoString)));
        };
    }
