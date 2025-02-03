package stdgo.internal.coverage.encodecounter;
class CoverageDataWriter_static_extension {
    static public function _writeFooter(_cfw:CoverageDataWriter):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeFooter(_cfw);
    }
    static public function _writeCounters(_cfw:CoverageDataWriter, _visitor:CounterVisitor, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeCounters(_cfw, _visitor, _ws);
    }
    static public function _writeBytes(_cfw:CoverageDataWriter, _b:Array<std.UInt>):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeBytes(_cfw, _b);
    }
    static public function _writeHeader(_cfw:CoverageDataWriter, _metaFileHash:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _metaFileHash = ([for (i in _metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeHeader(_cfw, _metaFileHash);
    }
    static public function appendSegment(_cfw:CoverageDataWriter, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:CounterVisitor):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _args = (_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension.appendSegment(_cfw, _args, _visitor);
    }
    static public function _writeSegmentPreamble(_cfw:CoverageDataWriter, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _args = (_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeSegmentPreamble(_cfw, _args, _ws);
    }
    static public function _patchSegmentHeader(_cfw:CoverageDataWriter, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._patchSegmentHeader(_cfw, _ws);
    }
    static public function write(_cfw:CoverageDataWriter, _metaFileHash:haxe.ds.Vector<std.UInt>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:CounterVisitor):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _metaFileHash = ([for (i in _metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _args = (_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension.write(_cfw, _metaFileHash, _args, _visitor);
    }
}
