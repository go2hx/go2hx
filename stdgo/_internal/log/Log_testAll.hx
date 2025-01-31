package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _testcase in stdgo._internal.log.Log__tests._tests) {
            stdgo._internal.log.Log__testPrint._testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), false);
            stdgo._internal.log.Log__testPrint._testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), true);
        };
    }
