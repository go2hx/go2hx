package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function _toolTags():stdgo.Slice<stdgo.GoString> {
        var _tags = stdgo._internal.internal.buildcfg.Buildcfg__experimentTags._experimentTags();
        _tags = (_tags.__append__(...(stdgo._internal.internal.buildcfg.Buildcfg__gogoarchTags._gogoarchTags() : Array<stdgo.GoString>)));
        return _tags;
    }
