package stdgo.unsafe;

import stdgo.StdTypes.UIntptr;

typedef ArbitraryType = Dynamic;


function sizeof(x:ArbitraryType):UIntptr {
    return 0;
}

function offsetof(x:ArbitraryType):UIntptr {
    return 0;
}

function alignof(x:ArbitraryType):UIntptr {
    return 0;
}