package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testParseFloatPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _ in _internal.strconv_test.Strconv_test__atoftests._atoftests) {
            var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__atoftests._atoftests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest>);
            if (_test._err != null) {
                continue;
            };
            for (__0 => _suffix in (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
(" " : stdgo.GoString),
("q" : stdgo.GoString),
("+" : stdgo.GoString),
("-" : stdgo.GoString),
("<" : stdgo.GoString),
("=" : stdgo.GoString),
(">" : stdgo.GoString),
("(" : stdgo.GoString),
(")" : stdgo.GoString),
("i" : stdgo.GoString),
("init" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var _in = ((_test._in + _suffix?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloatPrefix.parseFloatPrefix(_in?.__copy__(), (64 : stdgo.GoInt)), __1:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.errorf(("ParseFloatPrefix(%q, 64): err = %v; want no error" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_err));
                };
                if (_n != ((_test._in.length))) {
                    _t.errorf(("ParseFloatPrefix(%q, 64): n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_test._in.length)));
                };
            };
        };
    }
