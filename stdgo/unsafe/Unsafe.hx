package stdgo;

import stdgo.StdTypes.UIntptr;

typedef ArbitraryType = Dynamic;

@:noUsing
function sizeof(x:ArbitraryType):UIntptr {
    return 0;
}
@:noUsing
function offsetof(x:ArbitraryType):UIntptr {
    return 0;
}
@:noUsing
function alignof(x:ArbitraryType):UIntptr {
    return 0;
}