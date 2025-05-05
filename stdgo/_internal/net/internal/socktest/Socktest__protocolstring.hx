package stdgo._internal.net.internal.socktest;
function _protocolString(_proto:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L48"
        {
            final __value__ = _proto;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L50"
                return ("default" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L52"
                return ("tcp" : stdgo.GoString);
            } else if (__value__ == ((17 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L54"
                return ("udp" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_posix.go#L56"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_proto))?.__copy__();
            };
        };
    }
