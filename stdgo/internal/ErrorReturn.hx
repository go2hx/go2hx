package stdgo.internal;

import stdgo.StdGoTypes.Error;

@:generic
typedef ErrorReturn<T> = {value:T, ?error:Error};
