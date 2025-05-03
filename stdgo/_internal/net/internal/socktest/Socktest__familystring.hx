package stdgo._internal.net.internal.socktest;
function _familyString(_family:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L15"
        {
            final __value__ = _family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L17"
                return ("inet4" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L19"
                return ("inet6" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L21"
                return ("local" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L23"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_family))?.__copy__();
            };
        };
    }
