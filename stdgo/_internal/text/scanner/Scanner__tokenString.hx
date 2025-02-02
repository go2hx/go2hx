package stdgo._internal.text.scanner;
var _tokenString : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((-1 : stdgo.GoInt32), ("EOF" : stdgo.GoString));
x.set((-2 : stdgo.GoInt32), ("Ident" : stdgo.GoString));
x.set((-3 : stdgo.GoInt32), ("Int" : stdgo.GoString));
x.set((-4 : stdgo.GoInt32), ("Float" : stdgo.GoString));
x.set((-5 : stdgo.GoInt32), ("Char" : stdgo.GoString));
x.set((-6 : stdgo.GoInt32), ("String" : stdgo.GoString));
x.set((-7 : stdgo.GoInt32), ("RawString" : stdgo.GoString));
x.set((-8 : stdgo.GoInt32), ("Comment" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
