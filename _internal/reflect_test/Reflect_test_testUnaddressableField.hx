package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testUnaddressableField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.reflect.Reflect_Buffer.Buffer = ({} : stdgo._internal.reflect.Reflect_Buffer.Buffer);
        var _localBuffer:_internal.reflect_test.Reflect_test_T__struct_92.T__struct_92 = ({ _buf : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T__struct_92.T__struct_92);
        var _lv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_localBuffer) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_92.T__struct_92>)))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_b))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Set" : stdgo.GoString), function():Void {
            _lv.set(_rv?.__copy__());
        });
    }
