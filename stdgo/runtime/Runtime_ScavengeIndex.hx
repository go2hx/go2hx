package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.ScavengeIndex_static_extension) abstract ScavengeIndex(stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex) from stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex to stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex {
    public function new() this = new stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
