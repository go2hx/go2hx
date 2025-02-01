package stdgo._internal.internal.coverage.encodecounter;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.internal.coverage.Coverage;
@:named @:using(stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitorFn_static_extension.CounterVisitorFn_static_extension) typedef CounterVisitorFn = (stdgo.GoUInt32, stdgo.GoUInt32, stdgo.Slice<stdgo.GoUInt32>) -> stdgo.Error;
