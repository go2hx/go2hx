package stdgo.io;
class OffsetWriter_static_extension {
    static public function seek(_o:OffsetWriter, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_OffsetWriter_static_extension.OffsetWriter_static_extension.seek(_o, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(_o:OffsetWriter, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_OffsetWriter_static_extension.OffsetWriter_static_extension.writeAt(_o, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_o:OffsetWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_OffsetWriter_static_extension.OffsetWriter_static_extension.write(_o, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
