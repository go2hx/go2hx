package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
var experiment : stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags = ({
        var a = function():stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags {
            var __tmp__ = stdgo._internal.internal.buildcfg.Buildcfg_parseGOEXPERIMENT.parseGOEXPERIMENT(stdgo._internal.internal.buildcfg.Buildcfg_gOOS.gOOS?.__copy__(), stdgo._internal.internal.buildcfg.Buildcfg_gOARCH.gOARCH?.__copy__(), stdgo._internal.internal.buildcfg.Buildcfg__envOr._envOr(("GOEXPERIMENT" : stdgo.GoString), stdgo.Go.str()?.__copy__())?.__copy__()), _flags:stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.internal.buildcfg.Buildcfg_error.error = _err;
                return (new stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags() : stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags);
            };
            return (_flags : stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags)?.__copy__();
        };
        a();
    });
