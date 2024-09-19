package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ec = (stdgo.Go.setRef((new _internal.fmt_test.Fmt_test_T_eofCounter.T_eofCounter(stdgo._internal.strings.Strings_newReader.newReader(("123\n" : stdgo.GoString)), (0 : stdgo.GoInt)) : _internal.fmt_test.Fmt_test_T_eofCounter.T_eofCounter)) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_eofCounter.T_eofCounter>);
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_ec), stdgo.Go.toInterface(stdgo.Go.pointer(_a))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected to scan one item, got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
        };
        if (_ec._eofCount != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected zero EOFs" : stdgo.GoString)), stdgo.Go.toInterface(_ec._eofCount));
            _ec._eofCount = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_ec), stdgo.Go.toInterface(stdgo.Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning empty string" : stdgo.GoString)));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected to scan zero items, got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
        };
        if (_ec._eofCount != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected one EOF, got" : stdgo.GoString)), stdgo.Go.toInterface(_ec._eofCount));
        };
    }
