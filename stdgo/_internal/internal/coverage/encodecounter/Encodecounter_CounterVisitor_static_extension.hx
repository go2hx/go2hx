package stdgo._internal.internal.coverage.encodecounter;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.internal.coverage.Coverage;
@:keep class CounterVisitor_static_extension {
    @:interfacetypeffun
    static public function visitFuncs(t:stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitor.CounterVisitor, _f:stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitorFn.CounterVisitorFn):stdgo.Error return t.visitFuncs(_f);
}
