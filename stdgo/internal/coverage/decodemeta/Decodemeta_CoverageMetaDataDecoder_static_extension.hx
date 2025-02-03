package stdgo.internal.coverage.decodemeta;
class CoverageMetaDataDecoder_static_extension {
    static public function readFunc(_d:CoverageMetaDataDecoder, _fidx:std.UInt, _f:stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        final _fidx = (_fidx : stdgo.GoUInt32);
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension.readFunc(_d, _fidx, _f);
    }
    static public function numFuncs(_d:CoverageMetaDataDecoder):std.UInt {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension.numFuncs(_d);
    }
    static public function modulePath(_d:CoverageMetaDataDecoder):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension.modulePath(_d);
    }
    static public function packageName(_d:CoverageMetaDataDecoder):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension.packageName(_d);
    }
    static public function packagePath(_d:CoverageMetaDataDecoder):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension.packagePath(_d);
    }
    static public function _readStringTable(_d:CoverageMetaDataDecoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension._readStringTable(_d);
    }
    static public function _readHeader(_d:CoverageMetaDataDecoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder_static_extension.CoverageMetaDataDecoder_static_extension._readHeader(_d);
    }
}
