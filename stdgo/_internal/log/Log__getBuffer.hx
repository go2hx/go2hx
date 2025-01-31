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
function _getBuffer():stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> {
        var _p = (stdgo.Go.typeAssert((@:check2 stdgo._internal.log.Log__bufferPool._bufferPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((((_p : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _p;
    }
