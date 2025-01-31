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
var _tests : stdgo.Slice<stdgo._internal.log.Log_T_tester.T_tester> = (new stdgo.Slice<stdgo._internal.log.Log_T_tester.T_tester>(14, 14, ...[
(new stdgo._internal.log.Log_T_tester.T_tester((0 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((0 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("XXX" : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((1 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((2 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((66 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9] XXX" : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((6 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((4 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((8 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), (".*/[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((16 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((24 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((15 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((23 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((79 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXX" : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester),
(new stdgo._internal.log.Log_T_tester.T_tester((87 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXX" : stdgo.GoString)) : stdgo._internal.log.Log_T_tester.T_tester)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.Log_T_tester.T_tester)])) : stdgo.Slice<stdgo._internal.log.Log_T_tester.T_tester>);
