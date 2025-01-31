package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function _envOr(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.GoString {
        {
            var _x = (stdgo._internal.os.Os_getenv.getenv(_key?.__copy__())?.__copy__() : stdgo.GoString);
            if (_x != (stdgo.Go.str())) {
                return _x?.__copy__();
            };
        };
        return _value?.__copy__();
    }
