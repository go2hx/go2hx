package stdgo._internal.internal.testenv;
function cPUIsSlow():Bool {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString)) || __value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString)) || __value__ == (("wasm" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
