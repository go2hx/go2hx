package stdgo._internal.text.template;
function _isRuneInt(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L568"
        return (((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (39 : stdgo.GoUInt8)) : Bool);
    }
