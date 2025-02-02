package stdgo._internal.internal.buildcfg;
@:keep @:allow(stdgo._internal.internal.buildcfg.Buildcfg.ExperimentFlags_asInterface) class ExperimentFlags_static_extension {
    @:keep
    @:tdfield
    static public function all( _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>):stdgo.Slice<stdgo.GoString> {
        @:recv var _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = _exp;
        return stdgo._internal.internal.buildcfg.Buildcfg__expList._expList((stdgo.Go.setRef((@:checkr _exp ?? throw "null pointer dereference").flags) : stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags>), null, true);
    }
    @:keep
    @:tdfield
    static public function enabled( _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>):stdgo.Slice<stdgo.GoString> {
        @:recv var _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = _exp;
        return stdgo._internal.internal.buildcfg.Buildcfg__expList._expList((stdgo.Go.setRef((@:checkr _exp ?? throw "null pointer dereference").flags) : stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags>), null, false);
    }
    @:keep
    @:tdfield
    static public function string( _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>):stdgo.GoString {
        @:recv var _exp:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = _exp;
        return stdgo._internal.strings.Strings_join.join(stdgo._internal.internal.buildcfg.Buildcfg__expList._expList((stdgo.Go.setRef((@:checkr _exp ?? throw "null pointer dereference").flags) : stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags>), (stdgo.Go.setRef((@:checkr _exp ?? throw "null pointer dereference")._baseline) : stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags>), false), ("," : stdgo.GoString))?.__copy__();
    }
}
