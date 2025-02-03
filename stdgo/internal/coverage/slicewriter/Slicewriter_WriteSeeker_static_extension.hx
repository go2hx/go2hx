package stdgo.internal.coverage.slicewriter;
class WriteSeeker_static_extension {
    static public function read(_sws:WriteSeeker, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker_static_extension.WriteSeeker_static_extension.read(_sws, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytesWritten(_sws:WriteSeeker):Array<std.UInt> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return [for (i in stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker_static_extension.WriteSeeker_static_extension.bytesWritten(_sws)) i];
    }
    static public function seek(_sws:WriteSeeker, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker_static_extension.WriteSeeker_static_extension.seek(_sws, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_sws:WriteSeeker, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker_static_extension.WriteSeeker_static_extension.write(_sws, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
