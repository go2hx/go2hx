package stdgo._internal.math;
function erfinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((stdgo._internal.math.Math_isnan.isNaN(_x) || (_x <= (-1 : stdgo.GoFloat64) : Bool) : Bool) || (_x >= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
            if (((_x == (-1 : stdgo.GoFloat64)) || (_x == (1 : stdgo.GoFloat64)) : Bool)) {
                return stdgo._internal.math.Math_inf.inf((_x : stdgo.GoInt));
            };
            return stdgo._internal.math.Math_nan.naN();
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _ans:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x <= (0.85 : stdgo.GoFloat64) : Bool)) {
            var _r = ((0.180625 : stdgo.GoFloat64) - (((0.25 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _z1 = (((((((((((((((((((((887.0940696254552 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (11819.493347062295 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (23782.041382114385 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (16235.862515167575 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (4854.886889384388 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (697.062665343896 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (47.07268811238398 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.1975323115670913 : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _z2 = (((((((((((((((((((((5226.495278852854 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (28729.085735721943 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (39307.89580009271 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (21213.794301586597 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (5394.196021424751 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (687.1870074920579 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (42.31333070160091 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _ans = (((_x * _z1 : stdgo.GoFloat64)) / _z2 : stdgo.GoFloat64);
        } else {
            var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z2 = __1, _z1 = __0;
            var _r = (stdgo._internal.math.Math_sqrt.sqrt(((0.6931471805599453 : stdgo.GoFloat64) - stdgo._internal.math.Math_log.log(((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if ((_r <= (5 : stdgo.GoFloat64) : Bool)) {
                _r = (_r - (1.6 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z1 = (((((((((((((((((((((0.0007745450142783414 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (0.022723844989269184 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.2417807251774506 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.2704582524523684 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (3.6478483247632045 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (5.769497221460691 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (4.630337846156546 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.4234371107496835 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z2 = (((((((((((((((((((((1.4859850019840355e-09 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (0.0007744145906515771 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.021494160384252878 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.2094506521051275 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.9754783200178743 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (2.3707661626024534 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (2.9036514445419948 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.4142135623730951 : stdgo.GoFloat64) : stdgo.GoFloat64);
            } else {
                _r = (_r - (5 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z1 = (((((((((((((((((((((2.0103343992922881e-07 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (2.7115555687434876e-05 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.0012426609473880784 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.026532189526576124 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.29656057182850487 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.7848265399172913 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (5.463784911164114 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (6.657904643501103 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z2 = (((((((((((((((((((((2.8910246058729655e-15 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (2.010321207683943e-07 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (2.6110884050805935e-05 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.0011128009970788597 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.02103693768272069 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.19364809469506591 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.8482908416595164 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.4142135623730951 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            _ans = (_z1 / _z2 : stdgo.GoFloat64);
        };
        if (_sign) {
            return -_ans;
        };
        return _ans;
    }
