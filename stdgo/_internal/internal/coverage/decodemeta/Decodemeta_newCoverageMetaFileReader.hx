package stdgo._internal.internal.coverage.decodemeta;
import stdgo._internal.internal.coverage.slicereader.Slicereader;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.internal.coverage.stringtab.Stringtab;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.io.Io;
function newCoverageMetaFileReader(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _fileView:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>; var _1 : stdgo.Error; } {
        var _r = (stdgo.Go.setRef(({ _f : _f, _fileView : _fileView, _tmp : (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader)) : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader>);
        {
            var _err = (@:check2r _r._readFileHeader() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _r, _1 : (null : stdgo.Error) };
    }
