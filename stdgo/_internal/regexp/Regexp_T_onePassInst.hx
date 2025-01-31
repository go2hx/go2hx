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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension) class T_onePassInst {
    @:embedded
    public var inst : stdgo._internal.regexp.syntax.Syntax_Inst.Inst = ({} : stdgo._internal.regexp.syntax.Syntax_Inst.Inst);
    public var next : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?inst:stdgo._internal.regexp.syntax.Syntax_Inst.Inst, ?next:stdgo.Slice<stdgo.GoUInt32>) {
        if (inst != null) this.inst = inst;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var matchEmptyWidth(get, never) : (stdgo.GoInt32, stdgo.GoInt32) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_matchEmptyWidth():(stdgo.GoInt32, stdgo.GoInt32) -> Bool return @:check32 this.inst.matchEmptyWidth;
    public var matchRune(get, never) : stdgo.GoInt32 -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_matchRune():stdgo.GoInt32 -> Bool return @:check32 this.inst.matchRune;
    public var matchRunePos(get, never) : stdgo.GoInt32 -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_matchRunePos():stdgo.GoInt32 -> stdgo.GoInt return @:check32 this.inst.matchRunePos;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.inst.string;
    public var _op(get, never) : () -> stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp;
    @:embedded
    @:embeddededffieldsffun
    public function get__op():() -> stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return @:check32 this.inst._op;
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
}
