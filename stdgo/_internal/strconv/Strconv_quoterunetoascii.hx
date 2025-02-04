package stdgo._internal.strconv;
function quoteRuneToASCII(_r:stdgo.GoInt32):stdgo.GoString {
        return stdgo._internal.strconv.Strconv__quoterunewith._quoteRuneWith(_r, (39 : stdgo.GoUInt8), true, false)?.__copy__();
    }
