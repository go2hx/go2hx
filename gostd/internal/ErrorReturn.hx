package gostd.internal;

@:generic
typedef ErrorReturn<T> = {value:T, ?error:Errors};