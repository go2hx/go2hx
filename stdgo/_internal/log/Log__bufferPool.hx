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
var _bufferPool : stdgo._internal.sync.Sync_Pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
    } } : stdgo._internal.sync.Sync_Pool.Pool);
