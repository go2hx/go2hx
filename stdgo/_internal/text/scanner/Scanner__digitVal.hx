package stdgo._internal.text.scanner;
function _digitVal(_ch:stdgo.GoInt32):stdgo.GoInt {
        if ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        } else if ((((97 : stdgo.GoInt32) <= stdgo._internal.text.scanner.Scanner__lower._lower(_ch) : Bool) && (stdgo._internal.text.scanner.Scanner__lower._lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return (((stdgo._internal.text.scanner.Scanner__lower._lower(_ch) - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        };
        return (16 : stdgo.GoInt);
    }
