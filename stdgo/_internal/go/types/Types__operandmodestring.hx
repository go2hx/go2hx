package stdgo._internal.go.types;
var _operandModeString : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(11, 11, ...[for (i in 0 ... 11) ""]);
        s[0] = ("invalid operand" : stdgo.GoString);
        s[1] = ("no value" : stdgo.GoString);
        s[2] = ("built-in" : stdgo.GoString);
        s[3] = ("type" : stdgo.GoString);
        s[4] = ("constant" : stdgo.GoString);
        s[5] = ("variable" : stdgo.GoString);
        s[6] = ("map index expression" : stdgo.GoString);
        s[7] = ("value" : stdgo.GoString);
        s[8] = ("comma, ok expression" : stdgo.GoString);
        s[9] = ("comma, error expression" : stdgo.GoString);
        s[10] = ("cgo function" : stdgo.GoString);
        s;
    };
