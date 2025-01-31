package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.rand.Rand__jsCrypto._jsCrypto, __tmp__1 = stdgo._internal.crypto.rand.Rand__uint8Array._uint8Array;
            stdgo._internal.crypto.rand.Rand_reader.reader = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.rand.Rand_T_reader.T_reader() : stdgo._internal.crypto.rand.Rand_T_reader.T_reader)) : stdgo.Ref<stdgo._internal.crypto.rand.Rand_T_reader.T_reader>));
            stdgo._internal.crypto.rand.Rand__batchedGetRandom._batchedGetRandom = stdgo._internal.crypto.rand.Rand__batched._batched(stdgo._internal.crypto.rand.Rand__getRandom._getRandom, (65536 : stdgo.GoInt));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
