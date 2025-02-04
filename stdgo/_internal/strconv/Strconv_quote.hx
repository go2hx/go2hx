package stdgo._internal.strconv;
function quote(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strconv.Strconv__quotewith._quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), false, false)?.__copy__();
    }
