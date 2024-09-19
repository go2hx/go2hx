package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("123αb" : stdgo.GoString))));
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _a:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r), ("%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("reading int expected one item, no errors; got %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if (_i != ((123 : stdgo.GoInt))) {
            _t.errorf(("expected 123; got %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r), ("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("reading string expected one item, no errors; got %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if (_a != (("αb" : stdgo.GoString))) {
            _t.errorf(("expected αb; got %q" : stdgo.GoString), stdgo.Go.toInterface(_a));
        };
    }
