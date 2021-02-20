package stdgo.internal;
import stdgo.Errors;

@:generic
typedef ErrorReturn<T> = {value:T, ?error:Error};
