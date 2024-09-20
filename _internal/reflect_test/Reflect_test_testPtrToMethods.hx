package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testPtrToMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _y:_internal.reflect_test.Reflect_test_T__struct_90.T__struct_90 = ({ xm : ({} : _internal.reflect_test.Reflect_test_XM.XM) } : _internal.reflect_test.Reflect_test_T__struct_90.T__struct_90);
        var _yp = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)))).interface_() : stdgo.AnyInterface);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_yp : stdgo._internal.fmt.Fmt_Stringer.Stringer)) : stdgo._internal.fmt.Fmt_Stringer.Stringer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.fmt.Fmt_Stringer.Stringer), _1 : false };
        }, __6 = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatal(stdgo.Go.toInterface(("does not implement Stringer, but should" : stdgo.GoString)));
        };
    }
