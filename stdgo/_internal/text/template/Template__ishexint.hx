package stdgo._internal.text.template;
function _isHexInt(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L572"
        return (((((_s.length) > (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool) && !stdgo._internal.strings.Strings_containsany.containsAny(_s?.__copy__(), ("pP" : stdgo.GoString)) : Bool);
    }
