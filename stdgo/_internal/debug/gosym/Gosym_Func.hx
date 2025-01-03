package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_Func_static_extension.Func_static_extension) class Func {
    public var entry : stdgo.GoUInt64 = 0;
    @:embedded
    public var sym : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
    public var end : stdgo.GoUInt64 = 0;
    public var params : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
    public var locals : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
    public var frameSize : stdgo.GoInt = 0;
    public var lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
    public var obj : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
    public function new(?entry:stdgo.GoUInt64, ?sym:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>, ?end:stdgo.GoUInt64, ?params:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>, ?locals:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>, ?frameSize:stdgo.GoInt, ?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, ?obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>) {
        if (entry != null) this.entry = entry;
        if (sym != null) this.sym = sym;
        if (end != null) this.end = end;
        if (params != null) this.params = params;
        if (locals != null) this.locals = locals;
        if (frameSize != null) this.frameSize = frameSize;
        if (lineTable != null) this.lineTable = lineTable;
        if (obj != null) this.obj = obj;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var baseName(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_baseName():() -> stdgo.GoString return @:check3 (this.sym ?? throw "null pointer derefrence").baseName;
    public var packageName(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_packageName():() -> stdgo.GoString return @:check3 (this.sym ?? throw "null pointer derefrence").packageName;
    public var receiverName(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_receiverName():() -> stdgo.GoString return @:check3 (this.sym ?? throw "null pointer derefrence").receiverName;
    public var static_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_static_():() -> Bool return @:check3 (this.sym ?? throw "null pointer derefrence").static_;
    public var _nameWithoutInst(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__nameWithoutInst():() -> stdgo.GoString return @:check3 (this.sym ?? throw "null pointer derefrence")._nameWithoutInst;
    public function __copy__() {
        return new Func(entry, sym, end, params, locals, frameSize, lineTable, obj);
    }
}
