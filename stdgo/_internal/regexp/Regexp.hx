package stdgo._internal.regexp;
@:keep var __init_go2hx__ = {
        try {
            for (__0 => _b in (("\\.+*?()|[]{}^$" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) {
                stdgo._internal.regexp.Regexp__specialBytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (stdgo._internal.regexp.Regexp__specialBytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
