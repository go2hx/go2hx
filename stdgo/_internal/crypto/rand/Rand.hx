package stdgo._internal.crypto.rand;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.rand.Rand__jsCrypto._jsCrypto, __tmp__1 = stdgo._internal.crypto.rand.Rand__uint8Array._uint8Array;
            stdgo._internal.crypto.rand.Rand_reader.reader = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.rand.Rand_T_reader.T_reader() : stdgo._internal.crypto.rand.Rand_T_reader.T_reader)) : stdgo.Ref<stdgo._internal.crypto.rand.Rand_T_reader.T_reader>));
            stdgo._internal.crypto.rand.Rand__batchedGetRandom._batchedGetRandom = stdgo._internal.crypto.rand.Rand__batched._batched(stdgo._internal.crypto.rand.Rand__getRandom._getRandom, (65536 : stdgo.GoInt));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
