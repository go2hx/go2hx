package stdgo.runtime;
class ScavengeIndex_static_extension {
    static public function setNoHugePage(_s:ScavengeIndex, _ci:ChunkIdx):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.setNoHugePage(_s, _ci);
    }
    static public function setEmpty(_s:ScavengeIndex, _ci:ChunkIdx):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.setEmpty(_s, _ci);
    }
    static public function nextGen(_s:ScavengeIndex):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.nextGen(_s);
    }
    static public function resetSearchAddrs(_s:ScavengeIndex):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.resetSearchAddrs(_s);
    }
    static public function freeRange(_s:ScavengeIndex, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        final _base = (_base : stdgo.GoUIntptr);
        final _limit = (_limit : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.freeRange(_s, _base, _limit);
    }
    static public function allocRange(_s:ScavengeIndex, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        final _base = (_base : stdgo.GoUIntptr);
        final _limit = (_limit : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.allocRange(_s, _base, _limit);
    }
    static public function find(_s:ScavengeIndex, _force:Bool):stdgo.Tuple<ChunkIdx, std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>);
        return {
            final obj = stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.find(_s, _force);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
