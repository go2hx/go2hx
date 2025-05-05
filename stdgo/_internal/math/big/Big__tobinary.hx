package stdgo._internal.math.big;
function _toBinary(_x:stdgo.GoInt64):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L340"
        return stdgo._internal.strconv.Strconv_formatint.formatInt(_x, (2 : stdgo.GoInt))?.__copy__();
    }
