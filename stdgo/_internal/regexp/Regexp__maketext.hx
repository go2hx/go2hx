package stdgo._internal.regexp;
function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L637"
        if (((stdgo._internal.regexp.Regexp__text._text.length) >= _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L638"
            return (stdgo._internal.regexp.Regexp__text._text.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo._internal.regexp.Regexp__text._text = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _x = (-1u32 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L642"
        for (_i => _ in stdgo._internal.regexp.Regexp__text._text) {
            _x = (_x + (_x) : stdgo.GoUInt32);
            _x = (_x ^ ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L645"
            if (((_x : stdgo.GoInt32) < (0 : stdgo.GoInt32) : Bool)) {
                _x = (_x ^ ((-2004316433u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L648"
            if ((_x % (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                stdgo._internal.regexp.Regexp__text._text[(_i : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            } else {
                stdgo._internal.regexp.Regexp__text._text[(_i : stdgo.GoInt)] = (((_x % (95u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L654"
        return stdgo._internal.regexp.Regexp__text._text;
    }
