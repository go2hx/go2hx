package stdgo._internal.compress.flate;
function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32 {
        if ((_off < (stdgo._internal.compress.flate.Flate__offsetcodes._offsetCodes.length : stdgo.GoUInt32) : Bool)) {
            return stdgo._internal.compress.flate.Flate__offsetcodes._offsetCodes[(_off : stdgo.GoInt)];
        };
        if (((_off >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt32) < (stdgo._internal.compress.flate.Flate__offsetcodes._offsetCodes.length : stdgo.GoUInt32) : Bool)) {
            return (stdgo._internal.compress.flate.Flate__offsetcodes._offsetCodes[((_off >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] + (14u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        return (stdgo._internal.compress.flate.Flate__offsetcodes._offsetCodes[((_off >> (14i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] + (28u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
