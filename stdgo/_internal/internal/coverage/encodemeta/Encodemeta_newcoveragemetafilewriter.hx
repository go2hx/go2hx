package stdgo._internal.internal.coverage.encodemeta;
function newCoverageMetaFileWriter(_mfname:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter> {
        var _r = (stdgo.Go.setRef(({ _mfname : _mfname?.__copy__(), _w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_w), _tmp : (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter)) : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter>);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._stab.initWriter();
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._stab.lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        return _r;
    }
