package stdgo._internal.internal.testenv;
function cPUIsSlow():Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L432"
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString)) || __value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString)) || __value__ == (("wasm" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L434"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L436"
        return false;
    }
