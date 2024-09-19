package stdgo._internal.log;
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _testcase in stdgo._internal.log.Log__tests._tests) {
            stdgo._internal.log.Log__testPrint._testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), false);
            stdgo._internal.log.Log__testPrint._testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), true);
        };
    }
