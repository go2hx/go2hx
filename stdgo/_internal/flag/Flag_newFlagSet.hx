package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling):stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> {
        var _f = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _errorHandling : _errorHandling } : stdgo._internal.flag.Flag_FlagSet.FlagSet)) : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        (@:checkr _f ?? throw "null pointer dereference").usage = @:check2r _f._defaultUsage;
        return _f;
    }
