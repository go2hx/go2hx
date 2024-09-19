package stdgo._internal.text.scanner;
function _isDecimal(_ch:stdgo.GoInt32):Bool {
        return (((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool);
    }
