package stdgo.debug.macho;
class Segment_static_extension {
    static public function open(_s:Segment):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>);
        return stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.open(_s);
    }
    static public function data(_s:Segment):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.macho.Macho_Segment.Segment, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function raw(__self__:stdgo._internal.debug.macho.Macho_Segment.Segment):Array<std.UInt> {
        return [for (i in stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension.raw(__self__)) i];
    }
}
