package stdgo._internal.internal.coverage.encodemeta;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
function newCoverageMetaFileWriter(_mfname:stdgo.GoString, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter> {
        var _r = (stdgo.Go.setRef(({ _mfname : _mfname?.__copy__(), _w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_w), _tmp : (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter)) : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter>);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._stab.initWriter();
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._stab.lookup(stdgo.Go.str()?.__copy__());
        return _r;
    }
