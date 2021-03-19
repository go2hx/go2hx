package stdgo.internal;

import stdgo.errors.Errors.Error;

@:generic
typedef ErrorReturn<T> = {value:T, ?error:Error};
