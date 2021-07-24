package stdgo.math.rand;

import stdgo.StdGoTypes.GoInt32;

function int31n(n:GoInt32):GoInt32
    return Std.random(n.toBasic());
function int31():GoInt32
    return int31n(2147483647);