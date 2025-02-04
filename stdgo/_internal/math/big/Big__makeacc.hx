package stdgo._internal.math.big;
function _makeAcc(_above:Bool):stdgo._internal.math.big.Big_accuracy.Accuracy {
        if (_above) {
            return (1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        };
        return (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
    }
