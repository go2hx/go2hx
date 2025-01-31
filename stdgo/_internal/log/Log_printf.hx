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
function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:check2r stdgo._internal.log.Log__std._std._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            return stdgo._internal.fmt.Fmt_appendf.appendf(_b, _format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        });
    }
