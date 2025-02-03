package stdgo.internal.coverage.slicereader;
class Reader_static_extension {
    static public function readString(_r:Reader, _len:haxe.Int64):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        final _len = (_len : stdgo.GoInt64);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.readString(_r, _len);
    }
    static public function readULEB128(_r:Reader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.readULEB128(_r);
    }
    static public function readUint64(_r:Reader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.readUint64(_r);
    }
    static public function readUint32(_r:Reader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.readUint32(_r);
    }
    static public function readUint8(_r:Reader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.readUint8(_r);
    }
    static public function offset(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.offset(_r);
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.slicereader.Slicereader_Reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
