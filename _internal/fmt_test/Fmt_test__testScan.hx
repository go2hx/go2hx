package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoString -> stdgo._internal.io.Io_Reader.Reader, _scan:(stdgo._internal.io.Io_Reader.Reader, haxe.Rest<stdgo.AnyInterface>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }):Void {
        for (__2 => _test in _internal.fmt_test.Fmt_test__scanTests._scanTests) {
            var _r = (_f(_test._text?.__copy__()) : stdgo._internal.io.Io_Reader.Reader);
            var __tmp__ = _scan(_r, _test._in), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _m = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _m = stdgo._internal.fmt.Fmt_sprintf.sprintf((" (%d fields ok)" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__();
                };
                _t.errorf(("got error scanning %q: %s%s" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_m));
                continue;
            };
            if (_n != ((1 : stdgo.GoInt))) {
                _t.errorf(("count error on entry %q: got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_n));
                continue;
            };
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._in)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _p = (_v?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v = _p.elem()?.__copy__();
                };
            };
            var _val = (_v.interface_() : stdgo.AnyInterface);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_val, _test._out)) {
                _t.errorf(("scanning %q: expected %#v got %#v, type %T" : stdgo.GoString), stdgo.Go.toInterface(_test._text), _test._out, _val, _val);
            };
        };
    }
