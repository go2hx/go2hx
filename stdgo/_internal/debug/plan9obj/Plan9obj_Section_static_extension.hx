package stdgo._internal.debug.plan9obj;
@:keep @:allow(stdgo._internal.debug.plan9obj.Plan9obj.Section_asInterface) class Section_static_extension {
    @:keep
    static public function open( _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section> = _s;
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_s._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:keep
    static public function data( _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section> = _s;
        return stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(stdgo.Go.asInterface(_s._sr), (_s.sectionHeader.size : stdgo.GoUInt64), (0i64 : stdgo.GoInt64));
    }
    @:embedded
    public static function readAt( __self__:stdgo._internal.debug.plan9obj.Plan9obj_Section.Section, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_p, _off);
}
