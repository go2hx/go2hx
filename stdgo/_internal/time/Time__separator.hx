package stdgo._internal.time;
function _separator(_std:stdgo.GoInt):stdgo.GoUInt8 {
        if (((_std >> (28i64 : stdgo.GoUInt64) : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            return (46 : stdgo.GoUInt8);
        };
        return (44 : stdgo.GoUInt8);
    }
