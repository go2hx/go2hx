package stdgo._internal.log;
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L87"
        for (__8 => _testcase in stdgo._internal.log.Log__tests._tests) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L88"
            stdgo._internal.log.Log__testprint._testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), false);
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L89"
            stdgo._internal.log.Log__testprint._testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), true);
        };
    }
