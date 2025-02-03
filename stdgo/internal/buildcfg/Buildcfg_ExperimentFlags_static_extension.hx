package stdgo.internal.buildcfg;
class ExperimentFlags_static_extension {
    static public function all(_exp:ExperimentFlags):Array<String> {
        final _exp = (_exp : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>);
        return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension.all(_exp)) i];
    }
    static public function enabled(_exp:ExperimentFlags):Array<String> {
        final _exp = (_exp : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>);
        return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension.enabled(_exp)) i];
    }
    static public function string(_exp:ExperimentFlags):String {
        final _exp = (_exp : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>);
        return stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension.string(_exp);
    }
}
