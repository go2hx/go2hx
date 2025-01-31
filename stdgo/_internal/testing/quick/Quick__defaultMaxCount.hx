package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
var _defaultMaxCount : stdgo.Pointer<stdgo.GoInt> = stdgo._internal.flag.Flag_int_.int_(("quickchecks" : stdgo.GoString), (100 : stdgo.GoInt), ("The default number of iterations for each check" : stdgo.GoString));
