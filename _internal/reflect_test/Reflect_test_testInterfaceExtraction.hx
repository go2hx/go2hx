package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testInterfaceExtraction(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s:_internal.reflect_test.Reflect_test_T__struct_61.T__struct_61 = ({ w : (null : stdgo._internal.io.Io_Writer.Writer) } : _internal.reflect_test.Reflect_test_T__struct_61.T__struct_61);
        _s.w = stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout);
        var _v = (stdgo._internal.reflect.Reflect_indirect.indirect(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_61.T__struct_61>))))?.__copy__()).field((0 : stdgo.GoInt)).interface_() : stdgo.AnyInterface);
        if (_v != ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_s.w) : stdgo.AnyInterface)) : stdgo.AnyInterface))) {
            _t.error(stdgo.Go.toInterface(("Interface() on interface: " : stdgo.GoString)), _v, stdgo.Go.toInterface(_s.w));
        };
    }
