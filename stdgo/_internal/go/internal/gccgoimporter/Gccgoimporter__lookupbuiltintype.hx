package stdgo._internal.go.internal.gccgoimporter;
function _lookupBuiltinType(_typ:stdgo.GoInt):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L908"
        return {
            var s:stdgo.GoArray<stdgo._internal.go.types.Types_type_.Type_> = new stdgo.GoArray<stdgo._internal.go.types.Types_type_.Type_>(22, 22, ...[for (i in 0 ... 22) (null : stdgo._internal.go.types.Types_type_.Type_)]);
            s[1] = stdgo._internal.go.types.Types_typ.typ[((3 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[2] = stdgo._internal.go.types.Types_typ.typ[((4 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[3] = stdgo._internal.go.types.Types_typ.typ[((5 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[4] = stdgo._internal.go.types.Types_typ.typ[((6 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[5] = stdgo._internal.go.types.Types_typ.typ[((8 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[6] = stdgo._internal.go.types.Types_typ.typ[((9 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[7] = stdgo._internal.go.types.Types_typ.typ[((10 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[8] = stdgo._internal.go.types.Types_typ.typ[((11 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[9] = stdgo._internal.go.types.Types_typ.typ[((13 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[10] = stdgo._internal.go.types.Types_typ.typ[((14 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[11] = stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[12] = stdgo._internal.go.types.Types_typ.typ[((7 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[13] = stdgo._internal.go.types.Types_typ.typ[((12 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[15] = stdgo._internal.go.types.Types_typ.typ[((1 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[16] = stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[17] = stdgo._internal.go.types.Types_typ.typ[((15 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[18] = stdgo._internal.go.types.Types_typ.typ[((16 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            s[19] = stdgo._internal.go.types.Types_universe.universe.lookup(("error" : stdgo.GoString)).type();
            s[20] = stdgo._internal.go.types.Types_universe.universe.lookup(("byte" : stdgo.GoString)).type();
            s[21] = stdgo._internal.go.types.Types_universe.universe.lookup(("rune" : stdgo.GoString)).type();
            s;
        }[(_typ : stdgo.GoInt)];
    }
