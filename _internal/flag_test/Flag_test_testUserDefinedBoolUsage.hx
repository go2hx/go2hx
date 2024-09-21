package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUserDefinedBoolUsage(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flags:stdgo._internal.flag.Flag_FlagSet.FlagSet = ({} : stdgo._internal.flag.Flag_FlagSet.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _b:_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar = ({} : _internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar>)), ("b" : stdgo.GoString), ("X" : stdgo.GoString));
        _b._count = (0 : stdgo.GoInt);
        _flags.printDefaults();
        var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ("  -b\tX\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _b._count = (4 : stdgo.GoInt);
        _flags.printDefaults();
        _got = (_buf.string() : stdgo.GoString)?.__copy__();
        _want = ("  -b\tX\n  -b value\n    \tX\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
