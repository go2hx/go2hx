package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function _gomips():stdgo.GoString {
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envOr._envOr(("GOMIPS" : stdgo.GoString), ("hardfloat" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("hardfloat" : stdgo.GoString)) || __value__ == (("softfloat" : stdgo.GoString))) {
                    return _v?.__copy__();
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOMIPS: must be hardfloat, softfloat" : stdgo.GoString));
        return ("hardfloat" : stdgo.GoString);
    }
