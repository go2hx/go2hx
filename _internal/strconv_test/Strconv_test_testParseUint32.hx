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
function testParseUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _ in _internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests) {
            var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test>);
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_test._in?.__copy__(), (10 : stdgo.GoInt), (32 : stdgo.GoInt)), _out:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_test._out : stdgo.GoUInt64) != _out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err)) : Bool)) {
                _t.errorf(("ParseUint(%q, 10, 32) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
