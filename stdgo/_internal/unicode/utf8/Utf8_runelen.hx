package stdgo._internal.unicode.utf8;
function runeLen(_r:stdgo.GoInt32):stdgo.GoInt {
        if ((_r < (0 : stdgo.GoInt32) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            return (1 : stdgo.GoInt);
        } else if ((_r <= (2047 : stdgo.GoInt32) : Bool)) {
            return (2 : stdgo.GoInt);
        } else if ((((55296 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57343 : stdgo.GoInt32) : Bool) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_r <= (65535 : stdgo.GoInt32) : Bool)) {
            return (3 : stdgo.GoInt);
        } else if ((_r <= (1114111 : stdgo.GoInt32) : Bool)) {
            return (4 : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
