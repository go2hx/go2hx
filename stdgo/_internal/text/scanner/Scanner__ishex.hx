package stdgo._internal.text.scanner;
function _isHex(_ch:stdgo.GoInt32):Bool {
        return ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= stdgo._internal.text.scanner.Scanner__lower._lower(_ch) : Bool) && (stdgo._internal.text.scanner.Scanner__lower._lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
