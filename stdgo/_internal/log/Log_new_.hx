package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
function new_(_out:stdgo._internal.io.Io_Writer.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.log.Log_Logger.Logger)) : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        @:check2r _l.setOutput(_out);
        @:check2r _l.setPrefix(_prefix?.__copy__());
        @:check2r _l.setFlags(_flag);
        return _l;
    }
