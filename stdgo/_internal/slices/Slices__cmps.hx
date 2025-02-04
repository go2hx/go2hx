package stdgo._internal.slices;
function _cmpS(_s1:stdgo._internal.slices.Slices_s.S, _s2:stdgo._internal.slices.Slices_s.S):stdgo.GoInt {
        return stdgo._internal.cmp.Cmp_compare.compare(_s1._a, _s2._a);
    }
