package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.Segment_asInterface) class Segment_static_extension {
    @:keep
    static public function open( _s:stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> = _s;
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_s._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:keep
    static public function data( _s:stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> = _s;
        return stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(stdgo.Go.asInterface(_s._sr), _s.segmentHeader.filesz, (0i64 : stdgo.GoInt64));
    }
    @:embedded
    public static function readAt( __self__:stdgo._internal.debug.macho.Macho_Segment.Segment, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_p, _off);
    @:embedded
    public static function raw( __self__:stdgo._internal.debug.macho.Macho_Segment.Segment):stdgo.Slice<stdgo.GoUInt8> return __self__.raw();
}
