package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadLineNewlines(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _e in _internal.bufio_test.Bufio_test__readLineNewlinesTests._readLineNewlinesTests) {
            _internal.bufio_test.Bufio_test__testReadLineNewlines._testReadLineNewlines(_t, _e._input?.__copy__(), _e._expect);
        };
    }
