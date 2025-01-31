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
function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        var _s = (stdgo._internal.fmt.Fmt_sprintln.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        @:check2r stdgo._internal.log.Log__std._std.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
