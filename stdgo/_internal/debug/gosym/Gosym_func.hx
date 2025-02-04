package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_func_static_extension.Func_static_extension) class Func {
    public var entry : stdgo.GoUInt64 = 0;
    @:embedded
    public var sym : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
    public var end : stdgo.GoUInt64 = 0;
    public var params : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
    public var locals : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
    public var frameSize : stdgo.GoInt = 0;
    public var lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
    public var obj : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
    public function new(?entry:stdgo.GoUInt64, ?sym:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>, ?end:stdgo.GoUInt64, ?params:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>, ?locals:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>, ?frameSize:stdgo.GoInt, ?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, ?obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>) {
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
    public function get_baseName():() -> stdgo.GoString return @:check32 this.sym.baseName;
    public var packageName(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_packageName():() -> stdgo.GoString return @:check32 this.sym.packageName;
    public var receiverName(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_receiverName():() -> stdgo.GoString return @:check32 this.sym.receiverName;
    public var static_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_static_():() -> Bool return @:check32 this.sym.static_;
    public var _nameWithoutInst(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__nameWithoutInst():() -> stdgo.GoString return @:check32 this.sym._nameWithoutInst;
    public function __copy__() {
        return new Func(entry, sym, end, params, locals, frameSize, lineTable, obj);
    }
}
