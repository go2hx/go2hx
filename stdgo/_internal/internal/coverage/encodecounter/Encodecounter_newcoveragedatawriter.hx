package stdgo._internal.internal.coverage.encodecounter;
function newCoverageDataWriter(_w:stdgo._internal.io.Io_writer.Writer, _flav:stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor):stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter> {
        var _r = (stdgo.Go.setRef(({ _stab : (stdgo.Go.setRef((new stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer() : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer)) : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>), _w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_w), _tmp : (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _cflavor : _flav } : stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter)) : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._stab.initWriter();
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._stab.lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        return _r;
    }
