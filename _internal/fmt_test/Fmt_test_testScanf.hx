package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__3 => _test in _internal.fmt_test.Fmt_test__scanfTests._scanfTests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_test._text?.__copy__(), _test._format?.__copy__(), _test._in), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_test._out != null) {
                    _t.errorf(("Sscanf(%q, %q): unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if (_test._out == null) {
                _t.errorf(("Sscanf(%q, %q): unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format));
                continue;
            };
            if (_n != ((1 : stdgo.GoInt))) {
                _t.errorf(("Sscanf(%q, %q): parsed %d field, want 1" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_n));
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
                _t.errorf(("Sscanf(%q, %q): parsed value %T(%#v), want %T(%#v)" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format), _val, _val, _test._out, _test._out);
            };
        };
    }
