package stdgo._internal.text.template.parse;
function _isAlphaNumeric(_r:stdgo.GoInt32):Bool {
        return ((_r == ((95 : stdgo.GoInt32)) || stdgo._internal.unicode.Unicode_isLetter.isLetter(_r) : Bool) || stdgo._internal.unicode.Unicode_isDigit.isDigit(_r) : Bool);
    }