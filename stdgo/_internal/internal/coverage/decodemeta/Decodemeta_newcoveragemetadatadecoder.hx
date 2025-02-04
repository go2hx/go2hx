package stdgo._internal.internal.coverage.decodemeta;
function newCoverageMetaDataDecoder(_b:stdgo.Slice<stdgo.GoUInt8>, _readonly:Bool):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>; var _1 : stdgo.Error; } {
        var _slr = stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, _readonly);
        var _x = (stdgo.Go.setRef(({ _r : _slr, _tmp : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (256 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder)) : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        {
            var _err = (@:check2r _x._readHeader() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err = (@:check2r _x._readStringTable() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
