package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testLineByLineFscanf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = ({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("1\n2\n" : stdgo.GoString))) } : _internal.fmt_test.Fmt_test_T__struct_12.T__struct_12);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r), ("%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("first read: %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r), ("%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("second read: %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if (((_i != (1 : stdgo.GoInt)) || (_j != (2 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("wrong values; wanted 1 2 got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
        };
    }
