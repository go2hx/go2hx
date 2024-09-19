package stdgo._internal.internal.itoa;
function itoa(_val:stdgo.GoInt):stdgo.GoString {
        if ((_val < (0 : stdgo.GoInt) : Bool)) {
            return (("-" : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((-_val : stdgo.GoUInt))?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_val : stdgo.GoUInt))?.__copy__();
    }
