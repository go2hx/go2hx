package stdgo._internal.debug.plan9obj;
@:keep @:allow(stdgo._internal.debug.plan9obj.Plan9obj.Section_asInterface) class Section_static_extension {
    @:keep
    @:tdfield
    static public function open( _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>):stdgo._internal.io.Io_readseeker.ReadSeeker {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section> = _s;
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L73"
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:keep
    @:tdfield
    static public function data( _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section> = _s;
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L69"
        return stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoUInt64), (0i64 : stdgo.GoInt64));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.debug.plan9obj.Plan9obj_section.Section, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
}
