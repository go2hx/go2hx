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
@:keep @:allow(stdgo._internal.log.Log.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.log.Log_T_discard.T_discard, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.log.Log_T_discard.T_discard = _?.__copy__();
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
