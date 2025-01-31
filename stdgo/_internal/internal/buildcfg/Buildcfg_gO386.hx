package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
var gO386 : stdgo.GoString = stdgo._internal.internal.buildcfg.Buildcfg__envOr._envOr(("GO386" : stdgo.GoString), ("sse2" : stdgo.GoString));
