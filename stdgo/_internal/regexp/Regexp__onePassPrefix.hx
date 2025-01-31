package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } {
        var _prefix = ("" : stdgo.GoString), _complete = false, _pc = (0 : stdgo.GoUInt32);
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        if ((((@:checkr _i ?? throw "null pointer dereference").op != (3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || (((((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) == (0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : (@:checkr _i ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)), _2 : ((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                _pc = __tmp__._2;
                __tmp__;
            };
        };
        _pc = (@:checkr _i ?? throw "null pointer dereference").out;
        _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        while ((@:checkr _i ?? throw "null pointer dereference").op == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
            _pc = (@:checkr _i ?? throw "null pointer dereference").out;
            _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        };
        if (((stdgo._internal.regexp.Regexp__iop._iop(_i) != (7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || ((@:checkr _i ?? throw "null pointer dereference").rune.length != (1 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : (@:checkr _i ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)), _2 : ((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                _pc = __tmp__._2;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        while ((((stdgo._internal.regexp.Regexp__iop._iop(_i) == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) && ((@:checkr _i ?? throw "null pointer dereference").rune.length) == ((1 : stdgo.GoInt)) : Bool) && (((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && ((@:checkr _i ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            @:check2 _buf.writeRune((@:checkr _i ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]);
            {
                final __tmp__0 = (@:checkr _i ?? throw "null pointer dereference").out;
                final __tmp__1 = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[((@:checkr _i ?? throw "null pointer dereference").out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                _pc = __tmp__0;
                _i = __tmp__1;
            };
        };
        if ((((@:checkr _i ?? throw "null pointer dereference").op == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) && (((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference").inst[((@:checkr _i ?? throw "null pointer dereference").out : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) : Bool)) {
            _complete = true;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } = { _0 : (@:check2 _buf.string() : stdgo.GoString)?.__copy__(), _1 : _complete, _2 : _pc };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            _pc = __tmp__._2;
            __tmp__;
        };
    }
