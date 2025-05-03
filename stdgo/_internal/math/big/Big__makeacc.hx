package stdgo._internal.math.big;
function _makeAcc(_above:Bool):stdgo._internal.math.big.Big_accuracy.Accuracy {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L191"
        if (_above) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L192"
            return (1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L194"
        return (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
    }
