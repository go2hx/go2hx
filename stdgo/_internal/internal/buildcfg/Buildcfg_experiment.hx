package stdgo._internal.internal.buildcfg;
var experiment : stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags = ({
        var a = function():stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags {
            var __tmp__ = stdgo._internal.internal.buildcfg.Buildcfg_parsegoexperiment.parseGOEXPERIMENT(stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS?.__copy__(), stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH?.__copy__(), stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOEXPERIMENT" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__()), _flags:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.internal.buildcfg.Buildcfg_error.error = _err;
                return (new stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags() : stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags);
            };
            return (_flags : stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags)?.__copy__();
        };
        a();
    });
