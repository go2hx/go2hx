package stdgo._internal.internal.coverage.encodecounter;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.internal.coverage.Coverage;
function newCoverageDataWriter(_w:stdgo._internal.io.Io_Writer.Writer, _flav:stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor):stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter> {
        var _r = (stdgo.Go.setRef(({ _stab : (stdgo.Go.setRef((new stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer() : stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer)) : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer>), _w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_w), _tmp : (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _cflavor : _flav } : stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter)) : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._stab.initWriter();
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._stab.lookup(stdgo.Go.str()?.__copy__());
        return _r;
    }
