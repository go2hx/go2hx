package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function _experimentTags():stdgo.Slice<stdgo.GoString> {
        var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _exp in @:check2 stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment.enabled()) {
            _list = (_list.__append__((("goexperiment." : stdgo.GoString) + _exp?.__copy__() : stdgo.GoString)?.__copy__()));
        };
        return _list;
    }
