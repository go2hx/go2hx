package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testStringer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((0 : _internal.fmt_test.Fmt_test_TI.TI))), stdgo.Go.toInterface(stdgo.Go.asInterface((1 : _internal.fmt_test.Fmt_test_TI8.TI8))), stdgo.Go.toInterface(stdgo.Go.asInterface((2 : _internal.fmt_test.Fmt_test_TI16.TI16))), stdgo.Go.toInterface(stdgo.Go.asInterface((3 : _internal.fmt_test.Fmt_test_TI32.TI32))), stdgo.Go.toInterface(stdgo.Go.asInterface((4i64 : _internal.fmt_test.Fmt_test_TI64.TI64))))?.__copy__() : stdgo.GoString);
        _internal.fmt_test.Fmt_test__check._check(_t, _s?.__copy__(), ("I: 0 I8: 1 I16: 2 I32: 3 I64: 4" : stdgo.GoString));
        _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v %v %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((5u32 : _internal.fmt_test.Fmt_test_TU.TU))), stdgo.Go.toInterface(stdgo.Go.asInterface((6 : _internal.fmt_test.Fmt_test_TU8.TU8))), stdgo.Go.toInterface(stdgo.Go.asInterface((7 : _internal.fmt_test.Fmt_test_TU16.TU16))), stdgo.Go.toInterface(stdgo.Go.asInterface((8u32 : _internal.fmt_test.Fmt_test_TU32.TU32))), stdgo.Go.toInterface(stdgo.Go.asInterface((9i64 : _internal.fmt_test.Fmt_test_TU64.TU64))), stdgo.Go.toInterface(stdgo.Go.asInterface((10 : _internal.fmt_test.Fmt_test_TUI.TUI))))?.__copy__();
        _internal.fmt_test.Fmt_test__check._check(_t, _s?.__copy__(), ("U: 5 U8: 6 U16: 7 U32: 8 U64: 9 UI: 10" : stdgo.GoString));
        _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v %v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo.GoFloat64) : _internal.fmt_test.Fmt_test_TF.TF))), stdgo.Go.toInterface(stdgo.Go.asInterface(((2 : stdgo.GoFloat64) : _internal.fmt_test.Fmt_test_TF32.TF32))), stdgo.Go.toInterface(stdgo.Go.asInterface(((3 : stdgo.GoFloat64) : _internal.fmt_test.Fmt_test_TF64.TF64))))?.__copy__();
        _internal.fmt_test.Fmt_test__check._check(_t, _s?.__copy__(), ("F: 1.000000 F32: 2.000000 F64: 3.000000" : stdgo.GoString));
        _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((true : _internal.fmt_test.Fmt_test_TB.TB))), stdgo.Go.toInterface(stdgo.Go.asInterface((("x" : stdgo.GoString) : _internal.fmt_test.Fmt_test_TS.TS))))?.__copy__();
        _internal.fmt_test.Fmt_test__check._check(_t, _s?.__copy__(), ("B: true S: \"x\"" : stdgo.GoString));
    }
