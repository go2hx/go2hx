package stdgo._internal.strconv;
function quoteToASCII(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strconv.Strconv__quotewith._quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), true, false)?.__copy__();
    }
