package stdgo._internal.internal.buildcfg;
@:keep @:allow(stdgo._internal.internal.buildcfg.Buildcfg.ExperimentFlags_asInterface) class ExperimentFlags_static_extension {
    @:keep
    static public function all( _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>):stdgo.Slice<stdgo.GoString> {
        @:recv var _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = _exp;
        return stdgo._internal.internal.buildcfg.Buildcfg__expList._expList((stdgo.Go.setRef(_exp.flags) : stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>), null, true);
    }
    @:keep
    static public function enabled( _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>):stdgo.Slice<stdgo.GoString> {
        @:recv var _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = _exp;
        return stdgo._internal.internal.buildcfg.Buildcfg__expList._expList((stdgo.Go.setRef(_exp.flags) : stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>), null, false);
    }
    @:keep
    static public function string( _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>):stdgo.GoString {
        @:recv var _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = _exp;
        return stdgo._internal.strings.Strings_join.join(stdgo._internal.internal.buildcfg.Buildcfg__expList._expList((stdgo.Go.setRef(_exp.flags) : stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>), (stdgo.Go.setRef(_exp._baseline) : stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>), false), ("," : stdgo.GoString))?.__copy__();
    }
}
