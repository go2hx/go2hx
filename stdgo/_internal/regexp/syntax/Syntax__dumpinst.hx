package stdgo._internal.regexp.syntax;
function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):Void {
        {
            final __value__ = (@:checkr _i ?? throw "null pointer dereference").op;
            if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("alt -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__(), (", " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").arg)?.__copy__());
            } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("altmatch -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__(), (", " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").arg)?.__copy__());
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("cap " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").arg)?.__copy__(), (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("empty " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").arg)?.__copy__(), (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("match" : stdgo.GoString));
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("fail" : stdgo.GoString));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("nop -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                if ((@:checkr _i ?? throw "null pointer dereference").rune == null) {
                    stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("rune <nil>" : stdgo.GoString));
                };
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("rune " : stdgo.GoString), stdgo._internal.strconv.Strconv_quotetoascii.quoteToASCII(((@:checkr _i ?? throw "null pointer dereference").rune : stdgo.GoString)?.__copy__())?.__copy__());
                if ((((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("/i" : stdgo.GoString));
                };
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("rune1 " : stdgo.GoString), stdgo._internal.strconv.Strconv_quotetoascii.quoteToASCII(((@:checkr _i ?? throw "null pointer dereference").rune : stdgo.GoString)?.__copy__())?.__copy__(), (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("any -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("anynotnl -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw "null pointer dereference").out)?.__copy__());
            };
        };
    }
