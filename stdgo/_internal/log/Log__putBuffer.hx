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
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void {
        if (((_p : stdgo.Slice<stdgo.GoUInt8>).capacity > (65536 : stdgo.GoInt) : Bool)) {
            (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        @:check2 stdgo._internal.log.Log__bufferPool._bufferPool.put(stdgo.Go.toInterface(_p));
    }
