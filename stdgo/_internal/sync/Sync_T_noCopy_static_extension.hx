package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.sync.Sync.T_noCopy_asInterface) class T_noCopy_static_extension {
    @:keep
    @:tdfield
    static public function unlock( _:stdgo.Ref<stdgo._internal.sync.Sync_T_noCopy.T_noCopy>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.sync.Sync_T_noCopy.T_noCopy> = _;
    }
    @:keep
    @:tdfield
    static public function lock( _:stdgo.Ref<stdgo._internal.sync.Sync_T_noCopy.T_noCopy>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.sync.Sync_T_noCopy.T_noCopy> = _;
    }
}
