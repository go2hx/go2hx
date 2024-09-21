package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanStateCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner = ({} : _internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner), __1:_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner = ({} : _internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner), __2:_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner = ({} : _internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner);
var _c = __2, _b = __1, _a = __0;
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("12➂" : stdgo.GoString), ("%c%c%c" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner>)))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_n != ((3 : stdgo.GoInt))) {
            _t.fatalf(("expected 3 items consumed, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (((_a._rune != ((49 : stdgo.GoInt32)) || _b._rune != ((50 : stdgo.GoInt32)) : Bool) || (_c._rune != (10114 : stdgo.GoInt32)) : Bool)) {
            _t.errorf(("bad scan rune: %q %q %q should be \'1\' \'2\' \'➂\'" : stdgo.GoString), stdgo.Go.toInterface(_a._rune), stdgo.Go.toInterface(_b._rune), stdgo.Go.toInterface(_c._rune));
        };
        if (((_a._size != ((1 : stdgo.GoInt)) || _b._size != ((1 : stdgo.GoInt)) : Bool) || (_c._size != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("bad scan size: %q %q %q should be 1 1 3" : stdgo.GoString), stdgo.Go.toInterface(_a._size), stdgo.Go.toInterface(_b._size), stdgo.Go.toInterface(_c._size));
        };
    }
