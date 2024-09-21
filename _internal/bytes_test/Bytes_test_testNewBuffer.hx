package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testNewBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_internal.bytes_test.Bytes_test__testBytes._testBytes);
        _internal.bytes_test.Bytes_test__check._check(_t, ("NewBuffer" : stdgo.GoString), _buf, _internal.bytes_test.Bytes_test__testString._testString?.__copy__());
    }
