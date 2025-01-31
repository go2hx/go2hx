package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function getgoextlinkenabled():stdgo.GoString {
        return stdgo._internal.internal.buildcfg.Buildcfg__envOr._envOr(("GO_EXTLINK_ENABLED" : stdgo.GoString), stdgo.Go.str()?.__copy__())?.__copy__();
    }
