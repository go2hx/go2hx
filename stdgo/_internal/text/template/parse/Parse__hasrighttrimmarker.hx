package stdgo._internal.text.template.parse;
function _hasRightTrimMarker(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L685"
        return ((((_s.length) >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.text.template.parse.Parse__isspace._isSpace((_s[(0 : stdgo.GoInt)] : stdgo.GoInt32)) : Bool) && (_s[(1 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool);
    }
