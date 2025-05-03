package stdgo._internal.crypto.rand;
function _getRandom(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _a = (stdgo._internal.crypto.rand.Rand__uint8array._uint8Array.new_(stdgo.Go.toInterface((_b.length)))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_js.go#L39"
        stdgo._internal.crypto.rand.Rand__jscrypto._jsCrypto.call(("getRandomValues" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_js.go#L40"
        stdgo._internal.syscall.js.Js_copybytestogo.copyBytesToGo(_b, _a?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_js.go#L41"
        return (null : stdgo.Error);
    }
