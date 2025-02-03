package stdgo.io;
class SectionReader_static_extension {
    static public function size(_s:SectionReader):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        return stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.size(_s);
    }
    static public function readAt(_s:SectionReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.readAt(_s, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_s:SectionReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.seek(_s, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_s:SectionReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.read(_s, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
