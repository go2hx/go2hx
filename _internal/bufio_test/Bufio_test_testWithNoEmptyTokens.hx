package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWithNoEmptyTokens(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.bufio_test.Bufio_test__testEmptyTokens._testEmptyTokens(_t, ("1,2,3" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
    }
