package stdgo._internal.math.big;
function _makeAcc(_above:Bool):stdgo._internal.math.big.Big_Accuracy.Accuracy {
        if (_above) {
            return (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        };
        return (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
    }
