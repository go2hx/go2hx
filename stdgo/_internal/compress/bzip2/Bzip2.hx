package stdgo._internal.compress.bzip2;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.compress.bzip2.Bzip2__digits._digits, __tmp__1 = stdgo._internal.compress.bzip2.Bzip2__newton._newton, __tmp__2 = stdgo._internal.compress.bzip2.Bzip2__random._random;
            {};
            for (_i => _ in stdgo._internal.compress.bzip2.Bzip2__crctab._crctab) {
                var _crc = ((_i : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (8 : stdgo.GoInt) : Bool)) {
                        if ((_crc & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                            _crc = (((_crc << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) ^ (79764919u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        } else {
                            _crc = (_crc << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                        };
                        _j++;
                    };
                };
                stdgo._internal.compress.bzip2.Bzip2__crctab._crctab[(_i : stdgo.GoInt)] = _crc;
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
