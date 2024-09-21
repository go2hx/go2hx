package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testScanLineReturnButNoNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _lines = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("abcdefghijklmn" : stdgo.GoString), ("opqrstuvwxyz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _internal.bufio_test.Bufio_test__testNoNewline._testNoNewline(("abcdefghijklmn\nopqrstuvwxyz\r" : stdgo.GoString), _lines, _t);
    }
