package stdgo._internal.internal.coverage.decodemeta;
function newCoverageMetaFileReader(_f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _fileView:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>; var _1 : stdgo.Error; } {
        var _r = (stdgo.Go.setRef(({ _f : _f, _fileView : _fileView, _tmp : (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader)) : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decodefile.go#L52"
        {
            var _err = (_r._readFileHeader() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decodefile.go#L53"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decodefile.go#L55"
        return { _0 : _r, _1 : (null : stdgo.Error) };
    }
