package stdgo;
final invalid : BasicKind = stdgo._internal.go.types.Types_invalid.invalid;
final bool_ = stdgo._internal.go.types.Types_bool_.bool_;
final int_ = stdgo._internal.go.types.Types_int_.int_;
final int8 = stdgo._internal.go.types.Types_int8.int8;
final int16 = stdgo._internal.go.types.Types_int16.int16;
final int32 = stdgo._internal.go.types.Types_int32.int32;
final int64 = stdgo._internal.go.types.Types_int64.int64;
final uint = stdgo._internal.go.types.Types_uint.uint;
final uint8 = stdgo._internal.go.types.Types_uint8.uint8;
final uint16 = stdgo._internal.go.types.Types_uint16.uint16;
final uint32 = stdgo._internal.go.types.Types_uint32.uint32;
final uint64 = stdgo._internal.go.types.Types_uint64.uint64;
final uintptr = stdgo._internal.go.types.Types_uintptr.uintptr;
final float32 = stdgo._internal.go.types.Types_float32.float32;
final float64 = stdgo._internal.go.types.Types_float64.float64;
final complex64 = stdgo._internal.go.types.Types_complex64.complex64;
final complex128 = stdgo._internal.go.types.Types_complex128.complex128;
final string = stdgo._internal.go.types.Types_string.string;
final unsafePointer = stdgo._internal.go.types.Types_unsafepointer.unsafePointer;
final untypedBool = stdgo._internal.go.types.Types_untypedbool.untypedBool;
final untypedInt = stdgo._internal.go.types.Types_untypedint.untypedInt;
final untypedRune = stdgo._internal.go.types.Types_untypedrune.untypedRune;
final untypedFloat = stdgo._internal.go.types.Types_untypedfloat.untypedFloat;
final untypedComplex = stdgo._internal.go.types.Types_untypedcomplex.untypedComplex;
final untypedString = stdgo._internal.go.types.Types_untypedstring.untypedString;
final untypedNil = stdgo._internal.go.types.Types_untypednil.untypedNil;
final byte : BasicKind = stdgo._internal.go.types.Types_byte.byte;
final rune : BasicKind = stdgo._internal.go.types.Types_rune.rune;
final isBoolean : BasicInfo = stdgo._internal.go.types.Types_isboolean.isBoolean;
final isInteger = stdgo._internal.go.types.Types_isinteger.isInteger;
final isUnsigned = stdgo._internal.go.types.Types_isunsigned.isUnsigned;
final isFloat = stdgo._internal.go.types.Types_isfloat.isFloat;
final isComplex = stdgo._internal.go.types.Types_iscomplex.isComplex;
final isString = stdgo._internal.go.types.Types_isstring.isString;
final isUntyped = stdgo._internal.go.types.Types_isuntyped.isUntyped;
final isOrdered : BasicInfo = stdgo._internal.go.types.Types_isordered.isOrdered;
final isNumeric : BasicInfo = stdgo._internal.go.types.Types_isnumeric.isNumeric;
final isConstType : BasicInfo = stdgo._internal.go.types.Types_isconsttype.isConstType;
final sendRecv : ChanDir = stdgo._internal.go.types.Types_sendrecv.sendRecv;
final sendOnly = stdgo._internal.go.types.Types_sendonly.sendOnly;
final recvOnly = stdgo._internal.go.types.Types_recvonly.recvOnly;
final fieldVal : SelectionKind = stdgo._internal.go.types.Types_fieldval.fieldVal;
final methodVal = stdgo._internal.go.types.Types_methodval.methodVal;
final methodExpr = stdgo._internal.go.types.Types_methodexpr.methodExpr;
var universe(get, set) : Scope;
private function get_universe():Scope return stdgo._internal.go.types.Types_universe.universe;
private function set_universe(v:Scope):Scope {
        stdgo._internal.go.types.Types_universe.universe = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
var unsafe(get, set) : Package;
private function get_unsafe():Package return stdgo._internal.go.types.Types_unsafe.unsafe;
private function set_unsafe(v:Package):Package {
        stdgo._internal.go.types.Types_unsafe.unsafe = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return v;
    }
var typ(get, set) : Array<Basic>;
private function get_typ():Array<Basic> return [for (i in stdgo._internal.go.types.Types_typ.typ) i];
private function set_typ(v:Array<Basic>):Array<Basic> {
        stdgo._internal.go.types.Types_typ.typ = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>>);
        return v;
    }
class Importer_static_extension {
    static public function import_(t:stdgo._internal.go.types.Types_importer.Importer, _path:String):stdgo.Tuple<Package, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_importer_static_extension.Importer_static_extension.import_(t, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract Importer(stdgo._internal.go.types.Types_importer.Importer) from stdgo._internal.go.types.Types_importer.Importer to stdgo._internal.go.types.Types_importer.Importer {
    @:from
    static function fromHaxeInterface(x:{ function import_(_path:String):stdgo.Tuple<Package, stdgo.Error>; }):Importer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Importer = { import_ : _0 -> x.import_(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ImporterFrom_static_extension {
    static public function importFrom(t:stdgo._internal.go.types.Types_importerfrom.ImporterFrom, _path:String, _dir:String, _mode:ImportMode):stdgo.Tuple<Package, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_importerfrom_static_extension.ImporterFrom_static_extension.importFrom(t, _path, _dir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract ImporterFrom(stdgo._internal.go.types.Types_importerfrom.ImporterFrom) from stdgo._internal.go.types.Types_importerfrom.ImporterFrom to stdgo._internal.go.types.Types_importerfrom.ImporterFrom {
    @:from
    static function fromHaxeInterface(x:{ function importFrom(_path:String, _dir:String, _mode:ImportMode):stdgo.Tuple<Package, stdgo.Error>; }):ImporterFrom {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ImporterFrom = { importFrom : (_0, _1, _2) -> x.importFrom(_0, _1, _2), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_cleaner_static_extension {
    static public function _cleanup(t:stdgo._internal.go.types.Types_t_cleaner.T_cleaner):Void {
        stdgo._internal.go.types.Types_t_cleaner_static_extension.T_cleaner_static_extension._cleanup(t);
    }
}
@:dox(hide) @:forward abstract T_cleaner(stdgo._internal.go.types.Types_t_cleaner.T_cleaner) from stdgo._internal.go.types.Types_t_cleaner.T_cleaner to stdgo._internal.go.types.Types_t_cleaner.T_cleaner {
    @:from
    static function fromHaxeInterface(x:{ function _cleanup():Void; }):T_cleaner {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cleaner = { _cleanup : () -> x._cleanup(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_decl_static_extension {
    static public function _node(t:stdgo._internal.go.types.Types_t_decl.T_decl):stdgo._internal.go.ast.Ast_node.Node {
        return stdgo._internal.go.types.Types_t_decl_static_extension.T_decl_static_extension._node(t);
    }
}
@:dox(hide) @:forward abstract T_decl(stdgo._internal.go.types.Types_t_decl.T_decl) from stdgo._internal.go.types.Types_t_decl.T_decl to stdgo._internal.go.types.Types_t_decl.T_decl {
    @:from
    static function fromHaxeInterface(x:{ function _node():stdgo._internal.go.ast.Ast_node.Node; }):T_decl {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_decl = { _node : () -> x._node(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_positioner_static_extension {
    static public function pos(t:stdgo._internal.go.types.Types_t_positioner.T_positioner):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_t_positioner_static_extension.T_positioner_static_extension.pos(t);
    }
}
@:dox(hide) @:forward abstract T_positioner(stdgo._internal.go.types.Types_t_positioner.T_positioner) from stdgo._internal.go.types.Types_t_positioner.T_positioner to stdgo._internal.go.types.Types_t_positioner.T_positioner {
    @:from
    static function fromHaxeInterface(x:{ function pos():stdgo._internal.go.token.Token_pos.Pos; }):T_positioner {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_positioner = { pos : () -> x.pos(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_dependency_static_extension {
    static public function _isDependency(t:stdgo._internal.go.types.Types_t_dependency.T_dependency):Void {
        stdgo._internal.go.types.Types_t_dependency_static_extension.T_dependency_static_extension._isDependency(t);
    }
}
@:dox(hide) @:forward abstract T_dependency(stdgo._internal.go.types.Types_t_dependency.T_dependency) from stdgo._internal.go.types.Types_t_dependency.T_dependency to stdgo._internal.go.types.Types_t_dependency.T_dependency {
    @:from
    static function fromHaxeInterface(x:{ function _isDependency():Void; }):T_dependency {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_dependency = { _isDependency : () -> x._isDependency(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Object_static_extension {
    static public function _setScopePos(t:stdgo._internal.go.types.Types_object.Object, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._setScopePos(t, _pos);
    }
    static public function _scopePos(t:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._scopePos(t);
    }
    static public function _sameId(t:stdgo._internal.go.types.Types_object.Object, _pkg:Package, _name:String):Bool {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._sameId(t, _pkg, _name);
    }
    static public function _setParent(t:stdgo._internal.go.types.Types_object.Object, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._setParent(t, _0);
    }
    static public function _setColor(t:stdgo._internal.go.types.Types_object.Object, _color:T_color):Void {
        stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._setColor(t, _color);
    }
    static public function _setOrder(t:stdgo._internal.go.types.Types_object.Object, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._setOrder(t, _0);
    }
    static public function _setType(t:stdgo._internal.go.types.Types_object.Object, _0:Type_):Void {
        stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._setType(t, _0);
    }
    static public function _color(t:stdgo._internal.go.types.Types_object.Object):T_color {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._color(t);
    }
    static public function _order(t:stdgo._internal.go.types.Types_object.Object):std.UInt {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension._order(t);
    }
    static public function string(t:stdgo._internal.go.types.Types_object.Object):String {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.string(t);
    }
    static public function id(t:stdgo._internal.go.types.Types_object.Object):String {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.id(t);
    }
    static public function exported(t:stdgo._internal.go.types.Types_object.Object):Bool {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.exported(t);
    }
    static public function type(t:stdgo._internal.go.types.Types_object.Object):Type_ {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.type(t);
    }
    static public function name(t:stdgo._internal.go.types.Types_object.Object):String {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.name(t);
    }
    static public function pkg(t:stdgo._internal.go.types.Types_object.Object):Package {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.pkg(t);
    }
    static public function pos(t:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.pos(t);
    }
    static public function parent(t:stdgo._internal.go.types.Types_object.Object):Scope {
        return stdgo._internal.go.types.Types_object_static_extension.Object_static_extension.parent(t);
    }
}
@:forward abstract Object(stdgo._internal.go.types.Types_object.Object) from stdgo._internal.go.types.Types_object.Object to stdgo._internal.go.types.Types_object.Object {
    @:from
    static function fromHaxeInterface(x:{ function parent():Scope; function pos():stdgo._internal.go.token.Token_pos.Pos; function pkg():Package; function name():String; function type():Type_; function exported():Bool; function id():String; function string():String; function _order():std.UInt; function _color():T_color; function _setType(_0:Type_):Void; function _setOrder(_0:std.UInt):Void; function _setColor(_color:T_color):Void; function _setParent(_0:Scope):Void; function _sameId(_pkg:Package, _name:String):Bool; function _scopePos():stdgo._internal.go.token.Token_pos.Pos; function _setScopePos(_pos:stdgo._internal.go.token.Token_pos.Pos):Void; }):Object {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Object = { parent : () -> x.parent(), pos : () -> x.pos(), pkg : () -> x.pkg(), name : () -> x.name(), type : () -> x.type(), exported : () -> x.exported(), id : () -> x.id(), string : () -> x.string(), _order : () -> x._order(), _color : () -> x._color(), _setType : _0 -> x._setType(_0), _setOrder : _0 -> x._setOrder(_0), _setColor : _0 -> x._setColor(_0), _setParent : _0 -> x._setParent(_0), _sameId : (_0, _1) -> x._sameId(_0, _1), _scopePos : () -> x._scopePos(), _setScopePos : _0 -> x._setScopePos(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Sizes_static_extension {
    static public function sizeof(t:stdgo._internal.go.types.Types_sizes.Sizes, t:Type_):haxe.Int64 {
        return stdgo._internal.go.types.Types_sizes_static_extension.Sizes_static_extension.sizeof(t, t);
    }
    static public function offsetsof(t:stdgo._internal.go.types.Types_sizes.Sizes, _fields:Array<Var>):Array<haxe.Int64> {
        final _fields = ([for (i in _fields) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return [for (i in stdgo._internal.go.types.Types_sizes_static_extension.Sizes_static_extension.offsetsof(t, _fields)) i];
    }
    static public function alignof_(t:stdgo._internal.go.types.Types_sizes.Sizes, t:Type_):haxe.Int64 {
        return stdgo._internal.go.types.Types_sizes_static_extension.Sizes_static_extension.alignof_(t, t);
    }
}
@:forward abstract Sizes(stdgo._internal.go.types.Types_sizes.Sizes) from stdgo._internal.go.types.Types_sizes.Sizes to stdgo._internal.go.types.Types_sizes.Sizes {
    @:from
    static function fromHaxeInterface(x:{ function alignof_(t:Type_):haxe.Int64; function offsetsof(_fields:Array<Var>):Array<haxe.Int64>; function sizeof(t:Type_):haxe.Int64; }):Sizes {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Sizes = { alignof_ : _0 -> x.alignof_(_0), offsetsof : _0 -> x.offsetsof([for (i in _0) i]), sizeof : _0 -> x.sizeof(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Type__static_extension {
    static public function string(t:stdgo._internal.go.types.Types_type_.Type_):String {
        return stdgo._internal.go.types.Types_type__static_extension.Type__static_extension.string(t);
    }
    static public function underlying(t:stdgo._internal.go.types.Types_type_.Type_):Type_ {
        return stdgo._internal.go.types.Types_type__static_extension.Type__static_extension.underlying(t);
    }
}
@:forward abstract Type_(stdgo._internal.go.types.Types_type_.Type_) from stdgo._internal.go.types.Types_type_.Type_ to stdgo._internal.go.types.Types_type_.Type_ {
    @:from
    static function fromHaxeInterface(x:{ function underlying():Type_; function string():String; }):Type_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Type_ = { underlying : () -> x.underlying(), string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.types.Types.Error_static_extension) abstract Error(stdgo._internal.go.types.Types_error.Error) from stdgo._internal.go.types.Types_error.Error to stdgo._internal.go.types.Types_error.Error {
    public var fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get_fset():stdgo._internal.go.token.Token_fileset.FileSet return this.fset;
    function set_fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this.fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_pos():stdgo._internal.go.token.Token_pos.Pos return this.pos;
    function set_pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.pos = v;
        return v;
    }
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public var soft(get, set) : Bool;
    function get_soft():Bool return this.soft;
    function set_soft(v:Bool):Bool {
        this.soft = v;
        return v;
    }
    public var _go116code(get, set) : stdgo._internal.internal.types.errors.Errors_code.Code;
    function get__go116code():stdgo._internal.internal.types.errors.Errors_code.Code return this._go116code;
    function set__go116code(v:stdgo._internal.internal.types.errors.Errors_code.Code):stdgo._internal.internal.types.errors.Errors_code.Code {
        this._go116code = v;
        return v;
    }
    public var _go116start(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__go116start():stdgo._internal.go.token.Token_pos.Pos return this._go116start;
    function set__go116start(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._go116start = v;
        return v;
    }
    public var _go116end(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__go116end():stdgo._internal.go.token.Token_pos.Pos return this._go116end;
    function set__go116end(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._go116end = v;
        return v;
    }
    public function new(?fset:stdgo._internal.go.token.Token_fileset.FileSet, ?pos:stdgo._internal.go.token.Token_pos.Pos, ?msg:String, ?soft:Bool, ?_go116code:stdgo._internal.internal.types.errors.Errors_code.Code, ?_go116start:stdgo._internal.go.token.Token_pos.Pos, ?_go116end:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.types.Types_error.Error((fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), pos, (msg : stdgo.GoString), soft, _go116code, _go116start, _go116end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.ArgumentError_static_extension) abstract ArgumentError(stdgo._internal.go.types.Types_argumenterror.ArgumentError) from stdgo._internal.go.types.Types_argumenterror.ArgumentError to stdgo._internal.go.types.Types_argumenterror.ArgumentError {
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?index:StdTypes.Int, ?err:stdgo.Error) this = new stdgo._internal.go.types.Types_argumenterror.ArgumentError((index : stdgo.GoInt), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Config_static_extension) abstract Config(stdgo._internal.go.types.Types_config.Config) from stdgo._internal.go.types.Types_config.Config to stdgo._internal.go.types.Types_config.Config {
    public var context(get, set) : Context;
    function get_context():Context return this.context;
    function set_context(v:Context):Context {
        this.context = (v : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return v;
    }
    public var goVersion(get, set) : String;
    function get_goVersion():String return this.goVersion;
    function set_goVersion(v:String):String {
        this.goVersion = (v : stdgo.GoString);
        return v;
    }
    public var ignoreFuncBodies(get, set) : Bool;
    function get_ignoreFuncBodies():Bool return this.ignoreFuncBodies;
    function set_ignoreFuncBodies(v:Bool):Bool {
        this.ignoreFuncBodies = v;
        return v;
    }
    public var fakeImportC(get, set) : Bool;
    function get_fakeImportC():Bool return this.fakeImportC;
    function set_fakeImportC(v:Bool):Bool {
        this.fakeImportC = v;
        return v;
    }
    public var _go115UsesCgo(get, set) : Bool;
    function get__go115UsesCgo():Bool return this._go115UsesCgo;
    function set__go115UsesCgo(v:Bool):Bool {
        this._go115UsesCgo = v;
        return v;
    }
    public var __Trace(get, set) : Bool;
    function get___Trace():Bool return this.__Trace;
    function set___Trace(v:Bool):Bool {
        this.__Trace = v;
        return v;
    }
    public var error(get, set) : stdgo.Error -> Void;
    function get_error():stdgo.Error -> Void return _0 -> this.error(_0);
    function set_error(v:stdgo.Error -> Void):stdgo.Error -> Void {
        this.error = v;
        return v;
    }
    public var importer(get, set) : Importer;
    function get_importer():Importer return this.importer;
    function set_importer(v:Importer):Importer {
        this.importer = v;
        return v;
    }
    public var sizes(get, set) : Sizes;
    function get_sizes():Sizes return this.sizes;
    function set_sizes(v:Sizes):Sizes {
        this.sizes = v;
        return v;
    }
    public var disableUnusedImportCheck(get, set) : Bool;
    function get_disableUnusedImportCheck():Bool return this.disableUnusedImportCheck;
    function set_disableUnusedImportCheck(v:Bool):Bool {
        this.disableUnusedImportCheck = v;
        return v;
    }
    public var __ErrorURL(get, set) : String;
    function get___ErrorURL():String return this.__ErrorURL;
    function set___ErrorURL(v:String):String {
        this.__ErrorURL = (v : stdgo.GoString);
        return v;
    }
    public function new(?context:Context, ?goVersion:String, ?ignoreFuncBodies:Bool, ?fakeImportC:Bool, ?_go115UsesCgo:Bool, ?__Trace:Bool, ?error:stdgo.Error -> Void, ?importer:Importer, ?sizes:Sizes, ?disableUnusedImportCheck:Bool, ?__ErrorURL:String) this = new stdgo._internal.go.types.Types_config.Config(
(context : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>),
(goVersion : stdgo.GoString),
ignoreFuncBodies,
fakeImportC,
_go115UsesCgo,
__Trace,
error,
importer,
sizes,
disableUnusedImportCheck,
(__ErrorURL : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Info_static_extension) abstract Info(stdgo._internal.go.types.Types_info.Info) from stdgo._internal.go.types.Types_info.Info to stdgo._internal.go.types.Types_info.Info {
    public var types(get, set) : Map<stdgo._internal.go.ast.Ast_expr.Expr, TypeAndValue>;
    function get_types():Map<stdgo._internal.go.ast.Ast_expr.Expr, TypeAndValue> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_expr.Expr, TypeAndValue> = [];
        for (key => value in this.types) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_types(v:Map<stdgo._internal.go.ast.Ast_expr.Expr, TypeAndValue>):Map<stdgo._internal.go.ast.Ast_expr.Expr, TypeAndValue> {
        this.types = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var instances(get, set) : Map<stdgo._internal.go.ast.Ast_ident.Ident, Instance>;
    function get_instances():Map<stdgo._internal.go.ast.Ast_ident.Ident, Instance> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_ident.Ident, Instance> = [];
        for (key => value in this.instances) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_instances(v:Map<stdgo._internal.go.ast.Ast_ident.Ident, Instance>):Map<stdgo._internal.go.ast.Ast_ident.Ident, Instance> {
        this.instances = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_instance.Instance>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var defs(get, set) : Map<stdgo._internal.go.ast.Ast_ident.Ident, Object>;
    function get_defs():Map<stdgo._internal.go.ast.Ast_ident.Ident, Object> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_ident.Ident, Object> = [];
        for (key => value in this.defs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_defs(v:Map<stdgo._internal.go.ast.Ast_ident.Ident, Object>):Map<stdgo._internal.go.ast.Ast_ident.Ident, Object> {
        this.defs = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var uses(get, set) : Map<stdgo._internal.go.ast.Ast_ident.Ident, Object>;
    function get_uses():Map<stdgo._internal.go.ast.Ast_ident.Ident, Object> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_ident.Ident, Object> = [];
        for (key => value in this.uses) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_uses(v:Map<stdgo._internal.go.ast.Ast_ident.Ident, Object>):Map<stdgo._internal.go.ast.Ast_ident.Ident, Object> {
        this.uses = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var implicits(get, set) : Map<stdgo._internal.go.ast.Ast_node.Node, Object>;
    function get_implicits():Map<stdgo._internal.go.ast.Ast_node.Node, Object> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_node.Node, Object> = [];
        for (key => value in this.implicits) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_implicits(v:Map<stdgo._internal.go.ast.Ast_node.Node, Object>):Map<stdgo._internal.go.ast.Ast_node.Node, Object> {
        this.implicits = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo._internal.go.types.Types_object.Object>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var selections(get, set) : Map<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, Selection>;
    function get_selections():Map<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, Selection> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, Selection> = [];
        for (key => value in this.selections) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_selections(v:Map<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, Selection>):Map<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, Selection> {
        this.selections = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
            };
            __obj__;
        };
        return v;
    }
    public var scopes(get, set) : Map<stdgo._internal.go.ast.Ast_node.Node, Scope>;
    function get_scopes():Map<stdgo._internal.go.ast.Ast_node.Node, Scope> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_node.Node, Scope> = [];
        for (key => value in this.scopes) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_scopes(v:Map<stdgo._internal.go.ast.Ast_node.Node, Scope>):Map<stdgo._internal.go.ast.Ast_node.Node, Scope> {
        this.scopes = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
            };
            __obj__;
        };
        return v;
    }
    public var initOrder(get, set) : Array<Initializer>;
    function get_initOrder():Array<Initializer> return [for (i in this.initOrder) i];
    function set_initOrder(v:Array<Initializer>):Array<Initializer> {
        this.initOrder = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>>);
        return v;
    }
    public function new(?types:Map<stdgo._internal.go.ast.Ast_expr.Expr, TypeAndValue>, ?instances:Map<stdgo._internal.go.ast.Ast_ident.Ident, Instance>, ?defs:Map<stdgo._internal.go.ast.Ast_ident.Ident, Object>, ?uses:Map<stdgo._internal.go.ast.Ast_ident.Ident, Object>, ?implicits:Map<stdgo._internal.go.ast.Ast_node.Node, Object>, ?selections:Map<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, Selection>, ?scopes:Map<stdgo._internal.go.ast.Ast_node.Node, Scope>, ?initOrder:Array<Initializer>) this = new stdgo._internal.go.types.Types_info.Info({
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>();
        for (key => value in types) {
            __obj__[key] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_instance.Instance>();
        for (key => value in instances) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>();
        for (key => value in defs) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>();
        for (key => value in uses) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo._internal.go.types.Types_object.Object>();
        for (key => value in implicits) {
            __obj__[key] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
        for (key => value in selections) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>();
        for (key => value in scopes) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        };
        __obj__;
    }, ([for (i in initOrder) (i : stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.TypeAndValue_static_extension) abstract TypeAndValue(stdgo._internal.go.types.Types_typeandvalue.TypeAndValue) from stdgo._internal.go.types.Types_typeandvalue.TypeAndValue to stdgo._internal.go.types.Types_typeandvalue.TypeAndValue {
    public var _mode(get, set) : T_operandMode;
    function get__mode():T_operandMode return this._mode;
    function set__mode(v:T_operandMode):T_operandMode {
        this._mode = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var value(get, set) : stdgo._internal.go.constant.Constant_value.Value;
    function get_value():stdgo._internal.go.constant.Constant_value.Value return this.value;
    function set_value(v:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        this.value = v;
        return v;
    }
    public function new(?_mode:T_operandMode, ?type:Type_, ?value:stdgo._internal.go.constant.Constant_value.Value) this = new stdgo._internal.go.types.Types_typeandvalue.TypeAndValue(_mode, type, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Instance_static_extension) abstract Instance(stdgo._internal.go.types.Types_instance.Instance) from stdgo._internal.go.types.Types_instance.Instance to stdgo._internal.go.types.Types_instance.Instance {
    public var typeArgs(get, set) : TypeList;
    function get_typeArgs():TypeList return this.typeArgs;
    function set_typeArgs(v:TypeList):TypeList {
        this.typeArgs = (v : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public function new(?typeArgs:TypeList, ?type:Type_) this = new stdgo._internal.go.types.Types_instance.Instance((typeArgs : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>), type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Initializer_static_extension) abstract Initializer(stdgo._internal.go.types.Types_initializer.Initializer) from stdgo._internal.go.types.Types_initializer.Initializer to stdgo._internal.go.types.Types_initializer.Initializer {
    public var lhs(get, set) : Array<Var>;
    function get_lhs():Array<Var> return [for (i in this.lhs) i];
    function set_lhs(v:Array<Var>):Array<Var> {
        this.lhs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return v;
    }
    public var rhs(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get_rhs():stdgo._internal.go.ast.Ast_expr.Expr return this.rhs;
    function set_rhs(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this.rhs = v;
        return v;
    }
    public function new(?lhs:Array<Var>, ?rhs:stdgo._internal.go.ast.Ast_expr.Expr) this = new stdgo._internal.go.types.Types_initializer.Initializer(([for (i in lhs) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>), rhs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Array__static_extension) abstract Array_(stdgo._internal.go.types.Types_array_.Array_) from stdgo._internal.go.types.Types_array_.Array_ to stdgo._internal.go.types.Types_array_.Array_ {
    public var _len(get, set) : haxe.Int64;
    function get__len():haxe.Int64 return this._len;
    function set__len(v:haxe.Int64):haxe.Int64 {
        this._len = (v : stdgo.GoInt64);
        return v;
    }
    public var _elem(get, set) : Type_;
    function get__elem():Type_ return this._elem;
    function set__elem(v:Type_):Type_ {
        this._elem = v;
        return v;
    }
    public function new(?_len:haxe.Int64, ?_elem:Type_) this = new stdgo._internal.go.types.Types_array_.Array_((_len : stdgo.GoInt64), _elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Basic_static_extension) abstract Basic(stdgo._internal.go.types.Types_basic.Basic) from stdgo._internal.go.types.Types_basic.Basic to stdgo._internal.go.types.Types_basic.Basic {
    public var _kind(get, set) : BasicKind;
    function get__kind():BasicKind return this._kind;
    function set__kind(v:BasicKind):BasicKind {
        this._kind = v;
        return v;
    }
    public var _info(get, set) : BasicInfo;
    function get__info():BasicInfo return this._info;
    function set__info(v:BasicInfo):BasicInfo {
        this._info = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public function new(?_kind:BasicKind, ?_info:BasicInfo, ?_name:String) this = new stdgo._internal.go.types.Types_basic.Basic(_kind, _info, (_name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Chan_static_extension) abstract Chan(stdgo._internal.go.types.Types_chan.Chan) from stdgo._internal.go.types.Types_chan.Chan to stdgo._internal.go.types.Types_chan.Chan {
    public var _dir(get, set) : ChanDir;
    function get__dir():ChanDir return this._dir;
    function set__dir(v:ChanDir):ChanDir {
        this._dir = v;
        return v;
    }
    public var _elem(get, set) : Type_;
    function get__elem():Type_ return this._elem;
    function set__elem(v:Type_):Type_ {
        this._elem = v;
        return v;
    }
    public function new(?_dir:ChanDir, ?_elem:Type_) this = new stdgo._internal.go.types.Types_chan.Chan(_dir, _elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_exprInfo_static_extension) @:dox(hide) abstract T_exprInfo(stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo) from stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo to stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo {
    public var _isLhs(get, set) : Bool;
    function get__isLhs():Bool return this._isLhs;
    function set__isLhs(v:Bool):Bool {
        this._isLhs = v;
        return v;
    }
    public var _mode(get, set) : T_operandMode;
    function get__mode():T_operandMode return this._mode;
    function set__mode(v:T_operandMode):T_operandMode {
        this._mode = v;
        return v;
    }
    public var _typ(get, set) : Basic;
    function get__typ():Basic return this._typ;
    function set__typ(v:Basic):Basic {
        this._typ = (v : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return v;
    }
    public var _val(get, set) : stdgo._internal.go.constant.Constant_value.Value;
    function get__val():stdgo._internal.go.constant.Constant_value.Value return this._val;
    function set__val(v:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        this._val = v;
        return v;
    }
    public function new(?_isLhs:Bool, ?_mode:T_operandMode, ?_typ:Basic, ?_val:stdgo._internal.go.constant.Constant_value.Value) this = new stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo(_isLhs, _mode, (_typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_environment_static_extension) @:dox(hide) abstract T_environment(stdgo._internal.go.types.Types_t_environment.T_environment) from stdgo._internal.go.types.Types_t_environment.T_environment to stdgo._internal.go.types.Types_t_environment.T_environment {
    public var _decl(get, set) : T_declInfo;
    function get__decl():T_declInfo return this._decl;
    function set__decl(v:T_declInfo):T_declInfo {
        this._decl = (v : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        return v;
    }
    public var _scope(get, set) : Scope;
    function get__scope():Scope return this._scope;
    function set__scope(v:Scope):Scope {
        this._scope = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _iota(get, set) : stdgo._internal.go.constant.Constant_value.Value;
    function get__iota():stdgo._internal.go.constant.Constant_value.Value return this._iota;
    function set__iota(v:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        this._iota = v;
        return v;
    }
    public var _errpos(get, set) : T_positioner;
    function get__errpos():T_positioner return this._errpos;
    function set__errpos(v:T_positioner):T_positioner {
        this._errpos = v;
        return v;
    }
    public var _inTParamList(get, set) : Bool;
    function get__inTParamList():Bool return this._inTParamList;
    function set__inTParamList(v:Bool):Bool {
        this._inTParamList = v;
        return v;
    }
    public var _sig(get, set) : Signature;
    function get__sig():Signature return this._sig;
    function set__sig(v:Signature):Signature {
        this._sig = (v : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return v;
    }
    public var _isPanic(get, set) : Map<stdgo._internal.go.ast.Ast_callexpr.CallExpr, Bool>;
    function get__isPanic():Map<stdgo._internal.go.ast.Ast_callexpr.CallExpr, Bool> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_callexpr.CallExpr, Bool> = [];
        for (key => value in this._isPanic) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__isPanic(v:Map<stdgo._internal.go.ast.Ast_callexpr.CallExpr, Bool>):Map<stdgo._internal.go.ast.Ast_callexpr.CallExpr, Bool> {
        this._isPanic = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, Bool>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _hasLabel(get, set) : Bool;
    function get__hasLabel():Bool return this._hasLabel;
    function set__hasLabel(v:Bool):Bool {
        this._hasLabel = v;
        return v;
    }
    public var _hasCallOrRecv(get, set) : Bool;
    function get__hasCallOrRecv():Bool return this._hasCallOrRecv;
    function set__hasCallOrRecv(v:Bool):Bool {
        this._hasCallOrRecv = v;
        return v;
    }
    public function new(?_decl:T_declInfo, ?_scope:Scope, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_iota:stdgo._internal.go.constant.Constant_value.Value, ?_errpos:T_positioner, ?_inTParamList:Bool, ?_sig:Signature, ?_isPanic:Map<stdgo._internal.go.ast.Ast_callexpr.CallExpr, Bool>, ?_hasLabel:Bool, ?_hasCallOrRecv:Bool) this = new stdgo._internal.go.types.Types_t_environment.T_environment((_decl : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>), (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), _pos, _iota, _errpos, _inTParamList, (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, Bool>();
        for (key => value in _isPanic) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>)] = value;
        };
        __obj__;
    }, _hasLabel, _hasCallOrRecv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_importKey_static_extension) @:dox(hide) abstract T_importKey(stdgo._internal.go.types.Types_t_importkey.T_importKey) from stdgo._internal.go.types.Types_t_importkey.T_importKey to stdgo._internal.go.types.Types_t_importkey.T_importKey {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = (v : stdgo.GoString);
        return v;
    }
    public function new(?_path:String, ?_dir:String) this = new stdgo._internal.go.types.Types_t_importkey.T_importKey((_path : stdgo.GoString), (_dir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_dotImportKey_static_extension) @:dox(hide) abstract T_dotImportKey(stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey) from stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey to stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey {
    public var _scope(get, set) : Scope;
    function get__scope():Scope return this._scope;
    function set__scope(v:Scope):Scope {
        this._scope = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public function new(?_scope:Scope, ?_name:String) this = new stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey((_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), (_name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_action_static_extension) @:dox(hide) abstract T_action(stdgo._internal.go.types.Types_t_action.T_action) from stdgo._internal.go.types.Types_t_action.T_action to stdgo._internal.go.types.Types_t_action.T_action {
    public var _f(get, set) : () -> Void;
    function get__f():() -> Void return () -> this._f();
    function set__f(v:() -> Void):() -> Void {
        this._f = v;
        return v;
    }
    public var _desc(get, set) : T_actionDesc;
    function get__desc():T_actionDesc return this._desc;
    function set__desc(v:T_actionDesc):T_actionDesc {
        this._desc = (v : stdgo.Ref<stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc>);
        return v;
    }
    public function new(?_f:() -> Void, ?_desc:T_actionDesc) this = new stdgo._internal.go.types.Types_t_action.T_action(_f, (_desc : stdgo.Ref<stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_actionDesc_static_extension) @:dox(hide) abstract T_actionDesc(stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc) from stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc to stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc {
    public var _pos(get, set) : T_positioner;
    function get__pos():T_positioner return this._pos;
    function set__pos(v:T_positioner):T_positioner {
        this._pos = v;
        return v;
    }
    public var _format(get, set) : String;
    function get__format():String return this._format;
    function set__format(v:String):String {
        this._format = (v : stdgo.GoString);
        return v;
    }
    public var _args(get, set) : Array<stdgo.AnyInterface>;
    function get__args():Array<stdgo.AnyInterface> return [for (i in this._args) i];
    function set__args(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._args = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?_pos:T_positioner, ?_format:String, ?_args:Array<stdgo.AnyInterface>) this = new stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc(_pos, (_format : stdgo.GoString), ([for (i in _args) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Checker_static_extension) abstract Checker(stdgo._internal.go.types.Types_checker.Checker) from stdgo._internal.go.types.Types_checker.Checker to stdgo._internal.go.types.Types_checker.Checker {
    public var _conf(get, set) : Config;
    function get__conf():Config return this._conf;
    function set__conf(v:Config):Config {
        this._conf = (v : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        return v;
    }
    public var _ctxt(get, set) : Context;
    function get__ctxt():Context return this._ctxt;
    function set__ctxt(v:Context):Context {
        this._ctxt = (v : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return v;
    }
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _pkg(get, set) : Package;
    function get__pkg():Package return this._pkg;
    function set__pkg(v:Package):Package {
        this._pkg = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return v;
    }
    public var info(get, set) : Info;
    function get_info():Info return this.info;
    function set_info(v:Info):Info {
        this.info = (v : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        return v;
    }
    public var _version(get, set) : T_version;
    function get__version():T_version return this._version;
    function set__version(v:T_version):T_version {
        this._version = v;
        return v;
    }
    public var _nextID(get, set) : haxe.UInt64;
    function get__nextID():haxe.UInt64 return this._nextID;
    function set__nextID(v:haxe.UInt64):haxe.UInt64 {
        this._nextID = (v : stdgo.GoUInt64);
        return v;
    }
    public var _objMap(get, set) : Map<Object, T_declInfo>;
    function get__objMap():Map<Object, T_declInfo> return {
        final __obj__:Map<Object, T_declInfo> = [];
        for (key => value in this._objMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__objMap(v:Map<Object, T_declInfo>):Map<Object, T_declInfo> {
        this._objMap = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
            };
            __obj__;
        };
        return v;
    }
    public var _impMap(get, set) : Map<T_importKey, Package>;
    function get__impMap():Map<T_importKey, Package> return {
        final __obj__:Map<T_importKey, Package> = [];
        for (key => value in this._impMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__impMap(v:Map<T_importKey, Package>):Map<T_importKey, Package> {
        this._impMap = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        return v;
    }
    public var _valids(get, set) : T_instanceLookup;
    function get__valids():T_instanceLookup return this._valids;
    function set__valids(v:T_instanceLookup):T_instanceLookup {
        this._valids = v;
        return v;
    }
    public var _pkgPathMap(get, set) : Map<String, Map<String, Bool>>;
    function get__pkgPathMap():Map<String, Map<String, Bool>> return {
        final __obj__:Map<String, Map<String, Bool>> = [];
        for (key => value in this._pkgPathMap) {
            __obj__[key] = {
                final __obj__:Map<String, Bool> = [];
                for (key => value in value) {
                    __obj__[key] = value;
                };
                __obj__;
            };
        };
        __obj__;
    };
    function set__pkgPathMap(v:Map<String, Map<String, Bool>>):Map<String, Map<String, Bool>> {
        this._pkgPathMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = {
                    final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
                    for (key => value in value) {
                        __obj__[(key : stdgo.GoString)] = value;
                    };
                    __obj__;
                };
            };
            __obj__;
        };
        return v;
    }
    public var _seenPkgMap(get, set) : Map<Package, Bool>;
    function get__seenPkgMap():Map<Package, Bool> return {
        final __obj__:Map<Package, Bool> = [];
        for (key => value in this._seenPkgMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__seenPkgMap(v:Map<Package, Bool>):Map<Package, Bool> {
        this._seenPkgMap = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, Bool>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _files(get, set) : Array<stdgo._internal.go.ast.Ast_file.File>;
    function get__files():Array<stdgo._internal.go.ast.Ast_file.File> return [for (i in this._files) i];
    function set__files(v:Array<stdgo._internal.go.ast.Ast_file.File>):Array<stdgo._internal.go.ast.Ast_file.File> {
        this._files = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        return v;
    }
    public var _posVers(get, set) : Map<stdgo._internal.go.token.Token_file.File, T_version>;
    function get__posVers():Map<stdgo._internal.go.token.Token_file.File, T_version> return {
        final __obj__:Map<stdgo._internal.go.token.Token_file.File, T_version> = [];
        for (key => value in this._posVers) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__posVers(v:Map<stdgo._internal.go.token.Token_file.File, T_version>):Map<stdgo._internal.go.token.Token_file.File, T_version> {
        this._posVers = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.token.Token_file.File>, stdgo._internal.go.types.Types_t_version.T_version>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.token.Token_file.File>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _imports(get, set) : Array<PkgName>;
    function get__imports():Array<PkgName> return [for (i in this._imports) i];
    function set__imports(v:Array<PkgName>):Array<PkgName> {
        this._imports = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>);
        return v;
    }
    public var _dotImportMap(get, set) : Map<T_dotImportKey, PkgName>;
    function get__dotImportMap():Map<T_dotImportKey, PkgName> return {
        final __obj__:Map<T_dotImportKey, PkgName> = [];
        for (key => value in this._dotImportMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__dotImportMap(v:Map<T_dotImportKey, PkgName>):Map<T_dotImportKey, PkgName> {
        this._dotImportMap = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey, stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>);
            };
            __obj__;
        };
        return v;
    }
    public var _recvTParamMap(get, set) : Map<stdgo._internal.go.ast.Ast_ident.Ident, TypeParam>;
    function get__recvTParamMap():Map<stdgo._internal.go.ast.Ast_ident.Ident, TypeParam> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_ident.Ident, TypeParam> = [];
        for (key => value in this._recvTParamMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__recvTParamMap(v:Map<stdgo._internal.go.ast.Ast_ident.Ident, TypeParam>):Map<stdgo._internal.go.ast.Ast_ident.Ident, TypeParam> {
        this._recvTParamMap = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
            };
            __obj__;
        };
        return v;
    }
    public var _brokenAliases(get, set) : Map<TypeName, Bool>;
    function get__brokenAliases():Map<TypeName, Bool> return {
        final __obj__:Map<TypeName, Bool> = [];
        for (key => value in this._brokenAliases) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__brokenAliases(v:Map<TypeName, Bool>):Map<TypeName, Bool> {
        this._brokenAliases = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, Bool>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _unionTypeSets(get, set) : Map<Union, T__TypeSet>;
    function get__unionTypeSets():Map<Union, T__TypeSet> return {
        final __obj__:Map<Union, T__TypeSet> = [];
        for (key => value in this._unionTypeSets) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__unionTypeSets(v:Map<Union, T__TypeSet>):Map<Union, T__TypeSet> {
        this._unionTypeSets = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            };
            __obj__;
        };
        return v;
    }
    public var _mono(get, set) : T_monoGraph;
    function get__mono():T_monoGraph return this._mono;
    function set__mono(v:T_monoGraph):T_monoGraph {
        this._mono = v;
        return v;
    }
    public var _firstErr(get, set) : stdgo.Error;
    function get__firstErr():stdgo.Error return this._firstErr;
    function set__firstErr(v:stdgo.Error):stdgo.Error {
        this._firstErr = (v : stdgo.Error);
        return v;
    }
    public var _methods(get, set) : Map<TypeName, Array<Func>>;
    function get__methods():Map<TypeName, Array<Func>> return {
        final __obj__:Map<TypeName, Array<Func>> = [];
        for (key => value in this._methods) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__methods(v:Map<TypeName, Array<Func>>):Map<TypeName, Array<Func>> {
        this._methods = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
            };
            __obj__;
        };
        return v;
    }
    public var _untyped(get, set) : Map<stdgo._internal.go.ast.Ast_expr.Expr, T_exprInfo>;
    function get__untyped():Map<stdgo._internal.go.ast.Ast_expr.Expr, T_exprInfo> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_expr.Expr, T_exprInfo> = [];
        for (key => value in this._untyped) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__untyped(v:Map<stdgo._internal.go.ast.Ast_expr.Expr, T_exprInfo>):Map<stdgo._internal.go.ast.Ast_expr.Expr, T_exprInfo> {
        this._untyped = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _delayed(get, set) : Array<T_action>;
    function get__delayed():Array<T_action> return [for (i in this._delayed) i];
    function set__delayed(v:Array<T_action>):Array<T_action> {
        this._delayed = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_action.T_action>);
        return v;
    }
    public var _objPath(get, set) : Array<Object>;
    function get__objPath():Array<Object> return [for (i in this._objPath) i];
    function set__objPath(v:Array<Object>):Array<Object> {
        this._objPath = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        return v;
    }
    public var _cleaners(get, set) : Array<T_cleaner>;
    function get__cleaners():Array<T_cleaner> return [for (i in this._cleaners) i];
    function set__cleaners(v:Array<T_cleaner>):Array<T_cleaner> {
        this._cleaners = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_cleaner.T_cleaner>);
        return v;
    }
    public var _environment(get, set) : T_environment;
    function get__environment():T_environment return this._environment;
    function set__environment(v:T_environment):T_environment {
        this._environment = v;
        return v;
    }
    public var _indent(get, set) : StdTypes.Int;
    function get__indent():StdTypes.Int return this._indent;
    function set__indent(v:StdTypes.Int):StdTypes.Int {
        this._indent = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_conf:Config, ?_ctxt:Context, ?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_pkg:Package, ?info:Info, ?_version:T_version, ?_nextID:haxe.UInt64, ?_objMap:Map<Object, T_declInfo>, ?_impMap:Map<T_importKey, Package>, ?_valids:T_instanceLookup, ?_pkgPathMap:Map<String, Map<String, Bool>>, ?_seenPkgMap:Map<Package, Bool>, ?_files:Array<stdgo._internal.go.ast.Ast_file.File>, ?_posVers:Map<stdgo._internal.go.token.Token_file.File, T_version>, ?_imports:Array<PkgName>, ?_dotImportMap:Map<T_dotImportKey, PkgName>, ?_recvTParamMap:Map<stdgo._internal.go.ast.Ast_ident.Ident, TypeParam>, ?_brokenAliases:Map<TypeName, Bool>, ?_unionTypeSets:Map<Union, T__TypeSet>, ?_mono:T_monoGraph, ?_firstErr:stdgo.Error, ?_methods:Map<TypeName, Array<Func>>, ?_untyped:Map<stdgo._internal.go.ast.Ast_expr.Expr, T_exprInfo>, ?_delayed:Array<T_action>, ?_objPath:Array<Object>, ?_cleaners:Array<T_cleaner>, ?_environment:T_environment, ?_indent:StdTypes.Int) this = new stdgo._internal.go.types.Types_checker.Checker(
(_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>),
(_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>),
(_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>),
(_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>),
(info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>),
_version,
(_nextID : stdgo.GoUInt64),
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>();
        for (key => value in _objMap) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _impMap) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    },
_valids,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>();
        for (key => value in _pkgPathMap) {
            __obj__[(key : stdgo.GoString)] = {
                final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
                for (key => value in value) {
                    __obj__[(key : stdgo.GoString)] = value;
                };
                __obj__;
            };
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, Bool>();
        for (key => value in _seenPkgMap) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] = value;
        };
        __obj__;
    },
([for (i in _files) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>),
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.token.Token_file.File>, stdgo._internal.go.types.Types_t_version.T_version>();
        for (key => value in _posVers) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.token.Token_file.File>)] = value;
        };
        __obj__;
    },
([for (i in _imports) (i : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>),
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey, stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>();
        for (key => value in _dotImportMap) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
        for (key => value in _recvTParamMap) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, Bool>();
        for (key => value in _brokenAliases) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
        for (key => value in _unionTypeSets) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        };
        __obj__;
    },
_mono,
(_firstErr : stdgo.Error),
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>>();
        for (key => value in _methods) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo>();
        for (key => value in _untyped) {
            __obj__[key] = value;
        };
        __obj__;
    },
([for (i in _delayed) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_action.T_action>),
([for (i in _objPath) i] : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>),
([for (i in _cleaners) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_cleaner.T_cleaner>),
_environment,
(_indent : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_posVers_static_extension) @:dox(hide) abstract T_posVers(stdgo._internal.go.types.Types_t_posvers.T_posVers) from stdgo._internal.go.types.Types_t_posvers.T_posVers to stdgo._internal.go.types.Types_t_posvers.T_posVers {
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _vers(get, set) : T_version;
    function get__vers():T_version return this._vers;
    function set__vers(v:T_version):T_version {
        this._vers = v;
        return v;
    }
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_vers:T_version) this = new stdgo._internal.go.types.Types_t_posvers.T_posVers(_pos, _vers);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_bailout_static_extension) @:dox(hide) abstract T_bailout(stdgo._internal.go.types.Types_t_bailout.T_bailout) from stdgo._internal.go.types.Types_t_bailout.T_bailout to stdgo._internal.go.types.Types_t_bailout.T_bailout {
    public function new() this = new stdgo._internal.go.types.Types_t_bailout.T_bailout();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Context_static_extension) abstract Context(stdgo._internal.go.types.Types_context.Context) from stdgo._internal.go.types.Types_context.Context to stdgo._internal.go.types.Types_context.Context {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _typeMap(get, set) : Map<String, Array<T_ctxtEntry>>;
    function get__typeMap():Map<String, Array<T_ctxtEntry>> return {
        final __obj__:Map<String, Array<T_ctxtEntry>> = [];
        for (key => value in this._typeMap) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__typeMap(v:Map<String, Array<T_ctxtEntry>>):Map<String, Array<T_ctxtEntry>> {
        this._typeMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>);
            };
            __obj__;
        };
        return v;
    }
    public var _nextID(get, set) : StdTypes.Int;
    function get__nextID():StdTypes.Int return this._nextID;
    function set__nextID(v:StdTypes.Int):StdTypes.Int {
        this._nextID = (v : stdgo.GoInt);
        return v;
    }
    public var _originIDs(get, set) : Map<Type_, StdTypes.Int>;
    function get__originIDs():Map<Type_, StdTypes.Int> return {
        final __obj__:Map<Type_, StdTypes.Int> = [];
        for (key => value in this._originIDs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__originIDs(v:Map<Type_, StdTypes.Int>):Map<Type_, StdTypes.Int> {
        this._originIDs = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_typeMap:Map<String, Array<T_ctxtEntry>>, ?_nextID:StdTypes.Int, ?_originIDs:Map<Type_, StdTypes.Int>) this = new stdgo._internal.go.types.Types_context.Context(_mu, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>();
        for (key => value in _typeMap) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>);
        };
        __obj__;
    }, (_nextID : stdgo.GoInt), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>();
        for (key => value in _originIDs) {
            __obj__[key] = (value : stdgo.GoInt);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_ctxtEntry_static_extension) @:dox(hide) abstract T_ctxtEntry(stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry) from stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry to stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry {
    public var _orig(get, set) : Type_;
    function get__orig():Type_ return this._orig;
    function set__orig(v:Type_):Type_ {
        this._orig = v;
        return v;
    }
    public var _targs(get, set) : Array<Type_>;
    function get__targs():Array<Type_> return [for (i in this._targs) i];
    function set__targs(v:Array<Type_>):Array<Type_> {
        this._targs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public var _instance(get, set) : Type_;
    function get__instance():Type_ return this._instance;
    function set__instance(v:Type_):Type_ {
        this._instance = v;
        return v;
    }
    public function new(?_orig:Type_, ?_targs:Array<Type_>, ?_instance:Type_) this = new stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry(_orig, ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>), _instance);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_importDecl_static_extension) @:dox(hide) abstract T_importDecl(stdgo._internal.go.types.Types_t_importdecl.T_importDecl) from stdgo._internal.go.types.Types_t_importdecl.T_importDecl to stdgo._internal.go.types.Types_t_importdecl.T_importDecl {
    public var _spec(get, set) : stdgo._internal.go.ast.Ast_importspec.ImportSpec;
    function get__spec():stdgo._internal.go.ast.Ast_importspec.ImportSpec return this._spec;
    function set__spec(v:stdgo._internal.go.ast.Ast_importspec.ImportSpec):stdgo._internal.go.ast.Ast_importspec.ImportSpec {
        this._spec = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
        return v;
    }
    public function new(?_spec:stdgo._internal.go.ast.Ast_importspec.ImportSpec) this = new stdgo._internal.go.types.Types_t_importdecl.T_importDecl((_spec : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_constDecl_static_extension) @:dox(hide) abstract T_constDecl(stdgo._internal.go.types.Types_t_constdecl.T_constDecl) from stdgo._internal.go.types.Types_t_constdecl.T_constDecl to stdgo._internal.go.types.Types_t_constdecl.T_constDecl {
    public var _spec(get, set) : stdgo._internal.go.ast.Ast_valuespec.ValueSpec;
    function get__spec():stdgo._internal.go.ast.Ast_valuespec.ValueSpec return this._spec;
    function set__spec(v:stdgo._internal.go.ast.Ast_valuespec.ValueSpec):stdgo._internal.go.ast.Ast_valuespec.ValueSpec {
        this._spec = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        return v;
    }
    public var _iota(get, set) : StdTypes.Int;
    function get__iota():StdTypes.Int return this._iota;
    function set__iota(v:StdTypes.Int):StdTypes.Int {
        this._iota = (v : stdgo.GoInt);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get__typ():stdgo._internal.go.ast.Ast_expr.Expr return this._typ;
    function set__typ(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this._typ = v;
        return v;
    }
    public var _init(get, set) : Array<stdgo._internal.go.ast.Ast_expr.Expr>;
    function get__init():Array<stdgo._internal.go.ast.Ast_expr.Expr> return [for (i in this._init) i];
    function set__init(v:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Array<stdgo._internal.go.ast.Ast_expr.Expr> {
        this._init = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return v;
    }
    public var _inherited(get, set) : Bool;
    function get__inherited():Bool return this._inherited;
    function set__inherited(v:Bool):Bool {
        this._inherited = v;
        return v;
    }
    public function new(?_spec:stdgo._internal.go.ast.Ast_valuespec.ValueSpec, ?_iota:StdTypes.Int, ?_typ:stdgo._internal.go.ast.Ast_expr.Expr, ?_init:Array<stdgo._internal.go.ast.Ast_expr.Expr>, ?_inherited:Bool) this = new stdgo._internal.go.types.Types_t_constdecl.T_constDecl((_spec : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), (_iota : stdgo.GoInt), _typ, ([for (i in _init) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), _inherited);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_varDecl_static_extension) @:dox(hide) abstract T_varDecl(stdgo._internal.go.types.Types_t_vardecl.T_varDecl) from stdgo._internal.go.types.Types_t_vardecl.T_varDecl to stdgo._internal.go.types.Types_t_vardecl.T_varDecl {
    public var _spec(get, set) : stdgo._internal.go.ast.Ast_valuespec.ValueSpec;
    function get__spec():stdgo._internal.go.ast.Ast_valuespec.ValueSpec return this._spec;
    function set__spec(v:stdgo._internal.go.ast.Ast_valuespec.ValueSpec):stdgo._internal.go.ast.Ast_valuespec.ValueSpec {
        this._spec = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        return v;
    }
    public function new(?_spec:stdgo._internal.go.ast.Ast_valuespec.ValueSpec) this = new stdgo._internal.go.types.Types_t_vardecl.T_varDecl((_spec : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_typeDecl_static_extension) @:dox(hide) abstract T_typeDecl(stdgo._internal.go.types.Types_t_typedecl.T_typeDecl) from stdgo._internal.go.types.Types_t_typedecl.T_typeDecl to stdgo._internal.go.types.Types_t_typedecl.T_typeDecl {
    public var _spec(get, set) : stdgo._internal.go.ast.Ast_typespec.TypeSpec;
    function get__spec():stdgo._internal.go.ast.Ast_typespec.TypeSpec return this._spec;
    function set__spec(v:stdgo._internal.go.ast.Ast_typespec.TypeSpec):stdgo._internal.go.ast.Ast_typespec.TypeSpec {
        this._spec = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        return v;
    }
    public function new(?_spec:stdgo._internal.go.ast.Ast_typespec.TypeSpec) this = new stdgo._internal.go.types.Types_t_typedecl.T_typeDecl((_spec : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_funcDecl_static_extension) @:dox(hide) abstract T_funcDecl(stdgo._internal.go.types.Types_t_funcdecl.T_funcDecl) from stdgo._internal.go.types.Types_t_funcdecl.T_funcDecl to stdgo._internal.go.types.Types_t_funcdecl.T_funcDecl {
    public var _decl(get, set) : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl;
    function get__decl():stdgo._internal.go.ast.Ast_funcdecl.FuncDecl return this._decl;
    function set__decl(v:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl):stdgo._internal.go.ast.Ast_funcdecl.FuncDecl {
        this._decl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        return v;
    }
    public function new(?_decl:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl) this = new stdgo._internal.go.types.Types_t_funcdecl.T_funcDecl((_decl : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_error__static_extension) @:dox(hide) abstract T_error_(stdgo._internal.go.types.Types_t_error_.T_error_) from stdgo._internal.go.types.Types_t_error_.T_error_ to stdgo._internal.go.types.Types_t_error_.T_error_ {
    public var _desc(get, set) : Array<T_errorDesc>;
    function get__desc():Array<T_errorDesc> return [for (i in this._desc) i];
    function set__desc(v:Array<T_errorDesc>):Array<T_errorDesc> {
        this._desc = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>);
        return v;
    }
    public var _code(get, set) : stdgo._internal.internal.types.errors.Errors_code.Code;
    function get__code():stdgo._internal.internal.types.errors.Errors_code.Code return this._code;
    function set__code(v:stdgo._internal.internal.types.errors.Errors_code.Code):stdgo._internal.internal.types.errors.Errors_code.Code {
        this._code = v;
        return v;
    }
    public var _soft(get, set) : Bool;
    function get__soft():Bool return this._soft;
    function set__soft(v:Bool):Bool {
        this._soft = v;
        return v;
    }
    public function new(?_desc:Array<T_errorDesc>, ?_code:stdgo._internal.internal.types.errors.Errors_code.Code, ?_soft:Bool) this = new stdgo._internal.go.types.Types_t_error_.T_error_(([for (i in _desc) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>), _code, _soft);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_errorDesc_static_extension) @:dox(hide) abstract T_errorDesc(stdgo._internal.go.types.Types_t_errordesc.T_errorDesc) from stdgo._internal.go.types.Types_t_errordesc.T_errorDesc to stdgo._internal.go.types.Types_t_errordesc.T_errorDesc {
    public var _posn(get, set) : T_positioner;
    function get__posn():T_positioner return this._posn;
    function set__posn(v:T_positioner):T_positioner {
        this._posn = v;
        return v;
    }
    public var _format(get, set) : String;
    function get__format():String return this._format;
    function set__format(v:String):String {
        this._format = (v : stdgo.GoString);
        return v;
    }
    public var _args(get, set) : Array<stdgo.AnyInterface>;
    function get__args():Array<stdgo.AnyInterface> return [for (i in this._args) i];
    function set__args(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._args = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?_posn:T_positioner, ?_format:String, ?_args:Array<stdgo.AnyInterface>) this = new stdgo._internal.go.types.Types_t_errordesc.T_errorDesc(_posn, (_format : stdgo.GoString), ([for (i in _args) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_posSpan_static_extension) @:dox(hide) abstract T_posSpan(stdgo._internal.go.types.Types_t_posspan.T_posSpan) from stdgo._internal.go.types.Types_t_posspan.T_posSpan to stdgo._internal.go.types.Types_t_posspan.T_posSpan {
    public var _start(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__start():stdgo._internal.go.token.Token_pos.Pos return this._start;
    function set__start(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._start = v;
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _end(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__end():stdgo._internal.go.token.Token_pos.Pos return this._end;
    function set__end(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._end = v;
        return v;
    }
    public function new(?_start:stdgo._internal.go.token.Token_pos.Pos, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_end:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.types.Types_t_posspan.T_posSpan(_start, _pos, _end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_tpWalker_static_extension) @:dox(hide) abstract T_tpWalker(stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker) from stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker to stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker {
    public var _tparams(get, set) : Array<TypeParam>;
    function get__tparams():Array<TypeParam> return [for (i in this._tparams) i];
    function set__tparams(v:Array<TypeParam>):Array<TypeParam> {
        this._tparams = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return v;
    }
    public var _seen(get, set) : Map<Type_, Bool>;
    function get__seen():Map<Type_, Bool> return {
        final __obj__:Map<Type_, Bool> = [];
        for (key => value in this._seen) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__seen(v:Map<Type_, Bool>):Map<Type_, Bool> {
        this._seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?_tparams:Array<TypeParam>, ?_seen:Map<Type_, Bool>) this = new stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker(([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
        for (key => value in _seen) {
            __obj__[key] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_cycleFinder_static_extension) @:dox(hide) abstract T_cycleFinder(stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder) from stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder to stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder {
    public var _tparams(get, set) : Array<TypeParam>;
    function get__tparams():Array<TypeParam> return [for (i in this._tparams) i];
    function set__tparams(v:Array<TypeParam>):Array<TypeParam> {
        this._tparams = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return v;
    }
    public var _inferred(get, set) : Array<Type_>;
    function get__inferred():Array<Type_> return [for (i in this._inferred) i];
    function set__inferred(v:Array<Type_>):Array<Type_> {
        this._inferred = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public var _seen(get, set) : Map<Type_, Bool>;
    function get__seen():Map<Type_, Bool> return {
        final __obj__:Map<Type_, Bool> = [];
        for (key => value in this._seen) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__seen(v:Map<Type_, Bool>):Map<Type_, Bool> {
        this._seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?_tparams:Array<TypeParam>, ?_inferred:Array<Type_>, ?_seen:Map<Type_, Bool>) this = new stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder(([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), ([for (i in _inferred) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
        for (key => value in _seen) {
            __obj__[key] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_graphNode_static_extension) @:dox(hide) abstract T_graphNode(stdgo._internal.go.types.Types_t_graphnode.T_graphNode) from stdgo._internal.go.types.Types_t_graphnode.T_graphNode to stdgo._internal.go.types.Types_t_graphnode.T_graphNode {
    public var _obj(get, set) : T_dependency;
    function get__obj():T_dependency return this._obj;
    function set__obj(v:T_dependency):T_dependency {
        this._obj = v;
        return v;
    }
    public var _pred(get, set) : T_nodeSet;
    function get__pred():T_nodeSet return this._pred;
    function set__pred(v:T_nodeSet):T_nodeSet {
        this._pred = v;
        return v;
    }
    public var _succ(get, set) : T_nodeSet;
    function get__succ():T_nodeSet return this._succ;
    function set__succ(v:T_nodeSet):T_nodeSet {
        this._succ = v;
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = (v : stdgo.GoInt);
        return v;
    }
    public var _ndeps(get, set) : StdTypes.Int;
    function get__ndeps():StdTypes.Int return this._ndeps;
    function set__ndeps(v:StdTypes.Int):StdTypes.Int {
        this._ndeps = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_obj:T_dependency, ?_pred:T_nodeSet, ?_succ:T_nodeSet, ?_index:StdTypes.Int, ?_ndeps:StdTypes.Int) this = new stdgo._internal.go.types.Types_t_graphnode.T_graphNode(_obj, _pred, _succ, (_index : stdgo.GoInt), (_ndeps : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Interface_static_extension) abstract Interface(stdgo._internal.go.types.Types_interface.Interface) from stdgo._internal.go.types.Types_interface.Interface to stdgo._internal.go.types.Types_interface.Interface {
    public var _check(get, set) : Checker;
    function get__check():Checker return this._check;
    function set__check(v:Checker):Checker {
        this._check = (v : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return v;
    }
    public var _methods(get, set) : Array<Func>;
    function get__methods():Array<Func> return [for (i in this._methods) i];
    function set__methods(v:Array<Func>):Array<Func> {
        this._methods = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        return v;
    }
    public var _embeddeds(get, set) : Array<Type_>;
    function get__embeddeds():Array<Type_> return [for (i in this._embeddeds) i];
    function set__embeddeds(v:Array<Type_>):Array<Type_> {
        this._embeddeds = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public var _embedPos(get, set) : Array<stdgo._internal.go.token.Token_pos.Pos>;
    function get__embedPos():Array<stdgo._internal.go.token.Token_pos.Pos> return this._embedPos;
    function set__embedPos(v:Array<stdgo._internal.go.token.Token_pos.Pos>):Array<stdgo._internal.go.token.Token_pos.Pos> {
        this._embedPos = (v : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>);
        return v;
    }
    public var _implicit(get, set) : Bool;
    function get__implicit():Bool return this._implicit;
    function set__implicit(v:Bool):Bool {
        this._implicit = v;
        return v;
    }
    public var _complete(get, set) : Bool;
    function get__complete():Bool return this._complete;
    function set__complete(v:Bool):Bool {
        this._complete = v;
        return v;
    }
    public var _tset(get, set) : T__TypeSet;
    function get__tset():T__TypeSet return this._tset;
    function set__tset(v:T__TypeSet):T__TypeSet {
        this._tset = (v : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return v;
    }
    public function new(?_check:Checker, ?_methods:Array<Func>, ?_embeddeds:Array<Type_>, ?_embedPos:Array<stdgo._internal.go.token.Token_pos.Pos>, ?_implicit:Bool, ?_complete:Bool, ?_tset:T__TypeSet) this = new stdgo._internal.go.types.Types_interface.Interface((_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>), ([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), ([for (i in _embeddeds) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>), (_embedPos : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>), _implicit, _complete, (_tset : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_block_static_extension) @:dox(hide) abstract T_block(stdgo._internal.go.types.Types_t_block.T_block) from stdgo._internal.go.types.Types_t_block.T_block to stdgo._internal.go.types.Types_t_block.T_block {
    public var _parent(get, set) : T_block;
    function get__parent():T_block return this._parent;
    function set__parent(v:T_block):T_block {
        this._parent = (v : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>);
        return v;
    }
    public var _lstmt(get, set) : stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt;
    function get__lstmt():stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt return this._lstmt;
    function set__lstmt(v:stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt):stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt {
        this._lstmt = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        return v;
    }
    public var _labels(get, set) : Map<String, stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>;
    function get__labels():Map<String, stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> return {
        final __obj__:Map<String, stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = [];
        for (key => value in this._labels) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__labels(v:Map<String, stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):Map<String, stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> {
        this._labels = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_parent:T_block, ?_lstmt:stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt, ?_labels:Map<String, stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) this = new stdgo._internal.go.types.Types_t_block.T_block((_parent : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>), (_lstmt : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>();
        for (key => value in _labels) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_embeddedType_static_extension) @:dox(hide) abstract T_embeddedType(stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType) from stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType to stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType {
    public var _typ(get, set) : Type_;
    function get__typ():Type_ return this._typ;
    function set__typ(v:Type_):Type_ {
        this._typ = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _indirect(get, set) : Bool;
    function get__indirect():Bool return this._indirect;
    function set__indirect(v:Bool):Bool {
        this._indirect = v;
        return v;
    }
    public var _multiples(get, set) : Bool;
    function get__multiples():Bool return this._multiples;
    function set__multiples(v:Bool):Bool {
        this._multiples = v;
        return v;
    }
    public function new(?_typ:Type_, ?_index:Array<StdTypes.Int>, ?_indirect:Bool, ?_multiples:Bool) this = new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), _indirect, _multiples);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_instanceLookup_static_extension) @:dox(hide) abstract T_instanceLookup(stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup) from stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup to stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup {
    public var _buf(get, set) : haxe.ds.Vector<Named>;
    function get__buf():haxe.ds.Vector<Named> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<Named>):haxe.ds.Vector<Named> {
        this._buf = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.GoArray<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
        return v;
    }
    public var _m(get, set) : Map<Named, Array<Named>>;
    function get__m():Map<Named, Array<Named>> return {
        final __obj__:Map<Named, Array<Named>> = [];
        for (key => value in this._m) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__m(v:Map<Named, Array<Named>>):Map<Named, Array<Named>> {
        this._m = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_buf:haxe.ds.Vector<Named>, ?_m:Map<Named, Array<Named>>) this = new stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup(([for (i in _buf) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.GoArray<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>), {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>();
        for (key => value in _m) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Map__static_extension) abstract Map_(stdgo._internal.go.types.Types_map_.Map_) from stdgo._internal.go.types.Types_map_.Map_ to stdgo._internal.go.types.Types_map_.Map_ {
    public var _key(get, set) : Type_;
    function get__key():Type_ return this._key;
    function set__key(v:Type_):Type_ {
        this._key = v;
        return v;
    }
    public var _elem(get, set) : Type_;
    function get__elem():Type_ return this._elem;
    function set__elem(v:Type_):Type_ {
        this._elem = v;
        return v;
    }
    public function new(?_key:Type_, ?_elem:Type_) this = new stdgo._internal.go.types.Types_map_.Map_(_key, _elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.MethodSet_static_extension) abstract MethodSet(stdgo._internal.go.types.Types_methodset.MethodSet) from stdgo._internal.go.types.Types_methodset.MethodSet to stdgo._internal.go.types.Types_methodset.MethodSet {
    public var _list(get, set) : Array<Selection>;
    function get__list():Array<Selection> return [for (i in this._list) i];
    function set__list(v:Array<Selection>):Array<Selection> {
        this._list = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>);
        return v;
    }
    public function new(?_list:Array<Selection>) this = new stdgo._internal.go.types.Types_methodset.MethodSet(([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_monoGraph_static_extension) @:dox(hide) abstract T_monoGraph(stdgo._internal.go.types.Types_t_monograph.T_monoGraph) from stdgo._internal.go.types.Types_t_monograph.T_monoGraph to stdgo._internal.go.types.Types_t_monograph.T_monoGraph {
    public var _vertices(get, set) : Array<T_monoVertex>;
    function get__vertices():Array<T_monoVertex> return [for (i in this._vertices) i];
    function set__vertices(v:Array<T_monoVertex>):Array<T_monoVertex> {
        this._vertices = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex>);
        return v;
    }
    public var _edges(get, set) : Array<T_monoEdge>;
    function get__edges():Array<T_monoEdge> return [for (i in this._edges) i];
    function set__edges(v:Array<T_monoEdge>):Array<T_monoEdge> {
        this._edges = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_monoedge.T_monoEdge>);
        return v;
    }
    public var _canon(get, set) : Map<TypeParam, TypeParam>;
    function get__canon():Map<TypeParam, TypeParam> return {
        final __obj__:Map<TypeParam, TypeParam> = [];
        for (key => value in this._canon) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__canon(v:Map<TypeParam, TypeParam>):Map<TypeParam, TypeParam> {
        this._canon = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
            };
            __obj__;
        };
        return v;
    }
    public var _nameIdx(get, set) : Map<TypeName, StdTypes.Int>;
    function get__nameIdx():Map<TypeName, StdTypes.Int> return {
        final __obj__:Map<TypeName, StdTypes.Int> = [];
        for (key => value in this._nameIdx) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__nameIdx(v:Map<TypeName, StdTypes.Int>):Map<TypeName, StdTypes.Int> {
        this._nameIdx = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_vertices:Array<T_monoVertex>, ?_edges:Array<T_monoEdge>, ?_canon:Map<TypeParam, TypeParam>, ?_nameIdx:Map<TypeName, StdTypes.Int>) this = new stdgo._internal.go.types.Types_t_monograph.T_monoGraph(([for (i in _vertices) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex>), ([for (i in _edges) i] : stdgo.Slice<stdgo._internal.go.types.Types_t_monoedge.T_monoEdge>), {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
        for (key => value in _canon) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>();
        for (key => value in _nameIdx) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)] = (value : stdgo.GoInt);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_monoVertex_static_extension) @:dox(hide) abstract T_monoVertex(stdgo._internal.go.types.Types_t_monovertex.T_monoVertex) from stdgo._internal.go.types.Types_t_monovertex.T_monoVertex to stdgo._internal.go.types.Types_t_monovertex.T_monoVertex {
    public var _weight(get, set) : StdTypes.Int;
    function get__weight():StdTypes.Int return this._weight;
    function set__weight(v:StdTypes.Int):StdTypes.Int {
        this._weight = (v : stdgo.GoInt);
        return v;
    }
    public var _pre(get, set) : StdTypes.Int;
    function get__pre():StdTypes.Int return this._pre;
    function set__pre(v:StdTypes.Int):StdTypes.Int {
        this._pre = (v : stdgo.GoInt);
        return v;
    }
    public var _len(get, set) : StdTypes.Int;
    function get__len():StdTypes.Int return this._len;
    function set__len(v:StdTypes.Int):StdTypes.Int {
        this._len = (v : stdgo.GoInt);
        return v;
    }
    public var _obj(get, set) : TypeName;
    function get__obj():TypeName return this._obj;
    function set__obj(v:TypeName):TypeName {
        this._obj = (v : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return v;
    }
    public function new(?_weight:StdTypes.Int, ?_pre:StdTypes.Int, ?_len:StdTypes.Int, ?_obj:TypeName) this = new stdgo._internal.go.types.Types_t_monovertex.T_monoVertex((_weight : stdgo.GoInt), (_pre : stdgo.GoInt), (_len : stdgo.GoInt), (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_monoEdge_static_extension) @:dox(hide) abstract T_monoEdge(stdgo._internal.go.types.Types_t_monoedge.T_monoEdge) from stdgo._internal.go.types.Types_t_monoedge.T_monoEdge to stdgo._internal.go.types.Types_t_monoedge.T_monoEdge {
    public var _dst(get, set) : StdTypes.Int;
    function get__dst():StdTypes.Int return this._dst;
    function set__dst(v:StdTypes.Int):StdTypes.Int {
        this._dst = (v : stdgo.GoInt);
        return v;
    }
    public var _src(get, set) : StdTypes.Int;
    function get__src():StdTypes.Int return this._src;
    function set__src(v:StdTypes.Int):StdTypes.Int {
        this._src = (v : stdgo.GoInt);
        return v;
    }
    public var _weight(get, set) : StdTypes.Int;
    function get__weight():StdTypes.Int return this._weight;
    function set__weight(v:StdTypes.Int):StdTypes.Int {
        this._weight = (v : stdgo.GoInt);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _typ(get, set) : Type_;
    function get__typ():Type_ return this._typ;
    function set__typ(v:Type_):Type_ {
        this._typ = v;
        return v;
    }
    public function new(?_dst:StdTypes.Int, ?_src:StdTypes.Int, ?_weight:StdTypes.Int, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_typ:Type_) this = new stdgo._internal.go.types.Types_t_monoedge.T_monoEdge((_dst : stdgo.GoInt), (_src : stdgo.GoInt), (_weight : stdgo.GoInt), _pos, _typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Named_static_extension) abstract Named(stdgo._internal.go.types.Types_named.Named) from stdgo._internal.go.types.Types_named.Named to stdgo._internal.go.types.Types_named.Named {
    public var _check(get, set) : Checker;
    function get__check():Checker return this._check;
    function set__check(v:Checker):Checker {
        this._check = (v : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return v;
    }
    public var _obj(get, set) : TypeName;
    function get__obj():TypeName return this._obj;
    function set__obj(v:TypeName):TypeName {
        this._obj = (v : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return v;
    }
    public var _fromRHS(get, set) : Type_;
    function get__fromRHS():Type_ return this._fromRHS;
    function set__fromRHS(v:Type_):Type_ {
        this._fromRHS = v;
        return v;
    }
    public var _inst(get, set) : T_instance;
    function get__inst():T_instance return this._inst;
    function set__inst(v:T_instance):T_instance {
        this._inst = (v : stdgo.Ref<stdgo._internal.go.types.Types_t_instance.T_instance>);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _state_(get, set) : std.UInt;
    function get__state_():std.UInt return this._state_;
    function set__state_(v:std.UInt):std.UInt {
        this._state_ = (v : stdgo.GoUInt32);
        return v;
    }
    public var _underlying(get, set) : Type_;
    function get__underlying():Type_ return this._underlying;
    function set__underlying(v:Type_):Type_ {
        this._underlying = v;
        return v;
    }
    public var _tparams(get, set) : TypeParamList;
    function get__tparams():TypeParamList return this._tparams;
    function set__tparams(v:TypeParamList):TypeParamList {
        this._tparams = (v : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        return v;
    }
    public var _methods(get, set) : Array<Func>;
    function get__methods():Array<Func> return [for (i in this._methods) i];
    function set__methods(v:Array<Func>):Array<Func> {
        this._methods = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        return v;
    }
    public var _loader(get, set) : Named -> stdgo.Tuple.Tuple3<Array<TypeParam>, Type_, Array<Func>>;
    function get__loader():Named -> stdgo.Tuple.Tuple3<Array<TypeParam>, Type_, Array<Func>> return _0 -> this._loader(_0);
    function set__loader(v:Named -> stdgo.Tuple.Tuple3<Array<TypeParam>, Type_, Array<Func>>):Named -> stdgo.Tuple.Tuple3<Array<TypeParam>, Type_, Array<Func>> {
        this._loader = v;
        return v;
    }
    public function new(?_check:Checker, ?_obj:TypeName, ?_fromRHS:Type_, ?_inst:T_instance, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_state_:std.UInt, ?_underlying:Type_, ?_tparams:TypeParamList, ?_methods:Array<Func>, ?_loader:Named -> stdgo.Tuple.Tuple3<Array<TypeParam>, Type_, Array<Func>>) this = new stdgo._internal.go.types.Types_named.Named((_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>), (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _fromRHS, (_inst : stdgo.Ref<stdgo._internal.go.types.Types_t_instance.T_instance>), _mu, (_state_ : stdgo.GoUInt32), _underlying, (_tparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>), ([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), _loader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_instance_static_extension) @:dox(hide) abstract T_instance(stdgo._internal.go.types.Types_t_instance.T_instance) from stdgo._internal.go.types.Types_t_instance.T_instance to stdgo._internal.go.types.Types_t_instance.T_instance {
    public var _orig(get, set) : Named;
    function get__orig():Named return this._orig;
    function set__orig(v:Named):Named {
        this._orig = (v : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return v;
    }
    public var _targs(get, set) : TypeList;
    function get__targs():TypeList return this._targs;
    function set__targs(v:TypeList):TypeList {
        this._targs = (v : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
        return v;
    }
    public var _expandedMethods(get, set) : StdTypes.Int;
    function get__expandedMethods():StdTypes.Int return this._expandedMethods;
    function set__expandedMethods(v:StdTypes.Int):StdTypes.Int {
        this._expandedMethods = (v : stdgo.GoInt);
        return v;
    }
    public var _ctxt(get, set) : Context;
    function get__ctxt():Context return this._ctxt;
    function set__ctxt(v:Context):Context {
        this._ctxt = (v : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return v;
    }
    public function new(?_orig:Named, ?_targs:TypeList, ?_expandedMethods:StdTypes.Int, ?_ctxt:Context) this = new stdgo._internal.go.types.Types_t_instance.T_instance((_orig : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), (_targs : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>), (_expandedMethods : stdgo.GoInt), (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_object_static_extension) @:dox(hide) abstract T_object(stdgo._internal.go.types.Types_t_object.T_object) from stdgo._internal.go.types.Types_t_object.T_object to stdgo._internal.go.types.Types_t_object.T_object {
    public var _parent(get, set) : Scope;
    function get__parent():Scope return this._parent;
    function set__parent(v:Scope):Scope {
        this._parent = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _pkg(get, set) : Package;
    function get__pkg():Package return this._pkg;
    function set__pkg(v:Package):Package {
        this._pkg = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _typ(get, set) : Type_;
    function get__typ():Type_ return this._typ;
    function set__typ(v:Type_):Type_ {
        this._typ = v;
        return v;
    }
    public var _order_(get, set) : std.UInt;
    function get__order_():std.UInt return this._order_;
    function set__order_(v:std.UInt):std.UInt {
        this._order_ = (v : stdgo.GoUInt32);
        return v;
    }
    public var _color_(get, set) : T_color;
    function get__color_():T_color return this._color_;
    function set__color_(v:T_color):T_color {
        this._color_ = v;
        return v;
    }
    public var _scopePos_(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__scopePos_():stdgo._internal.go.token.Token_pos.Pos return this._scopePos_;
    function set__scopePos_(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._scopePos_ = v;
        return v;
    }
    public function new(?_parent:Scope, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_pkg:Package, ?_name:String, ?_typ:Type_, ?_order_:std.UInt, ?_color_:T_color, ?_scopePos_:stdgo._internal.go.token.Token_pos.Pos) this = new stdgo._internal.go.types.Types_t_object.T_object((_parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), _pos, (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), (_name : stdgo.GoString), _typ, (_order_ : stdgo.GoUInt32), _color_, _scopePos_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.PkgName_static_extension) abstract PkgName(stdgo._internal.go.types.Types_pkgname.PkgName) from stdgo._internal.go.types.Types_pkgname.PkgName to stdgo._internal.go.types.Types_pkgname.PkgName {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public var _imported(get, set) : Package;
    function get__imported():Package return this._imported;
    function set__imported(v:Package):Package {
        this._imported = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return v;
    }
    public var _used(get, set) : Bool;
    function get__used():Bool return this._used;
    function set__used(v:Bool):Bool {
        this._used = v;
        return v;
    }
    public function new(?_object:T_object, ?_imported:Package, ?_used:Bool) this = new stdgo._internal.go.types.Types_pkgname.PkgName(_object, (_imported : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _used);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Const_static_extension) abstract Const(stdgo._internal.go.types.Types_const.Const) from stdgo._internal.go.types.Types_const.Const to stdgo._internal.go.types.Types_const.Const {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public var _val(get, set) : stdgo._internal.go.constant.Constant_value.Value;
    function get__val():stdgo._internal.go.constant.Constant_value.Value return this._val;
    function set__val(v:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        this._val = v;
        return v;
    }
    public function new(?_object:T_object, ?_val:stdgo._internal.go.constant.Constant_value.Value) this = new stdgo._internal.go.types.Types_const.Const(_object, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.TypeName_static_extension) abstract TypeName(stdgo._internal.go.types.Types_typename.TypeName) from stdgo._internal.go.types.Types_typename.TypeName to stdgo._internal.go.types.Types_typename.TypeName {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public function new(?_object:T_object) this = new stdgo._internal.go.types.Types_typename.TypeName(_object);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Var_static_extension) abstract Var(stdgo._internal.go.types.Types_var.Var) from stdgo._internal.go.types.Types_var.Var to stdgo._internal.go.types.Types_var.Var {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public var _embedded(get, set) : Bool;
    function get__embedded():Bool return this._embedded;
    function set__embedded(v:Bool):Bool {
        this._embedded = v;
        return v;
    }
    public var _isField(get, set) : Bool;
    function get__isField():Bool return this._isField;
    function set__isField(v:Bool):Bool {
        this._isField = v;
        return v;
    }
    public var _used(get, set) : Bool;
    function get__used():Bool return this._used;
    function set__used(v:Bool):Bool {
        this._used = v;
        return v;
    }
    public var _origin(get, set) : Var;
    function get__origin():Var return this._origin;
    function set__origin(v:Var):Var {
        this._origin = (v : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return v;
    }
    public function new(?_object:T_object, ?_embedded:Bool, ?_isField:Bool, ?_used:Bool, ?_origin:Var) this = new stdgo._internal.go.types.Types_var.Var(_object, _embedded, _isField, _used, (_origin : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Func_static_extension) abstract Func(stdgo._internal.go.types.Types_func.Func) from stdgo._internal.go.types.Types_func.Func to stdgo._internal.go.types.Types_func.Func {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public var _hasPtrRecv_(get, set) : Bool;
    function get__hasPtrRecv_():Bool return this._hasPtrRecv_;
    function set__hasPtrRecv_(v:Bool):Bool {
        this._hasPtrRecv_ = v;
        return v;
    }
    public var _origin(get, set) : Func;
    function get__origin():Func return this._origin;
    function set__origin(v:Func):Func {
        this._origin = (v : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return v;
    }
    public function new(?_object:T_object, ?_hasPtrRecv_:Bool, ?_origin:Func) this = new stdgo._internal.go.types.Types_func.Func(_object, _hasPtrRecv_, (_origin : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Label_static_extension) abstract Label(stdgo._internal.go.types.Types_label.Label) from stdgo._internal.go.types.Types_label.Label to stdgo._internal.go.types.Types_label.Label {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public var _used(get, set) : Bool;
    function get__used():Bool return this._used;
    function set__used(v:Bool):Bool {
        this._used = v;
        return v;
    }
    public function new(?_object:T_object, ?_used:Bool) this = new stdgo._internal.go.types.Types_label.Label(_object, _used);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Builtin_static_extension) abstract Builtin(stdgo._internal.go.types.Types_builtin.Builtin) from stdgo._internal.go.types.Types_builtin.Builtin to stdgo._internal.go.types.Types_builtin.Builtin {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public var _id(get, set) : T_builtinId;
    function get__id():T_builtinId return this._id;
    function set__id(v:T_builtinId):T_builtinId {
        this._id = v;
        return v;
    }
    public function new(?_object:T_object, ?_id:T_builtinId) this = new stdgo._internal.go.types.Types_builtin.Builtin(_object, _id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Nil_static_extension) abstract Nil(stdgo._internal.go.types.Types_nil.Nil) from stdgo._internal.go.types.Types_nil.Nil to stdgo._internal.go.types.Types_nil.Nil {
    public var _object(get, set) : T_object;
    function get__object():T_object return this._object;
    function set__object(v:T_object):T_object {
        this._object = v;
        return v;
    }
    public function new(?_object:T_object) this = new stdgo._internal.go.types.Types_nil.Nil(_object);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_operand_static_extension) @:dox(hide) abstract T_operand(stdgo._internal.go.types.Types_t_operand.T_operand) from stdgo._internal.go.types.Types_t_operand.T_operand to stdgo._internal.go.types.Types_t_operand.T_operand {
    public var _mode(get, set) : T_operandMode;
    function get__mode():T_operandMode return this._mode;
    function set__mode(v:T_operandMode):T_operandMode {
        this._mode = v;
        return v;
    }
    public var _expr(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get__expr():stdgo._internal.go.ast.Ast_expr.Expr return this._expr;
    function set__expr(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this._expr = v;
        return v;
    }
    public var _typ(get, set) : Type_;
    function get__typ():Type_ return this._typ;
    function set__typ(v:Type_):Type_ {
        this._typ = v;
        return v;
    }
    public var _val(get, set) : stdgo._internal.go.constant.Constant_value.Value;
    function get__val():stdgo._internal.go.constant.Constant_value.Value return this._val;
    function set__val(v:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        this._val = v;
        return v;
    }
    public var _id(get, set) : T_builtinId;
    function get__id():T_builtinId return this._id;
    function set__id(v:T_builtinId):T_builtinId {
        this._id = v;
        return v;
    }
    public function new(?_mode:T_operandMode, ?_expr:stdgo._internal.go.ast.Ast_expr.Expr, ?_typ:Type_, ?_val:stdgo._internal.go.constant.Constant_value.Value, ?_id:T_builtinId) this = new stdgo._internal.go.types.Types_t_operand.T_operand(_mode, _expr, _typ, _val, _id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Package_static_extension) abstract Package(stdgo._internal.go.types.Types_package.Package) from stdgo._internal.go.types.Types_package.Package to stdgo._internal.go.types.Types_package.Package {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _scope(get, set) : Scope;
    function get__scope():Scope return this._scope;
    function set__scope(v:Scope):Scope {
        this._scope = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _imports(get, set) : Array<Package>;
    function get__imports():Array<Package> return [for (i in this._imports) i];
    function set__imports(v:Array<Package>):Array<Package> {
        this._imports = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
        return v;
    }
    public var _complete(get, set) : Bool;
    function get__complete():Bool return this._complete;
    function set__complete(v:Bool):Bool {
        this._complete = v;
        return v;
    }
    public var _fake(get, set) : Bool;
    function get__fake():Bool return this._fake;
    function set__fake(v:Bool):Bool {
        this._fake = v;
        return v;
    }
    public var _cgo(get, set) : Bool;
    function get__cgo():Bool return this._cgo;
    function set__cgo(v:Bool):Bool {
        this._cgo = v;
        return v;
    }
    public var _goVersion(get, set) : String;
    function get__goVersion():String return this._goVersion;
    function set__goVersion(v:String):String {
        this._goVersion = (v : stdgo.GoString);
        return v;
    }
    public function new(?_path:String, ?_name:String, ?_scope:Scope, ?_imports:Array<Package>, ?_complete:Bool, ?_fake:Bool, ?_cgo:Bool, ?_goVersion:String) this = new stdgo._internal.go.types.Types_package.Package((_path : stdgo.GoString), (_name : stdgo.GoString), (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), ([for (i in _imports) (i : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), _complete, _fake, _cgo, (_goVersion : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Pointer__static_extension) abstract Pointer_(stdgo._internal.go.types.Types_pointer_.Pointer_) from stdgo._internal.go.types.Types_pointer_.Pointer_ to stdgo._internal.go.types.Types_pointer_.Pointer_ {
    public var _base(get, set) : Type_;
    function get__base():Type_ return this._base;
    function set__base(v:Type_):Type_ {
        this._base = v;
        return v;
    }
    public function new(?_base:Type_) this = new stdgo._internal.go.types.Types_pointer_.Pointer_(_base);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_ifacePair_static_extension) @:dox(hide) abstract T_ifacePair(stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair) from stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair to stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair {
    public var _x(get, set) : Interface;
    function get__x():Interface return this._x;
    function set__x(v:Interface):Interface {
        this._x = (v : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return v;
    }
    public var _y(get, set) : Interface;
    function get__y():Interface return this._y;
    function set__y(v:Interface):Interface {
        this._y = (v : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return v;
    }
    public var _prev(get, set) : T_ifacePair;
    function get__prev():T_ifacePair return this._prev;
    function set__prev(v:T_ifacePair):T_ifacePair {
        this._prev = (v : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
        return v;
    }
    public function new(?_x:Interface, ?_y:Interface, ?_prev:T_ifacePair) this = new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair((_x : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), (_y : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), (_prev : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_comparer_static_extension) @:dox(hide) abstract T_comparer(stdgo._internal.go.types.Types_t_comparer.T_comparer) from stdgo._internal.go.types.Types_t_comparer.T_comparer to stdgo._internal.go.types.Types_t_comparer.T_comparer {
    public var _ignoreTags(get, set) : Bool;
    function get__ignoreTags():Bool return this._ignoreTags;
    function set__ignoreTags(v:Bool):Bool {
        this._ignoreTags = v;
        return v;
    }
    public var _ignoreInvalids(get, set) : Bool;
    function get__ignoreInvalids():Bool return this._ignoreInvalids;
    function set__ignoreInvalids(v:Bool):Bool {
        this._ignoreInvalids = v;
        return v;
    }
    public function new(?_ignoreTags:Bool, ?_ignoreInvalids:Bool) this = new stdgo._internal.go.types.Types_t_comparer.T_comparer(_ignoreTags, _ignoreInvalids);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_declInfo_static_extension) @:dox(hide) abstract T_declInfo(stdgo._internal.go.types.Types_t_declinfo.T_declInfo) from stdgo._internal.go.types.Types_t_declinfo.T_declInfo to stdgo._internal.go.types.Types_t_declinfo.T_declInfo {
    public var _file(get, set) : Scope;
    function get__file():Scope return this._file;
    function set__file(v:Scope):Scope {
        this._file = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _lhs(get, set) : Array<Var>;
    function get__lhs():Array<Var> return [for (i in this._lhs) i];
    function set__lhs(v:Array<Var>):Array<Var> {
        this._lhs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return v;
    }
    public var _vtyp(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get__vtyp():stdgo._internal.go.ast.Ast_expr.Expr return this._vtyp;
    function set__vtyp(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this._vtyp = v;
        return v;
    }
    public var _init(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get__init():stdgo._internal.go.ast.Ast_expr.Expr return this._init;
    function set__init(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this._init = v;
        return v;
    }
    public var _inherited(get, set) : Bool;
    function get__inherited():Bool return this._inherited;
    function set__inherited(v:Bool):Bool {
        this._inherited = v;
        return v;
    }
    public var _tdecl(get, set) : stdgo._internal.go.ast.Ast_typespec.TypeSpec;
    function get__tdecl():stdgo._internal.go.ast.Ast_typespec.TypeSpec return this._tdecl;
    function set__tdecl(v:stdgo._internal.go.ast.Ast_typespec.TypeSpec):stdgo._internal.go.ast.Ast_typespec.TypeSpec {
        this._tdecl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        return v;
    }
    public var _fdecl(get, set) : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl;
    function get__fdecl():stdgo._internal.go.ast.Ast_funcdecl.FuncDecl return this._fdecl;
    function set__fdecl(v:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl):stdgo._internal.go.ast.Ast_funcdecl.FuncDecl {
        this._fdecl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        return v;
    }
    public var _deps(get, set) : Map<Object, Bool>;
    function get__deps():Map<Object, Bool> return {
        final __obj__:Map<Object, Bool> = [];
        for (key => value in this._deps) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__deps(v:Map<Object, Bool>):Map<Object, Bool> {
        this._deps = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?_file:Scope, ?_lhs:Array<Var>, ?_vtyp:stdgo._internal.go.ast.Ast_expr.Expr, ?_init:stdgo._internal.go.ast.Ast_expr.Expr, ?_inherited:Bool, ?_tdecl:stdgo._internal.go.ast.Ast_typespec.TypeSpec, ?_fdecl:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl, ?_deps:Map<Object, Bool>) this = new stdgo._internal.go.types.Types_t_declinfo.T_declInfo((_file : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), ([for (i in _lhs) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>), _vtyp, _init, _inherited, (_tdecl : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), (_fdecl : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>();
        for (key => value in _deps) {
            __obj__[key] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Scope_static_extension) abstract Scope(stdgo._internal.go.types.Types_scope.Scope) from stdgo._internal.go.types.Types_scope.Scope to stdgo._internal.go.types.Types_scope.Scope {
    public var _parent(get, set) : Scope;
    function get__parent():Scope return this._parent;
    function set__parent(v:Scope):Scope {
        this._parent = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _children(get, set) : Array<Scope>;
    function get__children():Array<Scope> return [for (i in this._children) i];
    function set__children(v:Array<Scope>):Array<Scope> {
        this._children = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        return v;
    }
    public var _number(get, set) : StdTypes.Int;
    function get__number():StdTypes.Int return this._number;
    function set__number(v:StdTypes.Int):StdTypes.Int {
        this._number = (v : stdgo.GoInt);
        return v;
    }
    public var _elems(get, set) : Map<String, Object>;
    function get__elems():Map<String, Object> return {
        final __obj__:Map<String, Object> = [];
        for (key => value in this._elems) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__elems(v:Map<String, Object>):Map<String, Object> {
        this._elems = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _end(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__end():stdgo._internal.go.token.Token_pos.Pos return this._end;
    function set__end(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._end = v;
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = (v : stdgo.GoString);
        return v;
    }
    public var _isFunc(get, set) : Bool;
    function get__isFunc():Bool return this._isFunc;
    function set__isFunc(v:Bool):Bool {
        this._isFunc = v;
        return v;
    }
    public function new(?_parent:Scope, ?_children:Array<Scope>, ?_number:StdTypes.Int, ?_elems:Map<String, Object>, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_end:stdgo._internal.go.token.Token_pos.Pos, ?_comment:String, ?_isFunc:Bool) this = new stdgo._internal.go.types.Types_scope.Scope((_parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), ([for (i in _children) (i : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>), (_number : stdgo.GoInt), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>();
        for (key => value in _elems) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    }, _pos, _end, (_comment : stdgo.GoString), _isFunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_lazyObject_static_extension) @:dox(hide) abstract T_lazyObject(stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject) from stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject to stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject {
    public var _parent(get, set) : Scope;
    function get__parent():Scope return this._parent;
    function set__parent(v:Scope):Scope {
        this._parent = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _resolve(get, set) : () -> Object;
    function get__resolve():() -> Object return () -> this._resolve();
    function set__resolve(v:() -> Object):() -> Object {
        this._resolve = v;
        return v;
    }
    public var _obj(get, set) : Object;
    function get__obj():Object return this._obj;
    function set__obj(v:Object):Object {
        this._obj = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public function new(?_parent:Scope, ?_resolve:() -> Object, ?_obj:Object, ?_once:stdgo._internal.sync.Sync_once.Once) this = new stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject((_parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), _resolve, _obj, _once);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Selection_static_extension) abstract Selection(stdgo._internal.go.types.Types_selection.Selection) from stdgo._internal.go.types.Types_selection.Selection to stdgo._internal.go.types.Types_selection.Selection {
    public var _kind(get, set) : SelectionKind;
    function get__kind():SelectionKind return this._kind;
    function set__kind(v:SelectionKind):SelectionKind {
        this._kind = v;
        return v;
    }
    public var _recv(get, set) : Type_;
    function get__recv():Type_ return this._recv;
    function set__recv(v:Type_):Type_ {
        this._recv = v;
        return v;
    }
    public var _obj(get, set) : Object;
    function get__obj():Object return this._obj;
    function set__obj(v:Object):Object {
        this._obj = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _indirect(get, set) : Bool;
    function get__indirect():Bool return this._indirect;
    function set__indirect(v:Bool):Bool {
        this._indirect = v;
        return v;
    }
    public function new(?_kind:SelectionKind, ?_recv:Type_, ?_obj:Object, ?_index:Array<StdTypes.Int>, ?_indirect:Bool) this = new stdgo._internal.go.types.Types_selection.Selection(_kind, _recv, _obj, ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), _indirect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Signature_static_extension) abstract Signature(stdgo._internal.go.types.Types_signature.Signature) from stdgo._internal.go.types.Types_signature.Signature to stdgo._internal.go.types.Types_signature.Signature {
    public var _rparams(get, set) : TypeParamList;
    function get__rparams():TypeParamList return this._rparams;
    function set__rparams(v:TypeParamList):TypeParamList {
        this._rparams = (v : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        return v;
    }
    public var _tparams(get, set) : TypeParamList;
    function get__tparams():TypeParamList return this._tparams;
    function set__tparams(v:TypeParamList):TypeParamList {
        this._tparams = (v : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        return v;
    }
    public var _scope(get, set) : Scope;
    function get__scope():Scope return this._scope;
    function set__scope(v:Scope):Scope {
        this._scope = (v : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return v;
    }
    public var _recv(get, set) : Var;
    function get__recv():Var return this._recv;
    function set__recv(v:Var):Var {
        this._recv = (v : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return v;
    }
    public var _params(get, set) : Tuple;
    function get__params():Tuple return this._params;
    function set__params(v:Tuple):Tuple {
        this._params = (v : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return v;
    }
    public var _results(get, set) : Tuple;
    function get__results():Tuple return this._results;
    function set__results(v:Tuple):Tuple {
        this._results = (v : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return v;
    }
    public var _variadic(get, set) : Bool;
    function get__variadic():Bool return this._variadic;
    function set__variadic(v:Bool):Bool {
        this._variadic = v;
        return v;
    }
    public function new(?_rparams:TypeParamList, ?_tparams:TypeParamList, ?_scope:Scope, ?_recv:Var, ?_params:Tuple, ?_results:Tuple, ?_variadic:Bool) this = new stdgo._internal.go.types.Types_signature.Signature((_rparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>), (_tparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>), (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>), (_recv : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>), (_params : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), (_results : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _variadic);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.StdSizes_static_extension) abstract StdSizes(stdgo._internal.go.types.Types_stdsizes.StdSizes) from stdgo._internal.go.types.Types_stdsizes.StdSizes to stdgo._internal.go.types.Types_stdsizes.StdSizes {
    public var wordSize(get, set) : haxe.Int64;
    function get_wordSize():haxe.Int64 return this.wordSize;
    function set_wordSize(v:haxe.Int64):haxe.Int64 {
        this.wordSize = (v : stdgo.GoInt64);
        return v;
    }
    public var maxAlign(get, set) : haxe.Int64;
    function get_maxAlign():haxe.Int64 return this.maxAlign;
    function set_maxAlign(v:haxe.Int64):haxe.Int64 {
        this.maxAlign = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?wordSize:haxe.Int64, ?maxAlign:haxe.Int64) this = new stdgo._internal.go.types.Types_stdsizes.StdSizes((wordSize : stdgo.GoInt64), (maxAlign : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Slice__static_extension) abstract Slice_(stdgo._internal.go.types.Types_slice_.Slice_) from stdgo._internal.go.types.Types_slice_.Slice_ to stdgo._internal.go.types.Types_slice_.Slice_ {
    public var _elem(get, set) : Type_;
    function get__elem():Type_ return this._elem;
    function set__elem(v:Type_):Type_ {
        this._elem = v;
        return v;
    }
    public function new(?_elem:Type_) this = new stdgo._internal.go.types.Types_slice_.Slice_(_elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_valueType_static_extension) @:dox(hide) abstract T_valueType(stdgo._internal.go.types.Types_t_valuetype.T_valueType) from stdgo._internal.go.types.Types_t_valuetype.T_valueType to stdgo._internal.go.types.Types_t_valuetype.T_valueType {
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _typ(get, set) : Type_;
    function get__typ():Type_ return this._typ;
    function set__typ(v:Type_):Type_ {
        this._typ = v;
        return v;
    }
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_typ:Type_) this = new stdgo._internal.go.types.Types_t_valuetype.T_valueType(_pos, _typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Struct_static_extension) abstract Struct(stdgo._internal.go.types.Types_struct.Struct) from stdgo._internal.go.types.Types_struct.Struct to stdgo._internal.go.types.Types_struct.Struct {
    public var _fields(get, set) : Array<Var>;
    function get__fields():Array<Var> return [for (i in this._fields) i];
    function set__fields(v:Array<Var>):Array<Var> {
        this._fields = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return v;
    }
    public var _tags(get, set) : Array<String>;
    function get__tags():Array<String> return [for (i in this._tags) i];
    function set__tags(v:Array<String>):Array<String> {
        this._tags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_fields:Array<Var>, ?_tags:Array<String>) this = new stdgo._internal.go.types.Types_struct.Struct(([for (i in _fields) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>), ([for (i in _tags) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_subster_static_extension) @:dox(hide) abstract T_subster(stdgo._internal.go.types.Types_t_subster.T_subster) from stdgo._internal.go.types.Types_t_subster.T_subster to stdgo._internal.go.types.Types_t_subster.T_subster {
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _smap(get, set) : T_substMap;
    function get__smap():T_substMap return this._smap;
    function set__smap(v:T_substMap):T_substMap {
        this._smap = v;
        return v;
    }
    public var _check(get, set) : Checker;
    function get__check():Checker return this._check;
    function set__check(v:Checker):Checker {
        this._check = (v : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return v;
    }
    public var _expanding(get, set) : Named;
    function get__expanding():Named return this._expanding;
    function set__expanding(v:Named):Named {
        this._expanding = (v : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return v;
    }
    public var _ctxt(get, set) : Context;
    function get__ctxt():Context return this._ctxt;
    function set__ctxt(v:Context):Context {
        this._ctxt = (v : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return v;
    }
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_smap:T_substMap, ?_check:Checker, ?_expanding:Named, ?_ctxt:Context) this = new stdgo._internal.go.types.Types_t_subster.T_subster(_pos, _smap, (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>), (_expanding : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Tuple_static_extension) abstract Tuple(stdgo._internal.go.types.Types_tuple.Tuple) from stdgo._internal.go.types.Types_tuple.Tuple to stdgo._internal.go.types.Types_tuple.Tuple {
    public var _vars(get, set) : Array<Var>;
    function get__vars():Array<Var> return [for (i in this._vars) i];
    function set__vars(v:Array<Var>):Array<Var> {
        this._vars = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return v;
    }
    public function new(?_vars:Array<Var>) this = new stdgo._internal.go.types.Types_tuple.Tuple(([for (i in _vars) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.TypeParamList_static_extension) abstract TypeParamList(stdgo._internal.go.types.Types_typeparamlist.TypeParamList) from stdgo._internal.go.types.Types_typeparamlist.TypeParamList to stdgo._internal.go.types.Types_typeparamlist.TypeParamList {
    public var _tparams(get, set) : Array<TypeParam>;
    function get__tparams():Array<TypeParam> return [for (i in this._tparams) i];
    function set__tparams(v:Array<TypeParam>):Array<TypeParam> {
        this._tparams = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return v;
    }
    public function new(?_tparams:Array<TypeParam>) this = new stdgo._internal.go.types.Types_typeparamlist.TypeParamList(([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.TypeList_static_extension) abstract TypeList(stdgo._internal.go.types.Types_typelist.TypeList) from stdgo._internal.go.types.Types_typelist.TypeList to stdgo._internal.go.types.Types_typelist.TypeList {
    public var _types(get, set) : Array<Type_>;
    function get__types():Array<Type_> return [for (i in this._types) i];
    function set__types(v:Array<Type_>):Array<Type_> {
        this._types = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public function new(?_types:Array<Type_>) this = new stdgo._internal.go.types.Types_typelist.TypeList(([for (i in _types) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.TypeParam_static_extension) abstract TypeParam(stdgo._internal.go.types.Types_typeparam.TypeParam) from stdgo._internal.go.types.Types_typeparam.TypeParam to stdgo._internal.go.types.Types_typeparam.TypeParam {
    public var _check(get, set) : Checker;
    function get__check():Checker return this._check;
    function set__check(v:Checker):Checker {
        this._check = (v : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return v;
    }
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public var _obj(get, set) : TypeName;
    function get__obj():TypeName return this._obj;
    function set__obj(v:TypeName):TypeName {
        this._obj = (v : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = (v : stdgo.GoInt);
        return v;
    }
    public var _bound(get, set) : Type_;
    function get__bound():Type_ return this._bound;
    function set__bound(v:Type_):Type_ {
        this._bound = v;
        return v;
    }
    public function new(?_check:Checker, ?_id:haxe.UInt64, ?_obj:TypeName, ?_index:StdTypes.Int, ?_bound:Type_) this = new stdgo._internal.go.types.Types_typeparam.TypeParam((_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>), (_id : stdgo.GoUInt64), (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), (_index : stdgo.GoInt), _bound);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T__TypeSet_static_extension) @:dox(hide) abstract T__TypeSet(stdgo._internal.go.types.Types_t__typeset.T__TypeSet) from stdgo._internal.go.types.Types_t__typeset.T__TypeSet to stdgo._internal.go.types.Types_t__typeset.T__TypeSet {
    public var _methods(get, set) : Array<Func>;
    function get__methods():Array<Func> return [for (i in this._methods) i];
    function set__methods(v:Array<Func>):Array<Func> {
        this._methods = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        return v;
    }
    public var _terms(get, set) : T_termlist;
    function get__terms():T_termlist return this._terms;
    function set__terms(v:T_termlist):T_termlist {
        this._terms = v;
        return v;
    }
    public var _comparable(get, set) : Bool;
    function get__comparable():Bool return this._comparable;
    function set__comparable(v:Bool):Bool {
        this._comparable = v;
        return v;
    }
    public function new(?_methods:Array<Func>, ?_terms:T_termlist, ?_comparable:Bool) this = new stdgo._internal.go.types.Types_t__typeset.T__TypeSet(([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), _terms, _comparable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_typeWriter_static_extension) @:dox(hide) abstract T_typeWriter(stdgo._internal.go.types.Types_t_typewriter.T_typeWriter) from stdgo._internal.go.types.Types_t_typewriter.T_typeWriter to stdgo._internal.go.types.Types_t_typewriter.T_typeWriter {
    public var _buf(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get__buf():stdgo._internal.bytes.Bytes_buffer.Buffer return this._buf;
    function set__buf(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this._buf = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return v;
    }
    public var _seen(get, set) : Map<Type_, Bool>;
    function get__seen():Map<Type_, Bool> return {
        final __obj__:Map<Type_, Bool> = [];
        for (key => value in this._seen) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__seen(v:Map<Type_, Bool>):Map<Type_, Bool> {
        this._seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _qf(get, set) : Qualifier;
    function get__qf():Qualifier return this._qf;
    function set__qf(v:Qualifier):Qualifier {
        this._qf = v;
        return v;
    }
    public var _ctxt(get, set) : Context;
    function get__ctxt():Context return this._ctxt;
    function set__ctxt(v:Context):Context {
        this._ctxt = (v : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return v;
    }
    public var _tparams(get, set) : TypeParamList;
    function get__tparams():TypeParamList return this._tparams;
    function set__tparams(v:TypeParamList):TypeParamList {
        this._tparams = (v : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        return v;
    }
    public var _paramNames(get, set) : Bool;
    function get__paramNames():Bool return this._paramNames;
    function set__paramNames(v:Bool):Bool {
        this._paramNames = v;
        return v;
    }
    public var _tpSubscripts(get, set) : Bool;
    function get__tpSubscripts():Bool return this._tpSubscripts;
    function set__tpSubscripts(v:Bool):Bool {
        this._tpSubscripts = v;
        return v;
    }
    public var _pkgInfo(get, set) : Bool;
    function get__pkgInfo():Bool return this._pkgInfo;
    function set__pkgInfo(v:Bool):Bool {
        this._pkgInfo = v;
        return v;
    }
    public function new(?_buf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_seen:Map<Type_, Bool>, ?_qf:Qualifier, ?_ctxt:Context, ?_tparams:TypeParamList, ?_paramNames:Bool, ?_tpSubscripts:Bool, ?_pkgInfo:Bool) this = new stdgo._internal.go.types.Types_t_typewriter.T_typeWriter((_buf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
        for (key => value in _seen) {
            __obj__[key] = value;
        };
        __obj__;
    }, _qf, (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>), (_tparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>), _paramNames, _tpSubscripts, _pkgInfo);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_term_static_extension) @:dox(hide) abstract T_term(stdgo._internal.go.types.Types_t_term.T_term) from stdgo._internal.go.types.Types_t_term.T_term to stdgo._internal.go.types.Types_t_term.T_term {
    public var _tilde(get, set) : Bool;
    function get__tilde():Bool return this._tilde;
    function set__tilde(v:Bool):Bool {
        this._tilde = v;
        return v;
    }
    public var _typ(get, set) : Type_;
    function get__typ():Type_ return this._typ;
    function set__typ(v:Type_):Type_ {
        this._typ = v;
        return v;
    }
    public function new(?_tilde:Bool, ?_typ:Type_) this = new stdgo._internal.go.types.Types_t_term.T_term(_tilde, _typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_unifier_static_extension) @:dox(hide) abstract T_unifier(stdgo._internal.go.types.Types_t_unifier.T_unifier) from stdgo._internal.go.types.Types_t_unifier.T_unifier to stdgo._internal.go.types.Types_t_unifier.T_unifier {
    public var _handles(get, set) : Map<TypeParam, Type_>;
    function get__handles():Map<TypeParam, Type_> return {
        final __obj__:Map<TypeParam, Type_> = [];
        for (key => value in this._handles) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__handles(v:Map<TypeParam, Type_>):Map<TypeParam, Type_> {
        this._handles = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
            };
            __obj__;
        };
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
        return v;
    }
    public var _enableInterfaceInference(get, set) : Bool;
    function get__enableInterfaceInference():Bool return this._enableInterfaceInference;
    function set__enableInterfaceInference(v:Bool):Bool {
        this._enableInterfaceInference = v;
        return v;
    }
    public function new(?_handles:Map<TypeParam, Type_>, ?_depth:StdTypes.Int, ?_enableInterfaceInference:Bool) this = new stdgo._internal.go.types.Types_t_unifier.T_unifier({
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>>();
        for (key => value in _handles) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
        };
        __obj__;
    }, (_depth : stdgo.GoInt), _enableInterfaceInference);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.Union_static_extension) abstract Union(stdgo._internal.go.types.Types_union.Union) from stdgo._internal.go.types.Types_union.Union to stdgo._internal.go.types.Types_union.Union {
    public var _terms(get, set) : Array<Term>;
    function get__terms():Array<Term> return [for (i in this._terms) i];
    function set__terms(v:Array<Term>):Array<Term> {
        this._terms = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
        return v;
    }
    public function new(?_terms:Array<Term>) this = new stdgo._internal.go.types.Types_union.Union(([for (i in _terms) (i : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.types.Types.T_version_static_extension) @:dox(hide) abstract T_version(stdgo._internal.go.types.Types_t_version.T_version) from stdgo._internal.go.types.Types_t_version.T_version to stdgo._internal.go.types.Types_t_version.T_version {
    public var _major(get, set) : StdTypes.Int;
    function get__major():StdTypes.Int return this._major;
    function set__major(v:StdTypes.Int):StdTypes.Int {
        this._major = (v : stdgo.GoInt);
        return v;
    }
    public var _minor(get, set) : StdTypes.Int;
    function get__minor():StdTypes.Int return this._minor;
    function set__minor(v:StdTypes.Int):StdTypes.Int {
        this._minor = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_major:StdTypes.Int, ?_minor:StdTypes.Int) this = new stdgo._internal.go.types.Types_t_version.T_version((_major : stdgo.GoInt), (_minor : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.go.types.Types_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.go.types.Types_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.go.types.Types_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.go.types.Types_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.go.types.Types_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.go.types.Types_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.go.types.Types_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.go.types.Types_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.go.types.Types_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.go.types.Types_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.go.types.Types_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.go.types.Types_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.go.types.Types_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.go.types.Types_t__struct_6.T__struct_6;
@:dox(hide) typedef T__struct_7Pointer = stdgo._internal.go.types.Types_t__struct_7pointer.T__struct_7Pointer;
@:dox(hide) class T__struct_7_static_extension {

}
@:dox(hide) typedef T__struct_7 = stdgo._internal.go.types.Types_t__struct_7.T__struct_7;
@:dox(hide) typedef T__struct_8Pointer = stdgo._internal.go.types.Types_t__struct_8pointer.T__struct_8Pointer;
@:dox(hide) class T__struct_8_static_extension {

}
@:dox(hide) typedef T__struct_8 = stdgo._internal.go.types.Types_t__struct_8.T__struct_8;
typedef ImportMode = stdgo._internal.go.types.Types_importmode.ImportMode;
typedef BasicKind = stdgo._internal.go.types.Types_basickind.BasicKind;
typedef BasicInfo = stdgo._internal.go.types.Types_basicinfo.BasicInfo;
typedef ChanDir = stdgo._internal.go.types.Types_chandir.ChanDir;
@:dox(hide) typedef T_atPos = stdgo._internal.go.types.Types_t_atpos.T_atPos;
@:dox(hide) typedef T_opPredicates = stdgo._internal.go.types.Types_t_oppredicates.T_opPredicates;
@:dox(hide) typedef T_exprKind = stdgo._internal.go.types.Types_t_exprkind.T_exprKind;
@:dox(hide) typedef T_nodeSet = stdgo._internal.go.types.Types_t_nodeset.T_nodeSet;
@:dox(hide) typedef T_nodeQueue = stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue;
@:dox(hide) typedef T_methodSet = stdgo._internal.go.types.Types_t_methodset.T_methodSet;
@:dox(hide) typedef T_namedState = stdgo._internal.go.types.Types_t_namedstate.T_namedState;
@:dox(hide) typedef T_color = stdgo._internal.go.types.Types_t_color.T_color;
@:dox(hide) typedef T_objset = stdgo._internal.go.types.Types_t_objset.T_objset;
@:dox(hide) typedef T_operandMode = stdgo._internal.go.types.Types_t_operandmode.T_operandMode;
@:dox(hide) typedef T_inSourceOrder = stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder;
typedef SelectionKind = stdgo._internal.go.types.Types_selectionkind.SelectionKind;
@:dox(hide) typedef T_stmtContext = stdgo._internal.go.types.Types_t_stmtcontext.T_stmtContext;
@:dox(hide) typedef T_valueMap = stdgo._internal.go.types.Types_t_valuemap.T_valueMap;
@:dox(hide) typedef T_substMap = stdgo._internal.go.types.Types_t_substmap.T_substMap;
@:dox(hide) typedef T_termlist = stdgo._internal.go.types.Types_t_termlist.T_termlist;
@:dox(hide) typedef T_byUniqueMethodName = stdgo._internal.go.types.Types_t_byuniquemethodname.T_byUniqueMethodName;
typedef Qualifier = stdgo._internal.go.types.Types_qualifier.Qualifier;
@:dox(hide) typedef T_unifyMode = stdgo._internal.go.types.Types_t_unifymode.T_unifyMode;
@:dox(hide) typedef T_typeParamsById = stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById;
typedef Term = stdgo._internal.go.types.Types_term.Term;
@:dox(hide) typedef T_builtinId = stdgo._internal.go.types.Types_t_builtinid.T_builtinId;
typedef ErrorPointer = stdgo._internal.go.types.Types_errorpointer.ErrorPointer;
class Error_static_extension {
    static public function error(_err:Error):String {
        return stdgo._internal.go.types.Types_error_static_extension.Error_static_extension.error(_err);
    }
}
typedef ArgumentErrorPointer = stdgo._internal.go.types.Types_argumenterrorpointer.ArgumentErrorPointer;
class ArgumentError_static_extension {
    static public function unwrap(_e:ArgumentError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError>);
        return stdgo._internal.go.types.Types_argumenterror_static_extension.ArgumentError_static_extension.unwrap(_e);
    }
    static public function error(_e:ArgumentError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError>);
        return stdgo._internal.go.types.Types_argumenterror_static_extension.ArgumentError_static_extension.error(_e);
    }
}
typedef ConfigPointer = stdgo._internal.go.types.Types_configpointer.ConfigPointer;
class Config_static_extension {
    static public function _sizeof(_conf:Config, t:Type_):haxe.Int64 {
        final _conf = (_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        return stdgo._internal.go.types.Types_config_static_extension.Config_static_extension._sizeof(_conf, t);
    }
    static public function _offsetof(_conf:Config, t:Type_, _index:Array<StdTypes.Int>):haxe.Int64 {
        final _conf = (_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.go.types.Types_config_static_extension.Config_static_extension._offsetof(_conf, t, _index);
    }
    static public function _offsetsof(_conf:Config, t:Struct):Array<haxe.Int64> {
        final _conf = (_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        final t = (t : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        return [for (i in stdgo._internal.go.types.Types_config_static_extension.Config_static_extension._offsetsof(_conf, t)) i];
    }
    static public function _alignof(_conf:Config, t:Type_):haxe.Int64 {
        final _conf = (_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        return stdgo._internal.go.types.Types_config_static_extension.Config_static_extension._alignof(_conf, t);
    }
    static public function check(_conf:Config, _path:String, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _files:Array<stdgo._internal.go.ast.Ast_file.File>, _info:Info):stdgo.Tuple<Package, stdgo.Error> {
        final _conf = (_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        final _path = (_path : stdgo.GoString);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _files = ([for (i in _files) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        final _info = (_info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        return {
            final obj = stdgo._internal.go.types.Types_config_static_extension.Config_static_extension.check(_conf, _path, _fset, _files, _info);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef InfoPointer = stdgo._internal.go.types.Types_infopointer.InfoPointer;
class Info_static_extension {
    static public function objectOf(_info:Info, _id:stdgo._internal.go.ast.Ast_ident.Ident):Object {
        final _info = (_info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        final _id = (_id : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.types.Types_info_static_extension.Info_static_extension.objectOf(_info, _id);
    }
    static public function typeOf(_info:Info, _e:stdgo._internal.go.ast.Ast_expr.Expr):Type_ {
        final _info = (_info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        return stdgo._internal.go.types.Types_info_static_extension.Info_static_extension.typeOf(_info, _e);
    }
    static public function _recordTypes(_info:Info):Bool {
        final _info = (_info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        return stdgo._internal.go.types.Types_info_static_extension.Info_static_extension._recordTypes(_info);
    }
}
typedef TypeAndValuePointer = stdgo._internal.go.types.Types_typeandvaluepointer.TypeAndValuePointer;
class TypeAndValue_static_extension {
    static public function hasOk(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.hasOk(_tv);
    }
    static public function assignable(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.assignable(_tv);
    }
    static public function addressable(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.addressable(_tv);
    }
    static public function isNil(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.isNil(_tv);
    }
    static public function isValue(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.isValue(_tv);
    }
    static public function isBuiltin(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.isBuiltin(_tv);
    }
    static public function isType(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.isType(_tv);
    }
    static public function isVoid(_tv:TypeAndValue):Bool {
        return stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension.isVoid(_tv);
    }
}
typedef InstancePointer = stdgo._internal.go.types.Types_instancepointer.InstancePointer;
class Instance_static_extension {

}
typedef InitializerPointer = stdgo._internal.go.types.Types_initializerpointer.InitializerPointer;
class Initializer_static_extension {
    static public function string(_init:Initializer):String {
        final _init = (_init : stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>);
        return stdgo._internal.go.types.Types_initializer_static_extension.Initializer_static_extension.string(_init);
    }
}
typedef Array_Pointer = stdgo._internal.go.types.Types_array_pointer.Array_Pointer;
class Array__static_extension {
    static public function string(_a:Array_):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>);
        return stdgo._internal.go.types.Types_array__static_extension.Array__static_extension.string(_a);
    }
    static public function underlying(_a:Array_):Type_ {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>);
        return stdgo._internal.go.types.Types_array__static_extension.Array__static_extension.underlying(_a);
    }
    static public function elem(_a:Array_):Type_ {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>);
        return stdgo._internal.go.types.Types_array__static_extension.Array__static_extension.elem(_a);
    }
    static public function len(_a:Array_):haxe.Int64 {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>);
        return stdgo._internal.go.types.Types_array__static_extension.Array__static_extension.len(_a);
    }
}
typedef BasicPointer = stdgo._internal.go.types.Types_basicpointer.BasicPointer;
class Basic_static_extension {
    static public function string(_b:Basic):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return stdgo._internal.go.types.Types_basic_static_extension.Basic_static_extension.string(_b);
    }
    static public function underlying(_b:Basic):Type_ {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return stdgo._internal.go.types.Types_basic_static_extension.Basic_static_extension.underlying(_b);
    }
    static public function name(_b:Basic):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return stdgo._internal.go.types.Types_basic_static_extension.Basic_static_extension.name(_b);
    }
    static public function info(_b:Basic):BasicInfo {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return stdgo._internal.go.types.Types_basic_static_extension.Basic_static_extension.info(_b);
    }
    static public function kind(_b:Basic):BasicKind {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return stdgo._internal.go.types.Types_basic_static_extension.Basic_static_extension.kind(_b);
    }
}
typedef ChanPointer = stdgo._internal.go.types.Types_chanpointer.ChanPointer;
class Chan_static_extension {
    static public function string(_c:Chan):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>);
        return stdgo._internal.go.types.Types_chan_static_extension.Chan_static_extension.string(_c);
    }
    static public function underlying(_c:Chan):Type_ {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>);
        return stdgo._internal.go.types.Types_chan_static_extension.Chan_static_extension.underlying(_c);
    }
    static public function elem(_c:Chan):Type_ {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>);
        return stdgo._internal.go.types.Types_chan_static_extension.Chan_static_extension.elem(_c);
    }
    static public function dir(_c:Chan):ChanDir {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>);
        return stdgo._internal.go.types.Types_chan_static_extension.Chan_static_extension.dir(_c);
    }
}
@:dox(hide) typedef T_exprInfoPointer = stdgo._internal.go.types.Types_t_exprinfopointer.T_exprInfoPointer;
@:dox(hide) class T_exprInfo_static_extension {

}
@:dox(hide) typedef T_environmentPointer = stdgo._internal.go.types.Types_t_environmentpointer.T_environmentPointer;
@:dox(hide) class T_environment_static_extension {
    static public function _lookup(_env:T_environment, _name:String):Object {
        final _env = (_env : stdgo.Ref<stdgo._internal.go.types.Types_t_environment.T_environment>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_t_environment_static_extension.T_environment_static_extension._lookup(_env, _name);
    }
}
@:dox(hide) typedef T_importKeyPointer = stdgo._internal.go.types.Types_t_importkeypointer.T_importKeyPointer;
@:dox(hide) class T_importKey_static_extension {

}
@:dox(hide) typedef T_dotImportKeyPointer = stdgo._internal.go.types.Types_t_dotimportkeypointer.T_dotImportKeyPointer;
@:dox(hide) class T_dotImportKey_static_extension {

}
@:dox(hide) typedef T_actionPointer = stdgo._internal.go.types.Types_t_actionpointer.T_actionPointer;
@:dox(hide) class T_action_static_extension {
    static public function _describef(_a:T_action, _pos:T_positioner, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_t_action.T_action>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_t_action_static_extension.T_action_static_extension._describef(_a, _pos, _format, ...[for (i in _args) i]);
    }
}
@:dox(hide) typedef T_actionDescPointer = stdgo._internal.go.types.Types_t_actiondescpointer.T_actionDescPointer;
@:dox(hide) class T_actionDesc_static_extension {

}
typedef CheckerPointer = stdgo._internal.go.types.Types_checkerpointer.CheckerPointer;
class Checker_static_extension {
    static public function _verifyVersionf(_check:Checker, _at:T_positioner, _v:T_version, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._verifyVersionf(_check, _at, _v, _format, ...[for (i in _args) i]);
    }
    static public function _allowVersion(_check:Checker, _pkg:Package, _at:T_positioner, _v:T_version):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._allowVersion(_check, _pkg, _at, _v);
    }
    static public function _langCompat(_check:Checker, _lit:stdgo._internal.go.ast.Ast_basiclit.BasicLit):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lit = (_lit : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._langCompat(_check, _lit);
    }
    static public function _validType0(_check:Checker, _typ:Type_, _nest:Array<Named>, _path:Array<Named>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _nest = ([for (i in _nest) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
        final _path = ([for (i in _path) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._validType0(_check, _typ, _nest, _path);
    }
    static public function _validType(_check:Checker, _typ:Named):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._validType(_check, _typ);
    }
    static public function _typeList(_check:Checker, _list:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Array<Type_> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return [for (i in stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._typeList(_check, _list)) i];
    }
    static public function _arrayLength(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr):haxe.Int64 {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._arrayLength(_check, _e);
    }
    static public function _instantiatedType(_check:Checker, _ix:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr, _def:Named):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _ix = (_ix : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._instantiatedType(_check, _ix, _def);
    }
    static public function _typInternal(_check:Checker, _e0:stdgo._internal.go.ast.Ast_expr.Expr, _def:Named):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._typInternal(_check, _e0, _def);
    }
    static public function _genericType(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _cause:stdgo.Pointer<String>):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._genericType(_check, _e, _cause);
    }
    static public function _definedType(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _def:Named):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._definedType(_check, _e, _def);
    }
    static public function _validVarType(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _typ:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._validVarType(_check, _e, _typ);
    }
    static public function _varType(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._varType(_check, _e);
    }
    static public function _typ(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._typ(_check, _e);
    }
    static public function _ident(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_ident.Ident, _def:Named, _wantType:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _e = (_e : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._ident(_check, _x, _e, _def, _wantType);
    }
    static public function _newTypeParam(_check:Checker, _obj:TypeName, _constraint:Type_):TypeParam {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._newTypeParam(_check, _obj, _constraint);
    }
    static public function _subst(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _typ:Type_, _smap:T_substMap, _expanding:Named, _ctxt:Context):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _expanding = (_expanding : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._subst(_check, _pos, _typ, _smap, _expanding, _ctxt);
    }
    static public function _tag(_check:Checker, _t:stdgo._internal.go.ast.Ast_basiclit.BasicLit):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _t = (_t : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._tag(_check, _t);
    }
    static public function _declareInSet(_check:Checker, _oset:T_objset, _pos:stdgo._internal.go.token.Token_pos.Pos, _obj:Object):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _oset = (_oset : stdgo.Ref<stdgo._internal.go.types.Types_t_objset.T_objset>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._declareInSet(_check, _oset, _pos, _obj);
    }
    static public function _structType(_check:Checker, _styp:Struct, _e:stdgo._internal.go.ast.Ast_structtype.StructType):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _styp = (_styp : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        final _e = (_e : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._structType(_check, _styp, _e);
    }
    static public function _stmt(_check:Checker, _ctxt:T_stmtContext, _s:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._stmt(_check, _ctxt, _s);
    }
    static public function _caseTypes(_check:Checker, _x:T_operand, _types:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _seen:Map<Type_, stdgo._internal.go.ast.Ast_expr.Expr>):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo._internal.go.ast.Ast_expr.Expr>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._caseTypes(_check, _x, _types, _seen);
    }
    static public function _isNil(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isNil(_check, _e);
    }
    static public function _caseValues(_check:Checker, _x:T_operand, _values:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _seen:T_valueMap):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _values = ([for (i in _values) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._caseValues(_check, _x, _values, _seen);
    }
    static public function _suspendedCall(_check:Checker, _keyword:String, _call:stdgo._internal.go.ast.Ast_callexpr.CallExpr):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _keyword = (_keyword : stdgo.GoString);
        final _call = (_call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._suspendedCall(_check, _keyword, _call);
    }
    static public function _closeScope(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._closeScope(_check);
    }
    static public function _openScope(_check:Checker, _node:stdgo._internal.go.ast.Ast_node.Node, _comment:String):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _comment = (_comment : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._openScope(_check, _node, _comment);
    }
    static public function _multipleDefaults(_check:Checker, _list:Array<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._multipleDefaults(_check, _list);
    }
    static public function _stmtList(_check:Checker, _ctxt:T_stmtContext, _list:Array<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._stmtList(_check, _ctxt, _list);
    }
    static public function _simpleStmt(_check:Checker, _s:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._simpleStmt(_check, _s);
    }
    static public function _usage(_check:Checker, _scope:Scope):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _scope = (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._usage(_check, _scope);
    }
    static public function _funcBody(_check:Checker, _decl:T_declInfo, _name:String, _sig:Signature, _body:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt, _iota:stdgo._internal.go.constant.Constant_value.Value):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _decl = (_decl : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        final _name = (_name : stdgo.GoString);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        final _body = (_body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._funcBody(_check, _decl, _name, _sig, _body, _iota);
    }
    static public function _collectParams(_check:Checker, _scope:Scope, _list:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _variadicOk:Bool):stdgo.Tuple<Array<Var>, Bool> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _scope = (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _list = (_list : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._collectParams(_check, _scope, _list, _variadicOk);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _funcType(_check:Checker, _sig:Signature, _recvPar:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _ftyp:stdgo._internal.go.ast.Ast_functype.FuncType):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        final _recvPar = (_recvPar : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        final _ftyp = (_ftyp : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._funcType(_check, _sig, _recvPar, _ftyp);
    }
    static public function _isTerminatingSwitch(_check:Checker, _body:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt, _label:String):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _body = (_body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        final _label = (_label : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isTerminatingSwitch(_check, _body, _label);
    }
    static public function _isTerminatingList(_check:Checker, _list:Array<stdgo._internal.go.ast.Ast_stmt.Stmt>, _label:String):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        final _label = (_label : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isTerminatingList(_check, _list, _label);
    }
    static public function _isTerminating(_check:Checker, _s:stdgo._internal.go.ast.Ast_stmt.Stmt, _label:String):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _label = (_label : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isTerminating(_check, _s, _label);
    }
    static public function _errorUnusedPkg(_check:Checker, _obj:PkgName):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._errorUnusedPkg(_check, _obj);
    }
    static public function _unusedImports(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._unusedImports(_check);
    }
    static public function _packageObjects(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._packageObjects(_check);
    }
    static public function _resolveBaseTypeName(_check:Checker, _seenPtr:Bool, _typ:stdgo._internal.go.ast.Ast_expr.Expr, _fileScopes:Array<Scope>):stdgo.Tuple<Bool, TypeName> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _fileScopes = ([for (i in _fileScopes) (i : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._resolveBaseTypeName(_check, _seenPtr, _typ, _fileScopes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _unpackRecv(_check:Checker, _rtyp:stdgo._internal.go.ast.Ast_expr.Expr, _unpackParams:Bool):stdgo.Tuple.Tuple3<Bool, stdgo._internal.go.ast.Ast_ident.Ident, Array<stdgo._internal.go.ast.Ast_ident.Ident>> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._unpackRecv(_check, _rtyp, _unpackParams);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i] };
        };
    }
    static public function _collectObjects(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._collectObjects(_check);
    }
    static public function _importPackage(_check:Checker, _at:T_positioner, _path:String, _dir:String):Package {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _path = (_path : stdgo.GoString);
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._importPackage(_check, _at, _path, _dir);
    }
    static public function _filename(_check:Checker, _fileNo:StdTypes.Int):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _fileNo = (_fileNo : stdgo.GoInt);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._filename(_check, _fileNo);
    }
    static public function _declarePkgObj(_check:Checker, _ident:stdgo._internal.go.ast.Ast_ident.Ident, _obj:Object, _d:T_declInfo):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _ident = (_ident : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._declarePkgObj(_check, _ident, _obj, _d);
    }
    static public function _arityMatch(_check:Checker, _s:stdgo._internal.go.ast.Ast_valuespec.ValueSpec, _init:stdgo._internal.go.ast.Ast_valuespec.ValueSpec):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        final _init = (_init : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._arityMatch(_check, _s, _init);
    }
    static public function _context(_check:Checker):Context {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._context(_check);
    }
    static public function _newNamedInstance(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _orig:Named, _targs:Array<Type_>, _expanding:Named):Named {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _orig = (_orig : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _expanding = (_expanding : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._newNamedInstance(_check, _pos, _orig, _targs, _expanding);
    }
    static public function _newNamed(_check:Checker, _obj:TypeName, _underlying:Type_, _methods:Array<Func>):Named {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        final _methods = ([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._newNamed(_check, _obj, _underlying, _methods);
    }
    static public function _reportInstanceLoop(_check:Checker, _v:StdTypes.Int):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _v = (_v : stdgo.GoInt);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._reportInstanceLoop(_check, _v);
    }
    static public function _monomorph(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._monomorph(_check);
    }
    static public function _newAssertableTo(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, v:Type_, t:Type_, _cause:stdgo.Pointer<String>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._newAssertableTo(_check, _pos, v, t, _cause);
    }
    static public function _assertableTo(_check:Checker, v:Type_, t:Type_, _cause:stdgo.Pointer<String>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._assertableTo(_check, v, t, _cause);
    }
    static public function _funcString(_check:Checker, _f:Func, _pkgInfo:Bool):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _f = (_f : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._funcString(_check, _f, _pkgInfo);
    }
    static public function _interfacePtrError(_check:Checker, t:Type_):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._interfacePtrError(_check, t);
    }
    static public function _missingMethod(_check:Checker, v:Type_, t:Type_, _static:Bool, _equivalent:(Type_, Type_) -> Bool, _cause:stdgo.Pointer<String>):stdgo.Tuple<Func, Bool> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _equivalent = _equivalent;
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._missingMethod(_check, v, t, _static, _equivalent, _cause);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _blockBranches(_check:Checker, _all:Scope, _parent:T_block, _lstmt:stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt, _list:Array<stdgo._internal.go.ast.Ast_stmt.Stmt>):Array<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _all = (_all : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>);
        final _lstmt = (_lstmt : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        return [for (i in stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._blockBranches(_check, _all, _parent, _lstmt, _list)) i];
    }
    static public function _labels(_check:Checker, _body:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _body = (_body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._labels(_check, _body);
    }
    static public function _interfaceType(_check:Checker, _ityp:Interface, _iface:stdgo._internal.go.ast.Ast_interfacetype.InterfaceType, _def:Named):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _ityp = (_ityp : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        final _iface = (_iface : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._interfaceType(_check, _ityp, _iface, _def);
    }
    static public function _newInterface(_check:Checker):Interface {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._newInterface(_check);
    }
    static public function _implements(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, v:Type_, t:Type_, _constraint:Bool, _cause:stdgo.Pointer<String>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._implements(_check, _pos, v, t, _constraint, _cause);
    }
    static public function _verify(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:Array<TypeParam>, _targs:Array<Type_>, _ctxt:Context):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._verify(_check, _pos, _tparams, _targs, _ctxt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _validateTArgLen(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _ntparams:StdTypes.Int, _ntargs:StdTypes.Int):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _ntparams = (_ntparams : stdgo.GoInt);
        final _ntargs = (_ntargs : stdgo.GoInt);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._validateTArgLen(_check, _pos, _ntparams, _ntargs);
    }
    static public function _instance(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _orig:Type_, _targs:Array<Type_>, _expanding:Named, _ctxt:Context):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _expanding = (_expanding : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._instance(_check, _pos, _orig, _targs, _expanding, _ctxt);
    }
    static public function _reportCycle(_check:Checker, _cycle:Array<Object>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _cycle = ([for (i in _cycle) i] : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._reportCycle(_check, _cycle);
    }
    static public function _initOrder(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._initOrder(_check);
    }
    static public function _renameTParams(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:Array<TypeParam>, _typ:Type_):stdgo.Tuple<Array<TypeParam>, Type_> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._renameTParams(_check, _pos, _tparams, _typ);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _infer(_check:Checker, _posn:T_positioner, _tparams:Array<TypeParam>, _targs:Array<Type_>, _params:Tuple, _args:Array<T_operand>):Array<Type_> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _params = (_params : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        final _args = ([for (i in _args) (i : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>);
        return [for (i in stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._infer(_check, _posn, _tparams, _targs, _params, _args)) i];
    }
    static public function _indexedElts(_check:Checker, _elts:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _typ:Type_, _length:haxe.Int64):haxe.Int64 {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _elts = ([for (i in _elts) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _length = (_length : stdgo.GoInt64);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._indexedElts(_check, _elts, _typ, _length);
    }
    static public function _isValidIndex(_check:Checker, _x:T_operand, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _what:String, _allowNegative:Bool):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _what = (_what : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isValidIndex(_check, _x, _code, _what, _allowNegative);
    }
    static public function _index(_check:Checker, _index:stdgo._internal.go.ast.Ast_expr.Expr, _max:haxe.Int64):stdgo.Tuple<Type_, haxe.Int64> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _max = (_max : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._index(_check, _index, _max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _singleIndex(_check:Checker, _expr:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr):stdgo._internal.go.ast.Ast_expr.Expr {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _expr = (_expr : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._singleIndex(_check, _expr);
    }
    static public function _sliceExpr(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _e = (_e : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._sliceExpr(_check, _x, _e);
    }
    static public function _indexExpr(_check:Checker, _x:T_operand, _e:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _e = (_e : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._indexExpr(_check, _x, _e);
    }
    static public function _singleValue(_check:Checker, _x:T_operand):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._singleValue(_check, _x);
    }
    static public function _exclude(_check:Checker, _x:T_operand, _modeset:std.UInt):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _modeset = (_modeset : stdgo.GoUInt);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._exclude(_check, _x, _modeset);
    }
    static public function _exprOrType(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr, _allowGeneric:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._exprOrType(_check, _x, _e, _allowGeneric);
    }
    static public function _exprWithHint(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr, _hint:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._exprWithHint(_check, _x, _e, _hint);
    }
    static public function _multiExpr(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _allowCommaOk:Bool):stdgo.Tuple<Array<T_operand>, Bool> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._multiExpr(_check, _e, _allowCommaOk);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _genericExpr(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._genericExpr(_check, _x, _e);
    }
    static public function _expr(_check:Checker, t:Type_, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._expr(_check, t, _x, _e);
    }
    static public function _typeAssertion(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _x:T_operand, t:Type_, _typeSwitch:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._typeAssertion(_check, _e, _x, t, _typeSwitch);
    }
    static public function _exprInternal(_check:Checker, t:Type_, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr, _hint:Type_):T_exprKind {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._exprInternal(_check, t, _x, _e, _hint);
    }
    static public function _nonGeneric(_check:Checker, t:Type_, _x:T_operand):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._nonGeneric(_check, t, _x);
    }
    static public function _rawExpr(_check:Checker, t:Type_, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr, _hint:Type_, _allowGeneric:Bool):T_exprKind {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._rawExpr(_check, t, _x, _e, _hint, _allowGeneric);
    }
    static public function _matchTypes(_check:Checker, _x:T_operand, _y:T_operand):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._matchTypes(_check, _x, _y);
    }
    static public function _binary(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr, _lhs:stdgo._internal.go.ast.Ast_expr.Expr, _rhs:stdgo._internal.go.ast.Ast_expr.Expr, _op:stdgo._internal.go.token.Token_token.Token, _opPos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._binary(_check, _x, _e, _lhs, _rhs, _op, _opPos);
    }
    static public function _shift(_check:Checker, _x:T_operand, _y:T_operand, _e:stdgo._internal.go.ast.Ast_expr.Expr, _op:stdgo._internal.go.token.Token_token.Token):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._shift(_check, _x, _y, _e, _op);
    }
    static public function _kindString(_check:Checker, _typ:Type_):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._kindString(_check, _typ);
    }
    static public function _incomparableCause(_check:Checker, _typ:Type_):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._incomparableCause(_check, _typ);
    }
    static public function _comparison(_check:Checker, _x:T_operand, _y:T_operand, _op:stdgo._internal.go.token.Token_token.Token, _switchCase:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._comparison(_check, _x, _y, _op, _switchCase);
    }
    static public function _implicitTypeAndValue(_check:Checker, _x:T_operand, _target:Type_):stdgo.Tuple.Tuple3<Type_, stdgo._internal.go.constant.Constant_value.Value, stdgo._internal.internal.types.errors.Errors_code.Code> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._implicitTypeAndValue(_check, _x, _target);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _updateExprVal(_check:Checker, _x:stdgo._internal.go.ast.Ast_expr.Expr, _val:stdgo._internal.go.constant.Constant_value.Value):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._updateExprVal(_check, _x, _val);
    }
    static public function _updateExprType0(_check:Checker, _parent:stdgo._internal.go.ast.Ast_expr.Expr, _x:stdgo._internal.go.ast.Ast_expr.Expr, _typ:Type_, _final:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._updateExprType0(_check, _parent, _x, _typ, _final);
    }
    static public function _updateExprType(_check:Checker, _x:stdgo._internal.go.ast.Ast_expr.Expr, _typ:Type_, _final:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._updateExprType(_check, _x, _typ, _final);
    }
    static public function _unary(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _e = (_e : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._unary(_check, _x, _e);
    }
    static public function _op(_check:Checker, _m:T_opPredicates, _x:T_operand, _op:stdgo._internal.go.token.Token_token.Token):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._op(_check, _m, _x, _op);
    }
    static public function _versionErrorf(_check:Checker, _at:T_positioner, _v:T_version, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._versionErrorf(_check, _at, _v, _format, ...[for (i in _args) i]);
    }
    static public function _softErrorf(_check:Checker, _at:T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._softErrorf(_check, _at, _code, _format, ...[for (i in _args) i]);
    }
    static public function _errorf(_check:Checker, _at:T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._errorf(_check, _at, _code, _format, ...[for (i in _args) i]);
    }
    static public function _error(_check:Checker, _at:T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _msg:String):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._error(_check, _at, _code, _msg);
    }
    static public function _report(_check:Checker, _errp:T_error_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _errp = (_errp : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._report(_check, _errp);
    }
    static public function _dump(_check:Checker, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._dump(_check, _format, ...[for (i in _args) i]);
    }
    static public function _trace(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._trace(_check, _pos, _format, ...[for (i in _args) i]);
    }
    static public function _sprintf(_check:Checker, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._sprintf(_check, _format, ...[for (i in _args) i]);
    }
    static public function _markImports(_check:Checker, _pkg:Package):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._markImports(_check, _pkg);
    }
    static public function _qualifier(_check:Checker, _pkg:Package):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._qualifier(_check, _pkg);
    }
    static public function _declStmt(_check:Checker, _d:stdgo._internal.go.ast.Ast_decl.Decl):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._declStmt(_check, _d);
    }
    static public function _funcDecl(_check:Checker, _obj:Func, _decl:T_declInfo):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        final _decl = (_decl : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._funcDecl(_check, _obj, _decl);
    }
    static public function _checkFieldUniqueness(_check:Checker, _base:Named):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _base = (_base : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._checkFieldUniqueness(_check, _base);
    }
    static public function _collectMethods(_check:Checker, _obj:TypeName):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._collectMethods(_check, _obj);
    }
    static public function _declareTypeParams(_check:Checker, _tparams:Array<TypeParam>, _names:Array<stdgo._internal.go.ast.Ast_ident.Ident>):Array<TypeParam> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _names = ([for (i in _names) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        return [for (i in stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._declareTypeParams(_check, _tparams, _names)) i];
    }
    static public function _bound(_check:Checker, _x:stdgo._internal.go.ast.Ast_expr.Expr):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._bound(_check, _x);
    }
    static public function _collectTypeParams(_check:Checker, _dst:TypeParamList, _list:stdgo._internal.go.ast.Ast_fieldlist.FieldList):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _dst = (_dst : stdgo.Ref<stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>>);
        final _list = (_list : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._collectTypeParams(_check, _dst, _list);
    }
    static public function _typeDecl(_check:Checker, _obj:TypeName, _tdecl:stdgo._internal.go.ast.Ast_typespec.TypeSpec, _def:Named):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        final _tdecl = (_tdecl : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._typeDecl(_check, _obj, _tdecl, _def);
    }
    static public function _isImportedConstraint(_check:Checker, _typ:Type_):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isImportedConstraint(_check, _typ);
    }
    static public function _varDecl(_check:Checker, _obj:Var, _lhs:Array<Var>, _typ:stdgo._internal.go.ast.Ast_expr.Expr, _init:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        final _lhs = ([for (i in _lhs) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._varDecl(_check, _obj, _lhs, _typ, _init);
    }
    static public function _constDecl(_check:Checker, _obj:Const, _typ:stdgo._internal.go.ast.Ast_expr.Expr, _init:stdgo._internal.go.ast.Ast_expr.Expr, _inherited:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._constDecl(_check, _obj, _typ, _init, _inherited);
    }
    static public function _walkDecl(_check:Checker, _d:stdgo._internal.go.ast.Ast_decl.Decl, _f:T_decl -> Void):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _f = _f;
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._walkDecl(_check, _d, _f);
    }
    static public function _walkDecls(_check:Checker, _decls:Array<stdgo._internal.go.ast.Ast_decl.Decl>, _f:T_decl -> Void):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _decls = ([for (i in _decls) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        final _f = _f;
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._walkDecls(_check, _decls, _f);
    }
    static public function _cycleError(_check:Checker, _cycle:Array<Object>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _cycle = ([for (i in _cycle) i] : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._cycleError(_check, _cycle);
    }
    static public function _validCycle(_check:Checker, _obj:Object):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._validCycle(_check, _obj);
    }
    static public function _objDecl(_check:Checker, _obj:Object, _def:Named):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._objDecl(_check, _obj, _def);
    }
    static public function _declare(_check:Checker, _scope:Scope, _id:stdgo._internal.go.ast.Ast_ident.Ident, _obj:Object, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _scope = (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _id = (_id : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._declare(_check, _scope, _id, _obj, _pos);
    }
    static public function _reportAltDecl(_check:Checker, _obj:Object):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._reportAltDecl(_check, _obj);
    }
    static public function _conversion(_check:Checker, _x:T_operand, t:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._conversion(_check, _x, t);
    }
    static public function _convertUntyped(_check:Checker, _x:T_operand, _target:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._convertUntyped(_check, _x, _target);
    }
    static public function _invalidConversion(_check:Checker, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _x:T_operand, _target:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._invalidConversion(_check, _code, _x, _target);
    }
    static public function _representation(_check:Checker, _x:T_operand, _typ:Basic):stdgo.Tuple<stdgo._internal.go.constant.Constant_value.Value, stdgo._internal.internal.types.errors.Errors_code.Code> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._representation(_check, _x, _typ);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _representable(_check:Checker, _x:T_operand, _typ:Basic):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._representable(_check, _x, _typ);
    }
    static public function _overflow(_check:Checker, _x:T_operand, _opPos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._overflow(_check, _x, _opPos);
    }
    static public function _recordScope(_check:Checker, _node:stdgo._internal.go.ast.Ast_node.Node, _scope:Scope):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _scope = (_scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordScope(_check, _node, _scope);
    }
    static public function _recordSelection(_check:Checker, _x:stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, _kind:SelectionKind, _recv:Type_, _obj:Object, _index:Array<StdTypes.Int>, _indirect:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordSelection(_check, _x, _kind, _recv, _obj, _index, _indirect);
    }
    static public function _recordImplicit(_check:Checker, _node:stdgo._internal.go.ast.Ast_node.Node, _obj:Object):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordImplicit(_check, _node, _obj);
    }
    static public function _recordUse(_check:Checker, _id:stdgo._internal.go.ast.Ast_ident.Ident, _obj:Object):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _id = (_id : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordUse(_check, _id, _obj);
    }
    static public function _recordDef(_check:Checker, _id:stdgo._internal.go.ast.Ast_ident.Ident, _obj:Object):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _id = (_id : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordDef(_check, _id, _obj);
    }
    static public function _recordInstance(_check:Checker, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _targs:Array<Type_>, _typ:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordInstance(_check, _expr, _targs, _typ);
    }
    static public function _recordCommaOkTypes(_check:Checker, _x:stdgo._internal.go.ast.Ast_expr.Expr, _a:Array<T_operand>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _a = ([for (i in _a) (i : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordCommaOkTypes(_check, _x, _a);
    }
    static public function _recordBuiltinType(_check:Checker, _f:stdgo._internal.go.ast.Ast_expr.Expr, _sig:Signature):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordBuiltinType(_check, _f, _sig);
    }
    static public function _recordTypeAndValue(_check:Checker, _x:stdgo._internal.go.ast.Ast_expr.Expr, _mode:T_operandMode, _typ:Type_, _val:stdgo._internal.go.constant.Constant_value.Value):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordTypeAndValue(_check, _x, _mode, _typ, _val);
    }
    static public function _recordUntyped(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordUntyped(_check);
    }
    static public function _record(_check:Checker, _x:T_operand):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._record(_check, _x);
    }
    static public function _cleanup(_check:Checker):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._cleanup(_check);
    }
    static public function _processDelayed(_check:Checker, _top:StdTypes.Int):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _top = (_top : stdgo.GoInt);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._processDelayed(_check, _top);
    }
    static public function _checkFiles(_check:Checker, _files:Array<stdgo._internal.go.ast.Ast_file.File>):stdgo.Error {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _files = ([for (i in _files) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._checkFiles(_check, _files);
    }
    static public function files(_check:Checker, _files:Array<stdgo._internal.go.ast.Ast_file.File>):stdgo.Error {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _files = ([for (i in _files) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension.files(_check, _files);
    }
    static public function _handleBailout(_check:Checker, _err:stdgo.Error):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _err = (_err : stdgo.Ref<stdgo.Error>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._handleBailout(_check, _err);
    }
    static public function _initFiles(_check:Checker, _files:Array<stdgo._internal.go.ast.Ast_file.File>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _files = ([for (i in _files) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._initFiles(_check, _files);
    }
    static public function _needsCleanup(_check:Checker, _c:T_cleaner):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._needsCleanup(_check, _c);
    }
    static public function _pop(_check:Checker):Object {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._pop(_check);
    }
    static public function _push(_check:Checker, _obj:Object):StdTypes.Int {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._push(_check, _obj);
    }
    static public function _later(_check:Checker, _f:() -> Void):T_action {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _f = _f;
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._later(_check, _f);
    }
    static public function _rememberUntyped(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _lhs:Bool, _mode:T_operandMode, _typ:Basic, _val:stdgo._internal.go.constant.Constant_value.Value):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._rememberUntyped(_check, _e, _lhs, _mode, _typ, _val);
    }
    static public function _isBrokenAlias(_check:Checker, _alias:TypeName):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _alias = (_alias : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._isBrokenAlias(_check, _alias);
    }
    static public function _validAlias(_check:Checker, _alias:TypeName, _typ:Type_):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _alias = (_alias : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._validAlias(_check, _alias, _typ);
    }
    static public function _brokenAlias(_check:Checker, _alias:TypeName):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _alias = (_alias : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._brokenAlias(_check, _alias);
    }
    static public function _addDeclDep(_check:Checker, _to:Object):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._addDeclDep(_check, _to);
    }
    static public function _use1(_check:Checker, _e:stdgo._internal.go.ast.Ast_expr.Expr, _lhs:Bool):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._use1(_check, _e, _lhs);
    }
    static public function _useN(_check:Checker, _args:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _lhs:Bool):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._useN(_check, _args, _lhs);
    }
    static public function _useLHS(_check:Checker, _args:haxe.Rest<stdgo._internal.go.ast.Ast_expr.Expr>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._useLHS(_check, ...[for (i in _args) i]);
    }
    static public function _use(_check:Checker, _args:haxe.Rest<stdgo._internal.go.ast.Ast_expr.Expr>):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._use(_check, ...[for (i in _args) i]);
    }
    static public function _selector(_check:Checker, _x:T_operand, _e:stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, _def:Named, _wantType:Bool):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _e = (_e : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>);
        final _def = (_def : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._selector(_check, _x, _e, _def, _wantType);
    }
    static public function _arguments(_check:Checker, _call:stdgo._internal.go.ast.Ast_callexpr.CallExpr, _sig:Signature, _targs:Array<Type_>, _xlist:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _args:Array<T_operand>, _atargs:Array<Array<Type_>>, _atxlist:Array<Array<stdgo._internal.go.ast.Ast_expr.Expr>>):Signature {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _call = (_call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _xlist = ([for (i in _xlist) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _args = ([for (i in _args) (i : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>);
        final _atargs = ([for (i in _atargs) ([for (i in i) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>>);
        final _atxlist = ([for (i in _atxlist) ([for (i in i) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._arguments(_check, _call, _sig, _targs, _xlist, _args, _atargs, _atxlist);
    }
    static public function _genericExprList(_check:Checker, _elist:Array<stdgo._internal.go.ast.Ast_expr.Expr>):stdgo.Tuple.Tuple3<Array<T_operand>, Array<Array<Type_>>, Array<Array<stdgo._internal.go.ast.Ast_expr.Expr>>> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _elist = ([for (i in _elist) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._genericExprList(_check, _elist);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) [for (i in i) i]], _2 : [for (i in obj._2) [for (i in i) i]] };
        };
    }
    static public function _exprList(_check:Checker, _elist:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Array<T_operand> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _elist = ([for (i in _elist) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return [for (i in stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._exprList(_check, _elist)) i];
    }
    static public function _callExpr(_check:Checker, _x:T_operand, _call:stdgo._internal.go.ast.Ast_callexpr.CallExpr):T_exprKind {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _call = (_call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._callExpr(_check, _x, _call);
    }
    static public function _instantiateSignature(_check:Checker, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _typ:Signature, _targs:Array<Type_>, _xlist:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Signature {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _xlist = ([for (i in _xlist) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._instantiateSignature(_check, _pos, _expr, _typ, _targs, _xlist);
    }
    static public function _funcInst(_check:Checker, _tsig:Signature, _pos:stdgo._internal.go.token.Token_pos.Pos, _x:T_operand, _ix:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr, _infer:Bool):stdgo.Tuple<Array<Type_>, Array<stdgo._internal.go.ast.Ast_expr.Expr>> {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _tsig = (_tsig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _ix = (_ix : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
        return {
            final obj = stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._funcInst(_check, _tsig, _pos, _x, _ix, _infer);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i] };
        };
    }
    static public function _applyTypeFunc(_check:Checker, _f:Type_ -> Type_, _x:T_operand, _id:T_builtinId):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _f = _f;
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._applyTypeFunc(_check, _f, _x, _id);
    }
    static public function _builtin(_check:Checker, _x:T_operand, _call:stdgo._internal.go.ast.Ast_callexpr.CallExpr, _id:T_builtinId):Bool {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _call = (_call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._builtin(_check, _x, _call, _id);
    }
    static public function _shortVarDecl(_check:Checker, _pos:T_positioner, _lhs:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _rhs:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lhs = ([for (i in _lhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _rhs = ([for (i in _rhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._shortVarDecl(_check, _pos, _lhs, _rhs);
    }
    static public function _assignVars(_check:Checker, _lhs:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _orig_rhs:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lhs = ([for (i in _lhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _orig_rhs = ([for (i in _orig_rhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._assignVars(_check, _lhs, _orig_rhs);
    }
    static public function _initVars(_check:Checker, _lhs:Array<Var>, _orig_rhs:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _returnStmt:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lhs = ([for (i in _lhs) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        final _orig_rhs = ([for (i in _orig_rhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._initVars(_check, _lhs, _orig_rhs, _returnStmt);
    }
    static public function _returnError(_check:Checker, _at:T_positioner, _lhs:Array<Var>, _rhs:Array<T_operand>):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lhs = ([for (i in _lhs) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        final _rhs = ([for (i in _rhs) (i : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._returnError(_check, _at, _lhs, _rhs);
    }
    static public function _assignError(_check:Checker, _rhs:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _l:StdTypes.Int, _r:StdTypes.Int):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _rhs = ([for (i in _rhs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _l = (_l : stdgo.GoInt);
        final _r = (_r : stdgo.GoInt);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._assignError(_check, _rhs, _l, _r);
    }
    static public function _typesSummary(_check:Checker, _list:Array<Type_>, _variadic:Bool):String {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._typesSummary(_check, _list, _variadic);
    }
    static public function _assignVar(_check:Checker, _lhs:stdgo._internal.go.ast.Ast_expr.Expr, _rhs:stdgo._internal.go.ast.Ast_expr.Expr, _x:T_operand):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._assignVar(_check, _lhs, _rhs, _x);
    }
    static public function _lhsVar(_check:Checker, _lhs:stdgo._internal.go.ast.Ast_expr.Expr):Type_ {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._lhsVar(_check, _lhs);
    }
    static public function _initVar(_check:Checker, _lhs:Var, _x:T_operand, _context:String):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lhs = (_lhs : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _context = (_context : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._initVar(_check, _lhs, _x, _context);
    }
    static public function _initConst(_check:Checker, _lhs:Const, _x:T_operand):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _lhs = (_lhs : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._initConst(_check, _lhs, _x);
    }
    static public function _assignment(_check:Checker, _x:T_operand, t:Type_, _context:String):Void {
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _context = (_context : stdgo.GoString);
        stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._assignment(_check, _x, t, _context);
    }
    public static function _recordTypes(__self__:stdgo._internal.go.types.Types_checker.Checker):Bool {
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._recordTypes(__self__);
    }
    public static function _lookup(__self__:stdgo._internal.go.types.Types_checker.Checker, _0:String):Object {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension._lookup(__self__, _0);
    }
    public static function typeOf(__self__:stdgo._internal.go.types.Types_checker.Checker, _0:stdgo._internal.go.ast.Ast_expr.Expr):Type_ {
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension.typeOf(__self__, _0);
    }
    public static function objectOf(__self__:stdgo._internal.go.types.Types_checker.Checker, _0:stdgo._internal.go.ast.Ast_ident.Ident):Object {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension.objectOf(__self__, _0);
    }
}
@:structInit @:dox(hide) abstract T__collectObjects___localname___methodInfo_7564(stdgo._internal.go.types.Types_t__collectobjects___localname___methodinfo_7564.T__collectObjects___localname___methodInfo_7564) from stdgo._internal.go.types.Types_t__collectobjects___localname___methodinfo_7564.T__collectObjects___localname___methodInfo_7564 to stdgo._internal.go.types.Types_t__collectobjects___localname___methodinfo_7564.T__collectObjects___localname___methodInfo_7564 {
    public var _obj(get, set) : Func;
    function get__obj():Func return this._obj;
    function set__obj(v:Func):Func {
        this._obj = (v : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return v;
    }
    public var _ptr(get, set) : Bool;
    function get__ptr():Bool return this._ptr;
    function set__ptr(v:Bool):Bool {
        this._ptr = v;
        return v;
    }
    public var _recv(get, set) : stdgo._internal.go.ast.Ast_ident.Ident;
    function get__recv():stdgo._internal.go.ast.Ast_ident.Ident return this._recv;
    function set__recv(v:stdgo._internal.go.ast.Ast_ident.Ident):stdgo._internal.go.ast.Ast_ident.Ident {
        this._recv = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        return v;
    }
    public function new(?_obj:Func, ?_ptr:Bool, ?_recv:stdgo._internal.go.ast.Ast_ident.Ident) this = new stdgo._internal.go.types.Types_t__collectobjects___localname___methodinfo_7564.T__collectObjects___localname___methodInfo_7564((_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _ptr, (_recv : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_posVersPointer = stdgo._internal.go.types.Types_t_posverspointer.T_posVersPointer;
@:dox(hide) class T_posVers_static_extension {

}
@:dox(hide) typedef T_bailoutPointer = stdgo._internal.go.types.Types_t_bailoutpointer.T_bailoutPointer;
@:dox(hide) class T_bailout_static_extension {

}
typedef ContextPointer = stdgo._internal.go.types.Types_contextpointer.ContextPointer;
class Context_static_extension {
    static public function _getID(_ctxt:Context, _t:Type_):StdTypes.Int {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return stdgo._internal.go.types.Types_context_static_extension.Context_static_extension._getID(_ctxt, _t);
    }
    static public function _update(_ctxt:Context, _h:String, _orig:Type_, _targs:Array<Type_>, _inst:Type_):Type_ {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        final _h = (_h : stdgo.GoString);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return stdgo._internal.go.types.Types_context_static_extension.Context_static_extension._update(_ctxt, _h, _orig, _targs, _inst);
    }
    static public function _lookup(_ctxt:Context, _h:String, _orig:Type_, _targs:Array<Type_>):Type_ {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        final _h = (_h : stdgo.GoString);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return stdgo._internal.go.types.Types_context_static_extension.Context_static_extension._lookup(_ctxt, _h, _orig, _targs);
    }
    static public function _instanceHash(_ctxt:Context, _orig:Type_, _targs:Array<Type_>):String {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return stdgo._internal.go.types.Types_context_static_extension.Context_static_extension._instanceHash(_ctxt, _orig, _targs);
    }
}
@:dox(hide) typedef T_ctxtEntryPointer = stdgo._internal.go.types.Types_t_ctxtentrypointer.T_ctxtEntryPointer;
@:dox(hide) class T_ctxtEntry_static_extension {

}
@:dox(hide) typedef T_importDeclPointer = stdgo._internal.go.types.Types_t_importdeclpointer.T_importDeclPointer;
@:dox(hide) class T_importDecl_static_extension {
    static public function _node(_d:T_importDecl):stdgo._internal.go.ast.Ast_node.Node {
        return stdgo._internal.go.types.Types_t_importdecl_static_extension.T_importDecl_static_extension._node(_d);
    }
}
@:dox(hide) typedef T_constDeclPointer = stdgo._internal.go.types.Types_t_constdeclpointer.T_constDeclPointer;
@:dox(hide) class T_constDecl_static_extension {
    static public function _node(_d:T_constDecl):stdgo._internal.go.ast.Ast_node.Node {
        return stdgo._internal.go.types.Types_t_constdecl_static_extension.T_constDecl_static_extension._node(_d);
    }
}
@:dox(hide) typedef T_varDeclPointer = stdgo._internal.go.types.Types_t_vardeclpointer.T_varDeclPointer;
@:dox(hide) class T_varDecl_static_extension {
    static public function _node(_d:T_varDecl):stdgo._internal.go.ast.Ast_node.Node {
        return stdgo._internal.go.types.Types_t_vardecl_static_extension.T_varDecl_static_extension._node(_d);
    }
}
@:dox(hide) typedef T_typeDeclPointer = stdgo._internal.go.types.Types_t_typedeclpointer.T_typeDeclPointer;
@:dox(hide) class T_typeDecl_static_extension {
    static public function _node(_d:T_typeDecl):stdgo._internal.go.ast.Ast_node.Node {
        return stdgo._internal.go.types.Types_t_typedecl_static_extension.T_typeDecl_static_extension._node(_d);
    }
}
@:dox(hide) typedef T_funcDeclPointer = stdgo._internal.go.types.Types_t_funcdeclpointer.T_funcDeclPointer;
@:dox(hide) class T_funcDecl_static_extension {
    static public function _node(_d:T_funcDecl):stdgo._internal.go.ast.Ast_node.Node {
        return stdgo._internal.go.types.Types_t_funcdecl_static_extension.T_funcDecl_static_extension._node(_d);
    }
}
@:dox(hide) typedef T_error_Pointer = stdgo._internal.go.types.Types_t_error_pointer.T_error_Pointer;
@:dox(hide) class T_error__static_extension {
    static public function _errorf(_err:T_error_, _at:stdgo._internal.go.token.Token_pos.Pos, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _err = (_err : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_t_error__static_extension.T_error__static_extension._errorf(_err, _at, _format, ...[for (i in _args) i]);
    }
    static public function string(_err:T_error_):String {
        final _err = (_err : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
        return stdgo._internal.go.types.Types_t_error__static_extension.T_error__static_extension.string(_err);
    }
    static public function _msg(_err:T_error_, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _qf:Qualifier):String {
        final _err = (_err : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return stdgo._internal.go.types.Types_t_error__static_extension.T_error__static_extension._msg(_err, _fset, _qf);
    }
    static public function _pos(_err:T_error_):stdgo._internal.go.token.Token_pos.Pos {
        final _err = (_err : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
        return stdgo._internal.go.types.Types_t_error__static_extension.T_error__static_extension._pos(_err);
    }
    static public function _empty(_err:T_error_):Bool {
        final _err = (_err : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
        return stdgo._internal.go.types.Types_t_error__static_extension.T_error__static_extension._empty(_err);
    }
}
@:dox(hide) typedef T_errorDescPointer = stdgo._internal.go.types.Types_t_errordescpointer.T_errorDescPointer;
@:dox(hide) class T_errorDesc_static_extension {

}
@:dox(hide) typedef T_posSpanPointer = stdgo._internal.go.types.Types_t_posspanpointer.T_posSpanPointer;
@:dox(hide) class T_posSpan_static_extension {
    static public function pos(_e:T_posSpan):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_t_posspan_static_extension.T_posSpan_static_extension.pos(_e);
    }
}
@:dox(hide) typedef T_tpWalkerPointer = stdgo._internal.go.types.Types_t_tpwalkerpointer.T_tpWalkerPointer;
@:dox(hide) class T_tpWalker_static_extension {
    static public function _varList(_w:T_tpWalker, _list:Array<Var>):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return stdgo._internal.go.types.Types_t_tpwalker_static_extension.T_tpWalker_static_extension._varList(_w, _list);
    }
    static public function _isParameterized(_w:T_tpWalker, _typ:Type_):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker>);
        return stdgo._internal.go.types.Types_t_tpwalker_static_extension.T_tpWalker_static_extension._isParameterized(_w, _typ);
    }
}
@:dox(hide) typedef T_cycleFinderPointer = stdgo._internal.go.types.Types_t_cyclefinderpointer.T_cycleFinderPointer;
@:dox(hide) class T_cycleFinder_static_extension {
    static public function _varList(_w:T_cycleFinder, _list:Array<Var>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        stdgo._internal.go.types.Types_t_cyclefinder_static_extension.T_cycleFinder_static_extension._varList(_w, _list);
    }
    static public function _typ(_w:T_cycleFinder, _typ:Type_):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder>);
        stdgo._internal.go.types.Types_t_cyclefinder_static_extension.T_cycleFinder_static_extension._typ(_w, _typ);
    }
}
@:dox(hide) typedef T_graphNodePointer = stdgo._internal.go.types.Types_t_graphnodepointer.T_graphNodePointer;
@:dox(hide) class T_graphNode_static_extension {
    static public function _cost(_n:T_graphNode):StdTypes.Int {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>);
        return stdgo._internal.go.types.Types_t_graphnode_static_extension.T_graphNode_static_extension._cost(_n);
    }
}
typedef InterfacePointer = stdgo._internal.go.types.Types_interfacepointer.InterfacePointer;
class Interface_static_extension {
    static public function _cleanup(_t:Interface):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension._cleanup(_t);
    }
    static public function string(_t:Interface):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.string(_t);
    }
    static public function underlying(_t:Interface):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.underlying(_t);
    }
    static public function complete(_t:Interface):Interface {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.complete(_t);
    }
    static public function isImplicit(_t:Interface):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.isImplicit(_t);
    }
    static public function isMethodSet(_t:Interface):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.isMethodSet(_t);
    }
    static public function isComparable(_t:Interface):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.isComparable(_t);
    }
    static public function empty(_t:Interface):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.empty(_t);
    }
    static public function method(_t:Interface, _i:StdTypes.Int):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.method(_t, _i);
    }
    static public function numMethods(_t:Interface):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.numMethods(_t);
    }
    static public function embeddedType(_t:Interface, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.embeddedType(_t, _i);
    }
    static public function embedded(_t:Interface, _i:StdTypes.Int):Named {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.embedded(_t, _i);
    }
    static public function numEmbeddeds(_t:Interface):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.numEmbeddeds(_t);
    }
    static public function explicitMethod(_t:Interface, _i:StdTypes.Int):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.explicitMethod(_t, _i);
    }
    static public function numExplicitMethods(_t:Interface):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.numExplicitMethods(_t);
    }
    static public function markImplicit(_t:Interface):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension.markImplicit(_t);
    }
    static public function _typeSet(_t:Interface):T__TypeSet {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension._typeSet(_t);
    }
}
@:dox(hide) typedef T_blockPointer = stdgo._internal.go.types.Types_t_blockpointer.T_blockPointer;
@:dox(hide) class T_block_static_extension {
    static public function _enclosingTarget(_b:T_block, _name:String):stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_t_block_static_extension.T_block_static_extension._enclosingTarget(_b, _name);
    }
    static public function _gotoTarget(_b:T_block, _name:String):stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_t_block_static_extension.T_block_static_extension._gotoTarget(_b, _name);
    }
    static public function _insert(_b:T_block, _s:stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>);
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
        stdgo._internal.go.types.Types_t_block_static_extension.T_block_static_extension._insert(_b, _s);
    }
}
@:dox(hide) typedef T_embeddedTypePointer = stdgo._internal.go.types.Types_t_embeddedtypepointer.T_embeddedTypePointer;
@:dox(hide) class T_embeddedType_static_extension {

}
@:dox(hide) typedef T_instanceLookupPointer = stdgo._internal.go.types.Types_t_instancelookuppointer.T_instanceLookupPointer;
@:dox(hide) class T_instanceLookup_static_extension {
    static public function _add(_l:T_instanceLookup, _inst:Named):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup>);
        final _inst = (_inst : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_t_instancelookup_static_extension.T_instanceLookup_static_extension._add(_l, _inst);
    }
    static public function _lookup(_l:T_instanceLookup, _inst:Named):Named {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup>);
        final _inst = (_inst : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_t_instancelookup_static_extension.T_instanceLookup_static_extension._lookup(_l, _inst);
    }
}
typedef Map_Pointer = stdgo._internal.go.types.Types_map_pointer.Map_Pointer;
class Map__static_extension {
    static public function string(_t:Map_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>);
        return stdgo._internal.go.types.Types_map__static_extension.Map__static_extension.string(_t);
    }
    static public function underlying(_t:Map_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>);
        return stdgo._internal.go.types.Types_map__static_extension.Map__static_extension.underlying(_t);
    }
    static public function elem(_m:Map_):Type_ {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>);
        return stdgo._internal.go.types.Types_map__static_extension.Map__static_extension.elem(_m);
    }
    static public function key(_m:Map_):Type_ {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>);
        return stdgo._internal.go.types.Types_map__static_extension.Map__static_extension.key(_m);
    }
}
typedef MethodSetPointer = stdgo._internal.go.types.Types_methodsetpointer.MethodSetPointer;
class MethodSet_static_extension {
    static public function lookup(_s:MethodSet, _pkg:Package, _name:String):Selection {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_methodset_static_extension.MethodSet_static_extension.lookup(_s, _pkg, _name);
    }
    static public function at(_s:MethodSet, _i:StdTypes.Int):Selection {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_methodset_static_extension.MethodSet_static_extension.at(_s, _i);
    }
    static public function len(_s:MethodSet):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        return stdgo._internal.go.types.Types_methodset_static_extension.MethodSet_static_extension.len(_s);
    }
    static public function string(_s:MethodSet):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        return stdgo._internal.go.types.Types_methodset_static_extension.MethodSet_static_extension.string(_s);
    }
}
@:dox(hide) typedef T_monoGraphPointer = stdgo._internal.go.types.Types_t_monographpointer.T_monoGraphPointer;
@:dox(hide) class T_monoGraph_static_extension {
    static public function _addEdge(_w:T_monoGraph, _dst:StdTypes.Int, _src:StdTypes.Int, _weight:StdTypes.Int, _pos:stdgo._internal.go.token.Token_pos.Pos, _typ:Type_):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>);
        final _dst = (_dst : stdgo.GoInt);
        final _src = (_src : stdgo.GoInt);
        final _weight = (_weight : stdgo.GoInt);
        stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension._addEdge(_w, _dst, _src, _weight, _pos, _typ);
    }
    static public function _typeParamVertex(_w:T_monoGraph, _tpar:TypeParam):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>);
        final _tpar = (_tpar : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension._typeParamVertex(_w, _tpar);
    }
    static public function _localNamedVertex(_w:T_monoGraph, _pkg:Package, _named:Named):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _named = (_named : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension._localNamedVertex(_w, _pkg, _named);
    }
    static public function _assign(_w:T_monoGraph, _pkg:Package, _pos:stdgo._internal.go.token.Token_pos.Pos, _tpar:TypeParam, _targ:Type_):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _tpar = (_tpar : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension._assign(_w, _pkg, _pos, _tpar, _targ);
    }
    static public function _recordInstance(_w:T_monoGraph, _pkg:Package, _pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:Array<TypeParam>, _targs:Array<Type_>, _xlist:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        final _xlist = ([for (i in _xlist) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension._recordInstance(_w, _pkg, _pos, _tparams, _targs, _xlist);
    }
    static public function _recordCanon(_w:T_monoGraph, _mpar:TypeParam, _tpar:TypeParam):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>);
        final _mpar = (_mpar : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        final _tpar = (_tpar : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension._recordCanon(_w, _mpar, _tpar);
    }
}
@:dox(hide) typedef T_monoVertexPointer = stdgo._internal.go.types.Types_t_monovertexpointer.T_monoVertexPointer;
@:dox(hide) class T_monoVertex_static_extension {

}
@:dox(hide) typedef T_monoEdgePointer = stdgo._internal.go.types.Types_t_monoedgepointer.T_monoEdgePointer;
@:dox(hide) class T_monoEdge_static_extension {

}
typedef NamedPointer = stdgo._internal.go.types.Types_namedpointer.NamedPointer;
class Named_static_extension {
    static public function _expandUnderlying(_n:Named):Type_ {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._expandUnderlying(_n);
    }
    static public function _lookupMethod(_n:Named, _pkg:Package, _name:String, _foldCase:Bool):stdgo.Tuple<StdTypes.Int, Func> {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._lookupMethod(_n, _pkg, _name, _foldCase);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setUnderlying(_n:Named, _typ:Type_):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._setUnderlying(_n, _typ);
    }
    static public function _under(_n0:Named):Type_ {
        final _n0 = (_n0 : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._under(_n0);
    }
    static public function string(_t:Named):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.string(_t);
    }
    static public function underlying(_t:Named):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.underlying(_t);
    }
    static public function addMethod(_t:Named, _m:Func):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _m = (_m : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.addMethod(_t, _m);
    }
    static public function setUnderlying(_t:Named, _underlying:Type_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.setUnderlying(_t, _underlying);
    }
    static public function _expandMethod(_t:Named, _i:StdTypes.Int):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._expandMethod(_t, _i);
    }
    static public function method(_t:Named, _i:StdTypes.Int):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.method(_t, _i);
    }
    static public function numMethods(_t:Named):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.numMethods(_t);
    }
    static public function typeArgs(_t:Named):TypeList {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.typeArgs(_t);
    }
    static public function setTypeParams(_t:Named, _tparams:Array<TypeParam>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.setTypeParams(_t, _tparams);
    }
    static public function typeParams(_t:Named):TypeParamList {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.typeParams(_t);
    }
    static public function origin(_t:Named):Named {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.origin(_t);
    }
    static public function obj(_t:Named):TypeName {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension.obj(_t);
    }
    static public function _cleanup(_t:Named):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._cleanup(_t);
    }
    static public function _setState(_n:Named, _state:T_namedState):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._setState(_n, _state);
    }
    static public function _state(_n:Named):T_namedState {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._state(_n);
    }
    static public function _resolve(_n:Named):Named {
        final _n = (_n : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.types.Types_named_static_extension.Named_static_extension._resolve(_n);
    }
}
@:dox(hide) typedef T_instancePointer = stdgo._internal.go.types.Types_t_instancepointer.T_instancePointer;
@:dox(hide) class T_instance_static_extension {

}
@:dox(hide) typedef T_objectPointer = stdgo._internal.go.types.Types_t_objectpointer.T_objectPointer;
@:dox(hide) class T_object_static_extension {
    static public function _less(_a:T_object, _b:T_object):Bool {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        final _b = (_b : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._less(_a, _b);
    }
    static public function _sameId(_obj:T_object, _pkg:Package, _name:String):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._sameId(_obj, _pkg, _name);
    }
    static public function _setScopePos(_obj:T_object, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._setScopePos(_obj, _pos);
    }
    static public function _setColor(_obj:T_object, _color:T_color):Void {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._setColor(_obj, _color);
    }
    static public function _setOrder(_obj:T_object, _order:std.UInt):Void {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        final _order = (_order : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._setOrder(_obj, _order);
    }
    static public function _setType(_obj:T_object, _typ:Type_):Void {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._setType(_obj, _typ);
    }
    static public function _setParent(_obj:T_object, _parent:Scope):Void {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._setParent(_obj, _parent);
    }
    static public function _scopePos(_obj:T_object):stdgo._internal.go.token.Token_pos.Pos {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._scopePos(_obj);
    }
    static public function _color(_obj:T_object):T_color {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._color(_obj);
    }
    static public function _order(_obj:T_object):std.UInt {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension._order(_obj);
    }
    static public function string(_obj:T_object):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.string(_obj);
    }
    static public function id(_obj:T_object):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.id(_obj);
    }
    static public function exported(_obj:T_object):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.exported(_obj);
    }
    static public function type(_obj:T_object):Type_ {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.type(_obj);
    }
    static public function name(_obj:T_object):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.name(_obj);
    }
    static public function pkg(_obj:T_object):Package {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.pkg(_obj);
    }
    static public function pos(_obj:T_object):stdgo._internal.go.token.Token_pos.Pos {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.pos(_obj);
    }
    static public function parent(_obj:T_object):Scope {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension.parent(_obj);
    }
}
typedef PkgNamePointer = stdgo._internal.go.types.Types_pkgnamepointer.PkgNamePointer;
class PkgName_static_extension {
    static public function string(_obj:PkgName):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>);
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.string(_obj);
    }
    static public function imported(_obj:PkgName):Package {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>);
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.imported(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:Type_):Void {
        stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:T_color):Void {
        stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):std.UInt {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_pkgname.PkgName, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):T_color {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):Type_ {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):Package {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):Scope {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):String {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):String {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_pkgname.PkgName):Bool {
        return stdgo._internal.go.types.Types_pkgname_static_extension.PkgName_static_extension.exported(__self__);
    }
}
typedef ConstPointer = stdgo._internal.go.types.Types_constpointer.ConstPointer;
class Const_static_extension {
    static public function string(_obj:Const):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>);
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.string(_obj);
    }
    static public function _isDependency(_:Const):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>);
        stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._isDependency(_);
    }
    static public function val(_obj:Const):stdgo._internal.go.constant.Constant_value.Value {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>);
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.val(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_const.Const, _0:Type_):Void {
        stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_const.Const, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_const.Const, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_const.Const, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_const.Const, _0:T_color):Void {
        stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_const.Const):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_const.Const, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_const.Const):std.UInt {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_const.Const, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_const.Const):T_color {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_const.Const):Type_ {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_const.Const):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_const.Const):Package {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_const.Const):Scope {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_const.Const):String {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_const.Const):String {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_const.Const):Bool {
        return stdgo._internal.go.types.Types_const_static_extension.Const_static_extension.exported(__self__);
    }
}
typedef TypeNamePointer = stdgo._internal.go.types.Types_typenamepointer.TypeNamePointer;
class TypeName_static_extension {
    static public function string(_obj:TypeName):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.string(_obj);
    }
    static public function isAlias(_obj:TypeName):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.isAlias(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:Type_):Void {
        stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:T_color):Void {
        stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_typename.TypeName):std.UInt {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_typename.TypeName, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_typename.TypeName):T_color {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_typename.TypeName):Type_ {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_typename.TypeName):Package {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_typename.TypeName):Scope {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_typename.TypeName):String {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_typename.TypeName):String {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_typename.TypeName):Bool {
        return stdgo._internal.go.types.Types_typename_static_extension.TypeName_static_extension.exported(__self__);
    }
}
typedef VarPointer = stdgo._internal.go.types.Types_varpointer.VarPointer;
class Var_static_extension {
    static public function string(_obj:Var):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.string(_obj);
    }
    static public function _isDependency(_:Var):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._isDependency(_);
    }
    static public function origin(_obj:Var):Var {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.origin(_obj);
    }
    static public function isField(_obj:Var):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.isField(_obj);
    }
    static public function embedded(_obj:Var):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.embedded(_obj);
    }
    static public function anonymous(_obj:Var):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.anonymous(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_var.Var, _0:Type_):Void {
        stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_var.Var, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_var.Var, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_var.Var, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_var.Var, _0:T_color):Void {
        stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_var.Var):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_var.Var, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_var.Var):std.UInt {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_var.Var, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_var.Var):T_color {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_var.Var):Type_ {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_var.Var):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_var.Var):Package {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_var.Var):Scope {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_var.Var):String {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_var.Var):String {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_var.Var):Bool {
        return stdgo._internal.go.types.Types_var_static_extension.Var_static_extension.exported(__self__);
    }
}
typedef FuncPointer = stdgo._internal.go.types.Types_funcpointer.FuncPointer;
class Func_static_extension {
    static public function string(_obj:Func):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.string(_obj);
    }
    static public function _isDependency(_:Func):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._isDependency(_);
    }
    static public function _hasPtrRecv(_obj:Func):Bool {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._hasPtrRecv(_obj);
    }
    static public function origin(_obj:Func):Func {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.origin(_obj);
    }
    static public function scope(_obj:Func):Scope {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.scope(_obj);
    }
    static public function fullName(_obj:Func):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.fullName(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_func.Func, _0:Type_):Void {
        stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_func.Func, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_func.Func, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_func.Func, _0:T_color):Void {
        stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_func.Func):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_func.Func, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_func.Func):std.UInt {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_func.Func, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_func.Func):T_color {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_func.Func):Type_ {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_func.Func):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_func.Func):Package {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_func.Func):Scope {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_func.Func):String {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_func.Func):String {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_func.Func):Bool {
        return stdgo._internal.go.types.Types_func_static_extension.Func_static_extension.exported(__self__);
    }
}
typedef LabelPointer = stdgo._internal.go.types.Types_labelpointer.LabelPointer;
class Label_static_extension {
    static public function string(_obj:Label):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>);
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.string(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_label.Label, _0:Type_):Void {
        stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_label.Label, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_label.Label, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_label.Label, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_label.Label, _0:T_color):Void {
        stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_label.Label):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_label.Label, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_label.Label):std.UInt {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_label.Label, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_label.Label):T_color {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_label.Label):Type_ {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_label.Label):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_label.Label):Package {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_label.Label):Scope {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_label.Label):String {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_label.Label):String {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_label.Label):Bool {
        return stdgo._internal.go.types.Types_label_static_extension.Label_static_extension.exported(__self__);
    }
}
typedef BuiltinPointer = stdgo._internal.go.types.Types_builtinpointer.BuiltinPointer;
class Builtin_static_extension {
    static public function string(_obj:Builtin):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>);
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.string(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:Type_):Void {
        stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:T_color):Void {
        stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_builtin.Builtin):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_builtin.Builtin):std.UInt {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_builtin.Builtin, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_builtin.Builtin):T_color {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_builtin.Builtin):Type_ {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_builtin.Builtin):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_builtin.Builtin):Package {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_builtin.Builtin):Scope {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_builtin.Builtin):String {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_builtin.Builtin):String {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_builtin.Builtin):Bool {
        return stdgo._internal.go.types.Types_builtin_static_extension.Builtin_static_extension.exported(__self__);
    }
}
typedef NilPointer = stdgo._internal.go.types.Types_nilpointer.NilPointer;
class Nil_static_extension {
    static public function string(_obj:Nil):String {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>);
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.string(_obj);
    }
    public static function _setType(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:Type_):Void {
        stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._setType(__self__, _0);
    }
    public static function _setScopePos(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo._internal.go.token.Token_pos.Pos):Void {
        stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._setScopePos(__self__, _0);
    }
    public static function _setParent(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:Scope):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._setParent(__self__, _0);
    }
    public static function _setOrder(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._setOrder(__self__, _0);
    }
    public static function _setColor(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:T_color):Void {
        stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._setColor(__self__, _0);
    }
    public static function _scopePos(__self__:stdgo._internal.go.types.Types_nil.Nil):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._scopePos(__self__);
    }
    public static function _sameId(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:Package, _1:String):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._sameId(__self__, _0, _1);
    }
    public static function _order(__self__:stdgo._internal.go.types.Types_nil.Nil):std.UInt {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._order(__self__);
    }
    public static function _less(__self__:stdgo._internal.go.types.Types_nil.Nil, _0:T_object):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>);
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._less(__self__, _0);
    }
    public static function _color(__self__:stdgo._internal.go.types.Types_nil.Nil):T_color {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension._color(__self__);
    }
    public static function type(__self__:stdgo._internal.go.types.Types_nil.Nil):Type_ {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.type(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.types.Types_nil.Nil):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.pos(__self__);
    }
    public static function pkg(__self__:stdgo._internal.go.types.Types_nil.Nil):Package {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.pkg(__self__);
    }
    public static function parent(__self__:stdgo._internal.go.types.Types_nil.Nil):Scope {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.parent(__self__);
    }
    public static function name(__self__:stdgo._internal.go.types.Types_nil.Nil):String {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.name(__self__);
    }
    public static function id(__self__:stdgo._internal.go.types.Types_nil.Nil):String {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.id(__self__);
    }
    public static function exported(__self__:stdgo._internal.go.types.Types_nil.Nil):Bool {
        return stdgo._internal.go.types.Types_nil_static_extension.Nil_static_extension.exported(__self__);
    }
}
@:dox(hide) typedef T_operandPointer = stdgo._internal.go.types.Types_t_operandpointer.T_operandPointer;
@:dox(hide) class T_operand_static_extension {
    static public function _assignableTo(_x:T_operand, _check:Checker, t:Type_, _cause:stdgo.Pointer<String>):stdgo.Tuple<Bool, stdgo._internal.internal.types.errors.Errors_code.Code> {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return {
            final obj = stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension._assignableTo(_x, _check, t, _cause);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _isNil(_x:T_operand):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension._isNil(_x);
    }
    static public function _setConst(_x:T_operand, _tok:stdgo._internal.go.token.Token_token.Token, _lit:String):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _lit = (_lit : stdgo.GoString);
        stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension._setConst(_x, _tok, _lit);
    }
    static public function string(_x:T_operand):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension.string(_x);
    }
    static public function pos(_x:T_operand):stdgo._internal.go.token.Token_pos.Pos {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        return stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension.pos(_x);
    }
    static public function _convertibleTo(_x:T_operand, _check:Checker, t:Type_, _cause:stdgo.Pointer<String>):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>);
        final _check = (_check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        return stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension._convertibleTo(_x, _check, t, _cause);
    }
}
typedef PackagePointer = stdgo._internal.go.types.Types_packagepointer.PackagePointer;
class Package_static_extension {
    static public function string(_pkg:Package):String {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.string(_pkg);
    }
    static public function setImports(_pkg:Package, _list:Array<Package>):Void {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
        stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.setImports(_pkg, _list);
    }
    static public function imports(_pkg:Package):Array<Package> {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return [for (i in stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.imports(_pkg)) i];
    }
    static public function markComplete(_pkg:Package):Void {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.markComplete(_pkg);
    }
    static public function complete(_pkg:Package):Bool {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.complete(_pkg);
    }
    static public function scope(_pkg:Package):Scope {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.scope(_pkg);
    }
    static public function goVersion(_pkg:Package):String {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.goVersion(_pkg);
    }
    static public function setName(_pkg:Package, _name:String):Void {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.setName(_pkg, _name);
    }
    static public function name(_pkg:Package):String {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.name(_pkg);
    }
    static public function path(_pkg:Package):String {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_package_static_extension.Package_static_extension.path(_pkg);
    }
}
typedef Pointer_Pointer = stdgo._internal.go.types.Types_pointer_pointer.Pointer_Pointer;
class Pointer__static_extension {
    static public function string(_p:Pointer_):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>);
        return stdgo._internal.go.types.Types_pointer__static_extension.Pointer__static_extension.string(_p);
    }
    static public function underlying(_p:Pointer_):Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>);
        return stdgo._internal.go.types.Types_pointer__static_extension.Pointer__static_extension.underlying(_p);
    }
    static public function elem(_p:Pointer_):Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>);
        return stdgo._internal.go.types.Types_pointer__static_extension.Pointer__static_extension.elem(_p);
    }
}
@:dox(hide) typedef T_ifacePairPointer = stdgo._internal.go.types.Types_t_ifacepairpointer.T_ifacePairPointer;
@:dox(hide) class T_ifacePair_static_extension {
    static public function _identical(_p:T_ifacePair, _q:T_ifacePair):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
        final _q = (_q : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
        return stdgo._internal.go.types.Types_t_ifacepair_static_extension.T_ifacePair_static_extension._identical(_p, _q);
    }
}
@:dox(hide) typedef T_comparerPointer = stdgo._internal.go.types.Types_t_comparerpointer.T_comparerPointer;
@:dox(hide) class T_comparer_static_extension {
    static public function _identical(_c:T_comparer, _x:Type_, _y:Type_, _p:T_ifacePair):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.types.Types_t_comparer.T_comparer>);
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
        return stdgo._internal.go.types.Types_t_comparer_static_extension.T_comparer_static_extension._identical(_c, _x, _y, _p);
    }
}
@:dox(hide) typedef T_declInfoPointer = stdgo._internal.go.types.Types_t_declinfopointer.T_declInfoPointer;
@:dox(hide) class T_declInfo_static_extension {
    static public function _addDep(_d:T_declInfo, _obj:Object):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        stdgo._internal.go.types.Types_t_declinfo_static_extension.T_declInfo_static_extension._addDep(_d, _obj);
    }
    static public function _hasInitializer(_d:T_declInfo):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
        return stdgo._internal.go.types.Types_t_declinfo_static_extension.T_declInfo_static_extension._hasInitializer(_d);
    }
}
typedef ScopePointer = stdgo._internal.go.types.Types_scopepointer.ScopePointer;
class Scope_static_extension {
    static public function string(_s:Scope):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.string(_s);
    }
    static public function writeTo(_s:Scope, _w:stdgo._internal.io.Io_writer.Writer, _n:StdTypes.Int, _recurse:Bool):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.writeTo(_s, _w, _n, _recurse);
    }
    static public function innermost(_s:Scope, _pos:stdgo._internal.go.token.Token_pos.Pos):Scope {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.innermost(_s, _pos);
    }
    static public function contains(_s:Scope, _pos:stdgo._internal.go.token.Token_pos.Pos):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.contains(_s, _pos);
    }
    static public function end(_s:Scope):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.end(_s);
    }
    static public function pos(_s:Scope):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.pos(_s);
    }
    static public function _squash(_s:Scope, _err:(Object, Object) -> Void):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _err = _err;
        stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension._squash(_s, _err);
    }
    static public function _insert(_s:Scope, _name:String, _obj:Object):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension._insert(_s, _name, _obj);
    }
    static public function __InsertLazy(_s:Scope, _name:String, _resolve:() -> Object):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _name = (_name : stdgo.GoString);
        final _resolve = _resolve;
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.__InsertLazy(_s, _name, _resolve);
    }
    static public function insert(_s:Scope, _obj:Object):Object {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.insert(_s, _obj);
    }
    static public function lookupParent(_s:Scope, _name:String, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.Tuple<Scope, Object> {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.lookupParent(_s, _name, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookup(_s:Scope, _name:String):Object {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.lookup(_s, _name);
    }
    static public function child(_s:Scope, _i:StdTypes.Int):Scope {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.child(_s, _i);
    }
    static public function numChildren(_s:Scope):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.numChildren(_s);
    }
    static public function names(_s:Scope):Array<String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return [for (i in stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.names(_s)) i];
    }
    static public function len(_s:Scope):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.len(_s);
    }
    static public function parent(_s:Scope):Scope {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        return stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension.parent(_s);
    }
}
@:dox(hide) typedef T_lazyObjectPointer = stdgo._internal.go.types.Types_t_lazyobjectpointer.T_lazyObjectPointer;
@:dox(hide) class T_lazyObject_static_extension {
    static public function _setScopePos(_:T_lazyObject, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._setScopePos(_, _pos);
    }
    static public function _scopePos(_:T_lazyObject):stdgo._internal.go.token.Token_pos.Pos {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._scopePos(_);
    }
    static public function _sameId(_:T_lazyObject, _pkg:Package, _name:String):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._sameId(_, _pkg, _name);
    }
    static public function _setParent(_:T_lazyObject, _0:Scope):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        final _0 = (_0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._setParent(_, _0);
    }
    static public function _setColor(_:T_lazyObject, _color:T_color):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._setColor(_, _color);
    }
    static public function _setOrder(_:T_lazyObject, _0:std.UInt):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        final _0 = (_0 : stdgo.GoUInt32);
        stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._setOrder(_, _0);
    }
    static public function _setType(_:T_lazyObject, _0:Type_):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._setType(_, _0);
    }
    static public function _color(_:T_lazyObject):T_color {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._color(_);
    }
    static public function _order(_:T_lazyObject):std.UInt {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension._order(_);
    }
    static public function string(_:T_lazyObject):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.string(_);
    }
    static public function id(_:T_lazyObject):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.id(_);
    }
    static public function exported(_:T_lazyObject):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.exported(_);
    }
    static public function type(_:T_lazyObject):Type_ {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.type(_);
    }
    static public function name(_:T_lazyObject):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.name(_);
    }
    static public function pkg(_:T_lazyObject):Package {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.pkg(_);
    }
    static public function pos(_:T_lazyObject):stdgo._internal.go.token.Token_pos.Pos {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.pos(_);
    }
    static public function parent(_:T_lazyObject):Scope {
        final _ = (_ : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>);
        return stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension.parent(_);
    }
}
typedef SelectionPointer = stdgo._internal.go.types.Types_selectionpointer.SelectionPointer;
class Selection_static_extension {
    static public function string(_s:Selection):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.string(_s);
    }
    static public function indirect(_s:Selection):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.indirect(_s);
    }
    static public function index(_s:Selection):Array<StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return [for (i in stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.index(_s)) i];
    }
    static public function type(_s:Selection):Type_ {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.type(_s);
    }
    static public function obj(_s:Selection):Object {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.obj(_s);
    }
    static public function recv(_s:Selection):Type_ {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.recv(_s);
    }
    static public function kind(_s:Selection):SelectionKind {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension.kind(_s);
    }
}
typedef SignaturePointer = stdgo._internal.go.types.Types_signaturepointer.SignaturePointer;
class Signature_static_extension {
    static public function string(_t:Signature):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.string(_t);
    }
    static public function underlying(_t:Signature):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.underlying(_t);
    }
    static public function variadic(_s:Signature):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.variadic(_s);
    }
    static public function results(_s:Signature):Tuple {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.results(_s);
    }
    static public function params(_s:Signature):Tuple {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.params(_s);
    }
    static public function recvTypeParams(_s:Signature):TypeParamList {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.recvTypeParams(_s);
    }
    static public function typeParams(_s:Signature):TypeParamList {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.typeParams(_s);
    }
    static public function recv(_s:Signature):Var {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension.recv(_s);
    }
}
typedef StdSizesPointer = stdgo._internal.go.types.Types_stdsizespointer.StdSizesPointer;
class StdSizes_static_extension {
    static public function sizeof(_s:StdSizes, t:Type_):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>);
        return stdgo._internal.go.types.Types_stdsizes_static_extension.StdSizes_static_extension.sizeof(_s, t);
    }
    static public function offsetsof(_s:StdSizes, _fields:Array<Var>):Array<haxe.Int64> {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>);
        final _fields = ([for (i in _fields) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return [for (i in stdgo._internal.go.types.Types_stdsizes_static_extension.StdSizes_static_extension.offsetsof(_s, _fields)) i];
    }
    static public function alignof_(_s:StdSizes, t:Type_):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>);
        return stdgo._internal.go.types.Types_stdsizes_static_extension.StdSizes_static_extension.alignof_(_s, t);
    }
}
typedef Slice_Pointer = stdgo._internal.go.types.Types_slice_pointer.Slice_Pointer;
class Slice__static_extension {
    static public function string(_s:Slice_):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>);
        return stdgo._internal.go.types.Types_slice__static_extension.Slice__static_extension.string(_s);
    }
    static public function underlying(_s:Slice_):Type_ {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>);
        return stdgo._internal.go.types.Types_slice__static_extension.Slice__static_extension.underlying(_s);
    }
    static public function elem(_s:Slice_):Type_ {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>);
        return stdgo._internal.go.types.Types_slice__static_extension.Slice__static_extension.elem(_s);
    }
}
@:dox(hide) typedef T_valueTypePointer = stdgo._internal.go.types.Types_t_valuetypepointer.T_valueTypePointer;
@:dox(hide) class T_valueType_static_extension {

}
typedef StructPointer = stdgo._internal.go.types.Types_structpointer.StructPointer;
class Struct_static_extension {
    static public function _markComplete(_s:Struct):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension._markComplete(_s);
    }
    static public function string(_t:Struct):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        return stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension.string(_t);
    }
    static public function underlying(_t:Struct):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        return stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension.underlying(_t);
    }
    static public function tag(_s:Struct, _i:StdTypes.Int):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension.tag(_s, _i);
    }
    static public function field(_s:Struct, _i:StdTypes.Int):Var {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension.field(_s, _i);
    }
    static public function numFields(_s:Struct):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        return stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension.numFields(_s);
    }
}
@:dox(hide) typedef T_substerPointer = stdgo._internal.go.types.Types_t_substerpointer.T_substerPointer;
@:dox(hide) class T_subster_static_extension {
    static public function _termlist(_subst:T_subster, _in:Array<Term>):stdgo.Tuple<Array<Term>, Bool> {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _in = ([for (i in _in) (i : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
        return {
            final obj = stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._termlist(_subst, _in);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _typeList(_subst:T_subster, _in:Array<Type_>):stdgo.Tuple<Array<Type_>, Bool> {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return {
            final obj = stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._typeList(_subst, _in);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _funcList(_subst:T_subster, _in:Array<Func>):stdgo.Tuple<Array<Func>, Bool> {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _in = ([for (i in _in) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        return {
            final obj = stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._funcList(_subst, _in);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _func_(_subst:T_subster, _f:Func):Func {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _f = (_f : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        return stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._func_(_subst, _f);
    }
    static public function _varList(_subst:T_subster, _in:Array<Var>):stdgo.Tuple<Array<Var>, Bool> {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _in = ([for (i in _in) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        return {
            final obj = stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._varList(_subst, _in);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _tuple(_subst:T_subster, _t:Tuple):Tuple {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._tuple(_subst, _t);
    }
    static public function _var_(_subst:T_subster, _v:Var):Var {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        final _v = (_v : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        return stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._var_(_subst, _v);
    }
    static public function _typOrNil(_subst:T_subster, _typ:Type_):Type_ {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        return stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._typOrNil(_subst, _typ);
    }
    static public function _typ(_subst:T_subster, _typ:Type_):Type_ {
        final _subst = (_subst : stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>);
        return stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension._typ(_subst, _typ);
    }
}
typedef TuplePointer = stdgo._internal.go.types.Types_tuplepointer.TuplePointer;
class Tuple_static_extension {
    static public function string(_t:Tuple):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return stdgo._internal.go.types.Types_tuple_static_extension.Tuple_static_extension.string(_t);
    }
    static public function underlying(_t:Tuple):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return stdgo._internal.go.types.Types_tuple_static_extension.Tuple_static_extension.underlying(_t);
    }
    static public function at(_t:Tuple, _i:StdTypes.Int):Var {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_tuple_static_extension.Tuple_static_extension.at(_t, _i);
    }
    static public function len(_t:Tuple):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return stdgo._internal.go.types.Types_tuple_static_extension.Tuple_static_extension.len(_t);
    }
}
typedef TypeParamListPointer = stdgo._internal.go.types.Types_typeparamlistpointer.TypeParamListPointer;
class TypeParamList_static_extension {
    static public function _list(_l:TypeParamList):Array<TypeParam> {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        return [for (i in stdgo._internal.go.types.Types_typeparamlist_static_extension.TypeParamList_static_extension._list(_l)) i];
    }
    static public function at(_l:TypeParamList, _i:StdTypes.Int):TypeParam {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_typeparamlist_static_extension.TypeParamList_static_extension.at(_l, _i);
    }
    static public function len(_l:TypeParamList):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
        return stdgo._internal.go.types.Types_typeparamlist_static_extension.TypeParamList_static_extension.len(_l);
    }
}
typedef TypeListPointer = stdgo._internal.go.types.Types_typelistpointer.TypeListPointer;
class TypeList_static_extension {
    static public function _list(_l:TypeList):Array<Type_> {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
        return [for (i in stdgo._internal.go.types.Types_typelist_static_extension.TypeList_static_extension._list(_l)) i];
    }
    static public function at(_l:TypeList, _i:StdTypes.Int):Type_ {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_typelist_static_extension.TypeList_static_extension.at(_l, _i);
    }
    static public function len(_l:TypeList):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
        return stdgo._internal.go.types.Types_typelist_static_extension.TypeList_static_extension.len(_l);
    }
}
typedef TypeParamPointer = stdgo._internal.go.types.Types_typeparampointer.TypeParamPointer;
class TypeParam_static_extension {
    static public function _underIs(_t:TypeParam, _f:Type_ -> Bool):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        final _f = _f;
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension._underIs(_t, _f);
    }
    static public function _is(_t:TypeParam, _f:T_term -> Bool):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        final _f = _f;
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension._is(_t, _f);
    }
    static public function _iface(_t:TypeParam):Interface {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension._iface(_t);
    }
    static public function _cleanup(_t:TypeParam):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension._cleanup(_t);
    }
    static public function string(_t:TypeParam):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension.string(_t);
    }
    static public function underlying(_t:TypeParam):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension.underlying(_t);
    }
    static public function setConstraint(_t:TypeParam, _bound:Type_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension.setConstraint(_t, _bound);
    }
    static public function constraint(_t:TypeParam):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension.constraint(_t);
    }
    static public function index(_t:TypeParam):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension.index(_t);
    }
    static public function obj(_t:TypeParam):TypeName {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension.obj(_t);
    }
}
@:dox(hide) typedef T__TypeSetPointer = stdgo._internal.go.types.Types_t__typesetpointer.T__TypeSetPointer;
@:dox(hide) class T__TypeSet_static_extension {
    static public function _underIs(_s:T__TypeSet, _f:Type_ -> Bool):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        final _f = _f;
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension._underIs(_s, _f);
    }
    static public function _is(_s:T__TypeSet, _f:T_term -> Bool):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        final _f = _f;
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension._is(_s, _f);
    }
    static public function _subsetOf(_s1:T__TypeSet, _s2:T__TypeSet):Bool {
        final _s1 = (_s1 : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        final _s2 = (_s2 : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension._subsetOf(_s1, _s2);
    }
    static public function _hasTerms(_s:T__TypeSet):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension._hasTerms(_s);
    }
    static public function string(_s:T__TypeSet):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.string(_s);
    }
    static public function lookupMethod(_s:T__TypeSet, _pkg:Package, _name:String, _foldCase:Bool):stdgo.Tuple<StdTypes.Int, Func> {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.lookupMethod(_s, _pkg, _name, _foldCase);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function method(_s:T__TypeSet, _i:StdTypes.Int):Func {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.method(_s, _i);
    }
    static public function numMethods(_s:T__TypeSet):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.numMethods(_s);
    }
    static public function isComparable(_s:T__TypeSet, _seen:Map<Type_, Bool>):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.isComparable(_s, _seen);
    }
    static public function isMethodSet(_s:T__TypeSet):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.isMethodSet(_s);
    }
    static public function isAll(_s:T__TypeSet):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.isAll(_s);
    }
    static public function isEmpty(_s:T__TypeSet):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        return stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension.isEmpty(_s);
    }
}
@:dox(hide) typedef T_typeWriterPointer = stdgo._internal.go.types.Types_t_typewriterpointer.T_typeWriterPointer;
@:dox(hide) class T_typeWriter_static_extension {
    static public function _signature(_w:T_typeWriter, _sig:Signature):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._signature(_w, _sig);
    }
    static public function _tuple(_w:T_typeWriter, _tup:Tuple, _variadic:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _tup = (_tup : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._tuple(_w, _tup, _variadic);
    }
    static public function _typeName(_w:T_typeWriter, _obj:TypeName):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._typeName(_w, _obj);
    }
    static public function _tParamList(_w:T_typeWriter, _list:Array<TypeParam>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._tParamList(_w, _list);
    }
    static public function _typeList(_w:T_typeWriter, _list:Array<Type_>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._typeList(_w, _list);
    }
    static public function _typeSet(_w:T_typeWriter, _s:T__TypeSet):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._typeSet(_w, _s);
    }
    static public function _typ(_w:T_typeWriter, _typ:Type_):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._typ(_w, _typ);
    }
    static public function _error(_w:T_typeWriter, _msg:String):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._error(_w, _msg);
    }
    static public function _string(_w:T_typeWriter, _s:String):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._string(_w, _s);
    }
    static public function _byte(_w:T_typeWriter, _b:std.UInt):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
        final _b = (_b : stdgo.GoUInt8);
        stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension._byte(_w, _b);
    }
}
@:dox(hide) typedef T_termPointer = stdgo._internal.go.types.Types_t_termpointer.T_termPointer;
@:dox(hide) class T_term_static_extension {
    static public function _disjoint(_x:T_term, _y:T_term):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension._disjoint(_x, _y);
    }
    static public function _subsetOf(_x:T_term, _y:T_term):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension._subsetOf(_x, _y);
    }
    static public function _includes(_x:T_term, _t:Type_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension._includes(_x, _t);
    }
    static public function _intersect(_x:T_term, _y:T_term):T_term {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension._intersect(_x, _y);
    }
    static public function _union(_x:T_term, _y:T_term):stdgo.Tuple<T_term, T_term> {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return {
            final obj = stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension._union(_x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _equal(_x:T_term, _y:T_term):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension._equal(_x, _y);
    }
    static public function string(_x:T_term):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension.string(_x);
    }
}
@:dox(hide) typedef T_unifierPointer = stdgo._internal.go.types.Types_t_unifierpointer.T_unifierPointer;
@:dox(hide) class T_unifier_static_extension {
    static public function _nify(_u:T_unifier, _x:Type_, _y:Type_, _mode:T_unifyMode, _p:T_ifacePair):Bool {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._nify(_u, _x, _y, _mode, _p);
    }
    static public function _inferred(_u:T_unifier, _tparams:Array<TypeParam>):Array<Type_> {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return [for (i in stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._inferred(_u, _tparams)) i];
    }
    static public function _unknowns(_u:T_unifier):StdTypes.Int {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._unknowns(_u);
    }
    static public function _set(_u:T_unifier, _x:TypeParam, _t:Type_):Void {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._set(_u, _x, _t);
    }
    static public function _at(_u:T_unifier, _x:TypeParam):Type_ {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._at(_u, _x);
    }
    static public function _setHandle(_u:T_unifier, _x:TypeParam, _h:Type_):Void {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        final _h = (_h : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
        stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._setHandle(_u, _x, _h);
    }
    static public function _asTypeParam(_u:T_unifier, _x:Type_):TypeParam {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._asTypeParam(_u, _x);
    }
    static public function _join(_u:T_unifier, _x:TypeParam, _y:TypeParam):Bool {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._join(_u, _x, _y);
    }
    static public function string(_u:T_unifier):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension.string(_u);
    }
    static public function _tracef(_u:T_unifier, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._tracef(_u, _format, ...[for (i in _args) i]);
    }
    static public function _unify(_u:T_unifier, _x:Type_, _y:Type_, _mode:T_unifyMode):Bool {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
        return stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension._unify(_u, _x, _y, _mode);
    }
}
typedef UnionPointer = stdgo._internal.go.types.Types_unionpointer.UnionPointer;
class Union_static_extension {
    static public function string(_u:Union):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>);
        return stdgo._internal.go.types.Types_union_static_extension.Union_static_extension.string(_u);
    }
    static public function underlying(_u:Union):Type_ {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>);
        return stdgo._internal.go.types.Types_union_static_extension.Union_static_extension.underlying(_u);
    }
    static public function term(_u:Union, _i:StdTypes.Int):Term {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.go.types.Types_union_static_extension.Union_static_extension.term(_u, _i);
    }
    static public function len(_u:Union):StdTypes.Int {
        final _u = (_u : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>);
        return stdgo._internal.go.types.Types_union_static_extension.Union_static_extension.len(_u);
    }
}
@:dox(hide) typedef T_versionPointer = stdgo._internal.go.types.Types_t_versionpointer.T_versionPointer;
@:dox(hide) class T_version_static_extension {
    static public function _after(_v:T_version, _u:T_version):Bool {
        return stdgo._internal.go.types.Types_t_version_static_extension.T_version_static_extension._after(_v, _u);
    }
    static public function _before(_v:T_version, _u:T_version):Bool {
        return stdgo._internal.go.types.Types_t_version_static_extension.T_version_static_extension._before(_v, _u);
    }
    static public function _equal(_v:T_version, _u:T_version):Bool {
        return stdgo._internal.go.types.Types_t_version_static_extension.T_version_static_extension._equal(_v, _u);
    }
    static public function string(_v:T_version):String {
        return stdgo._internal.go.types.Types_t_version_static_extension.T_version_static_extension.string(_v);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.go.types.Types_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.go.types.Types_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.go.types.Types_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.go.types.Types_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.go.types.Types_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.go.types.Types_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.go.types.Types_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
@:dox(hide) typedef T__struct_7PointerPointer = stdgo._internal.go.types.Types_t__struct_7pointerpointer.T__struct_7PointerPointer;
@:dox(hide) class T__struct_7Pointer_static_extension {

}
@:dox(hide) typedef T__struct_8PointerPointer = stdgo._internal.go.types.Types_t__struct_8pointerpointer.T__struct_8PointerPointer;
@:dox(hide) class T__struct_8Pointer_static_extension {

}
typedef ImportModePointer = stdgo._internal.go.types.Types_importmodepointer.ImportModePointer;
class ImportMode_static_extension {

}
typedef BasicKindPointer = stdgo._internal.go.types.Types_basickindpointer.BasicKindPointer;
class BasicKind_static_extension {

}
typedef BasicInfoPointer = stdgo._internal.go.types.Types_basicinfopointer.BasicInfoPointer;
class BasicInfo_static_extension {

}
typedef ChanDirPointer = stdgo._internal.go.types.Types_chandirpointer.ChanDirPointer;
class ChanDir_static_extension {

}
@:dox(hide) typedef T_atPosPointer = stdgo._internal.go.types.Types_t_atpospointer.T_atPosPointer;
@:dox(hide) class T_atPos_static_extension {
    static public function pos(_s:T_atPos):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.types.Types_t_atpos_static_extension.T_atPos_static_extension.pos(_s);
    }
}
@:dox(hide) typedef T_opPredicatesPointer = stdgo._internal.go.types.Types_t_oppredicatespointer.T_opPredicatesPointer;
@:dox(hide) class T_opPredicates_static_extension {

}
@:dox(hide) typedef T_exprKindPointer = stdgo._internal.go.types.Types_t_exprkindpointer.T_exprKindPointer;
@:dox(hide) class T_exprKind_static_extension {

}
@:dox(hide) typedef T_nodeSetPointer = stdgo._internal.go.types.Types_t_nodesetpointer.T_nodeSetPointer;
@:dox(hide) class T_nodeSet_static_extension {
    static public function _add(_s:T_nodeSet, _p:T_graphNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t_nodeset.T_nodeSet>);
        final _p = (_p : stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>);
        stdgo._internal.go.types.Types_t_nodeset_static_extension.T_nodeSet_static_extension._add(_s, _p);
    }
}
@:dox(hide) typedef T_nodeQueuePointer = stdgo._internal.go.types.Types_t_nodequeuepointer.T_nodeQueuePointer;
@:dox(hide) class T_nodeQueue_static_extension {
    static public function pop(_a:T_nodeQueue):stdgo.AnyInterface {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue>);
        return stdgo._internal.go.types.Types_t_nodequeue_static_extension.T_nodeQueue_static_extension.pop(_a);
    }
    static public function push(_a:T_nodeQueue, _x:stdgo.AnyInterface):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue>);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.go.types.Types_t_nodequeue_static_extension.T_nodeQueue_static_extension.push(_a, _x);
    }
    static public function less(_a:T_nodeQueue, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.types.Types_t_nodequeue_static_extension.T_nodeQueue_static_extension.less(_a, _i, _j);
    }
    static public function swap(_a:T_nodeQueue, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.types.Types_t_nodequeue_static_extension.T_nodeQueue_static_extension.swap(_a, _i, _j);
    }
    static public function len(_a:T_nodeQueue):StdTypes.Int {
        return stdgo._internal.go.types.Types_t_nodequeue_static_extension.T_nodeQueue_static_extension.len(_a);
    }
}
@:dox(hide) typedef T_methodSetPointer = stdgo._internal.go.types.Types_t_methodsetpointer.T_methodSetPointer;
@:dox(hide) class T_methodSet_static_extension {
    static public function _addOne(_s:T_methodSet, _f:Func, _index:Array<StdTypes.Int>, _indirect:Bool, _multiples:Bool):T_methodSet {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.go.types.Types_t_methodset_static_extension.T_methodSet_static_extension._addOne(_s, _f, _index, _indirect, _multiples);
    }
    static public function _add(_s:T_methodSet, _list:Array<Func>, _index:Array<StdTypes.Int>, _indirect:Bool, _multiples:Bool):T_methodSet {
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.go.types.Types_t_methodset_static_extension.T_methodSet_static_extension._add(_s, _list, _index, _indirect, _multiples);
    }
}
@:dox(hide) typedef T_namedStatePointer = stdgo._internal.go.types.Types_t_namedstatepointer.T_namedStatePointer;
@:dox(hide) class T_namedState_static_extension {

}
@:dox(hide) typedef T_colorPointer = stdgo._internal.go.types.Types_t_colorpointer.T_colorPointer;
@:dox(hide) class T_color_static_extension {
    static public function string(_c:T_color):String {
        return stdgo._internal.go.types.Types_t_color_static_extension.T_color_static_extension.string(_c);
    }
}
@:dox(hide) typedef T_objsetPointer = stdgo._internal.go.types.Types_t_objsetpointer.T_objsetPointer;
@:dox(hide) class T_objset_static_extension {
    static public function _insert(_s:T_objset, _obj:Object):Object {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_t_objset.T_objset>);
        return stdgo._internal.go.types.Types_t_objset_static_extension.T_objset_static_extension._insert(_s, _obj);
    }
}
@:dox(hide) typedef T_operandModePointer = stdgo._internal.go.types.Types_t_operandmodepointer.T_operandModePointer;
@:dox(hide) class T_operandMode_static_extension {

}
@:dox(hide) typedef T_inSourceOrderPointer = stdgo._internal.go.types.Types_t_insourceorderpointer.T_inSourceOrderPointer;
@:dox(hide) class T_inSourceOrder_static_extension {
    static public function swap(_a:T_inSourceOrder, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.types.Types_t_insourceorder_static_extension.T_inSourceOrder_static_extension.swap(_a, _i, _j);
    }
    static public function less(_a:T_inSourceOrder, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.types.Types_t_insourceorder_static_extension.T_inSourceOrder_static_extension.less(_a, _i, _j);
    }
    static public function len(_a:T_inSourceOrder):StdTypes.Int {
        return stdgo._internal.go.types.Types_t_insourceorder_static_extension.T_inSourceOrder_static_extension.len(_a);
    }
}
typedef SelectionKindPointer = stdgo._internal.go.types.Types_selectionkindpointer.SelectionKindPointer;
class SelectionKind_static_extension {

}
@:dox(hide) typedef T_stmtContextPointer = stdgo._internal.go.types.Types_t_stmtcontextpointer.T_stmtContextPointer;
@:dox(hide) class T_stmtContext_static_extension {

}
@:dox(hide) typedef T_valueMapPointer = stdgo._internal.go.types.Types_t_valuemappointer.T_valueMapPointer;
@:dox(hide) class T_valueMap_static_extension {

}
@:dox(hide) typedef T_substMapPointer = stdgo._internal.go.types.Types_t_substmappointer.T_substMapPointer;
@:dox(hide) class T_substMap_static_extension {
    static public function _lookup(_m:T_substMap, _tpar:TypeParam):Type_ {
        final _tpar = (_tpar : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return stdgo._internal.go.types.Types_t_substmap_static_extension.T_substMap_static_extension._lookup(_m, _tpar);
    }
    static public function _empty(_m:T_substMap):Bool {
        return stdgo._internal.go.types.Types_t_substmap_static_extension.T_substMap_static_extension._empty(_m);
    }
}
@:dox(hide) typedef T_termlistPointer = stdgo._internal.go.types.Types_t_termlistpointer.T_termlistPointer;
@:dox(hide) class T_termlist_static_extension {
    static public function _subsetOf(_xl:T_termlist, _yl:T_termlist):Bool {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._subsetOf(_xl, _yl);
    }
    static public function _supersetOf(_xl:T_termlist, _y:T_term):Bool {
        final _y = (_y : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._supersetOf(_xl, _y);
    }
    static public function _includes(_xl:T_termlist, _t:Type_):Bool {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._includes(_xl, _t);
    }
    static public function _equal(_xl:T_termlist, _yl:T_termlist):Bool {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._equal(_xl, _yl);
    }
    static public function _intersect(_xl:T_termlist, _yl:T_termlist):T_termlist {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._intersect(_xl, _yl);
    }
    static public function _union(_xl:T_termlist, _yl:T_termlist):T_termlist {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._union(_xl, _yl);
    }
    static public function _norm(_xl:T_termlist):T_termlist {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._norm(_xl);
    }
    static public function _isAll(_xl:T_termlist):Bool {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._isAll(_xl);
    }
    static public function _isEmpty(_xl:T_termlist):Bool {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension._isEmpty(_xl);
    }
    static public function string(_xl:T_termlist):String {
        return stdgo._internal.go.types.Types_t_termlist_static_extension.T_termlist_static_extension.string(_xl);
    }
}
@:dox(hide) typedef T_byUniqueMethodNamePointer = stdgo._internal.go.types.Types_t_byuniquemethodnamepointer.T_byUniqueMethodNamePointer;
@:dox(hide) class T_byUniqueMethodName_static_extension {
    static public function swap(_a:T_byUniqueMethodName, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.types.Types_t_byuniquemethodname_static_extension.T_byUniqueMethodName_static_extension.swap(_a, _i, _j);
    }
    static public function less(_a:T_byUniqueMethodName, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.types.Types_t_byuniquemethodname_static_extension.T_byUniqueMethodName_static_extension.less(_a, _i, _j);
    }
    static public function len(_a:T_byUniqueMethodName):StdTypes.Int {
        return stdgo._internal.go.types.Types_t_byuniquemethodname_static_extension.T_byUniqueMethodName_static_extension.len(_a);
    }
}
typedef QualifierPointer = stdgo._internal.go.types.Types_qualifierpointer.QualifierPointer;
class Qualifier_static_extension {

}
@:dox(hide) typedef T_unifyModePointer = stdgo._internal.go.types.Types_t_unifymodepointer.T_unifyModePointer;
@:dox(hide) class T_unifyMode_static_extension {
    static public function string(_m:T_unifyMode):String {
        return stdgo._internal.go.types.Types_t_unifymode_static_extension.T_unifyMode_static_extension.string(_m);
    }
}
@:dox(hide) typedef T_typeParamsByIdPointer = stdgo._internal.go.types.Types_t_typeparamsbyidpointer.T_typeParamsByIdPointer;
@:dox(hide) class T_typeParamsById_static_extension {
    static public function swap(_s:T_typeParamsById, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.types.Types_t_typeparamsbyid_static_extension.T_typeParamsById_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_typeParamsById, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.types.Types_t_typeparamsbyid_static_extension.T_typeParamsById_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_typeParamsById):StdTypes.Int {
        return stdgo._internal.go.types.Types_t_typeparamsbyid_static_extension.T_typeParamsById_static_extension.len(_s);
    }
}
typedef TermPointer = stdgo._internal.go.types.Types_termpointer.TermPointer;
class Term_static_extension {
    static public function string(_t:Term):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>);
        return stdgo._internal.go.types.Types_term_static_extension.Term_static_extension.string(_t);
    }
    static public function type(_t:Term):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>);
        return stdgo._internal.go.types.Types_term_static_extension.Term_static_extension.type(_t);
    }
    static public function tilde(_t:Term):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>);
        return stdgo._internal.go.types.Types_term_static_extension.Term_static_extension.tilde(_t);
    }
}
@:dox(hide) typedef T_builtinIdPointer = stdgo._internal.go.types.Types_t_builtinidpointer.T_builtinIdPointer;
@:dox(hide) class T_builtinId_static_extension {

}
/**
    * Package types declares the data types and implements
    * the algorithms for type-checking of Go packages. Use
    * Config.Check to invoke the type checker for a package.
    * Alternatively, create a new type checker with NewChecker
    * and invoke it incrementally by calling Checker.Files.
    * 
    * Type-checking consists of several interdependent phases:
    * 
    * Name resolution maps each identifier (ast.Ident) in the program to the
    * language object (Object) it denotes.
    * Use Info.{Defs,Uses,Implicits} for the results of name resolution.
    * 
    * Constant folding computes the exact constant value (constant.Value)
    * for every expression (ast.Expr) that is a compile-time constant.
    * Use Info.Types[expr].Value for the results of constant folding.
    * 
    * Type inference computes the type (Type) of every expression (ast.Expr)
    * and checks for compliance with the language specification.
    * Use Info.Types[expr].Type for the results of type inference.
    * 
    * For a tutorial, see https://golang.org/s/types-tutorial.
**/
class Types {
    /**
        * AssertableTo reports whether a value of type V can be asserted to have type T.
        * 
        * The behavior of AssertableTo is unspecified in three cases:
        *   - if T is Typ[Invalid]
        *   - if V is a generalized interface; i.e., an interface that may only be used
        *     as a type constraint in Go code
        *   - if T is an uninstantiated generic type
    **/
    static public inline function assertableTo(v:Interface, t:Type_):Bool {
        final v = (v : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_assertableto.assertableTo(v, t);
    }
    /**
        * AssignableTo reports whether a value of type V is assignable to a variable
        * of type T.
        * 
        * The behavior of AssignableTo is unspecified if V or T is Typ[Invalid] or an
        * uninstantiated generic type.
    **/
    static public inline function assignableTo(v:Type_, t:Type_):Bool {
        return stdgo._internal.go.types.Types_assignableto.assignableTo(v, t);
    }
    /**
        * ConvertibleTo reports whether a value of type V is convertible to a value of
        * type T.
        * 
        * The behavior of ConvertibleTo is unspecified if V or T is Typ[Invalid] or an
        * uninstantiated generic type.
    **/
    static public inline function convertibleTo(v:Type_, t:Type_):Bool {
        return stdgo._internal.go.types.Types_convertibleto.convertibleTo(v, t);
    }
    /**
        * Implements reports whether type V implements interface T.
        * 
        * The behavior of Implements is unspecified if V is Typ[Invalid] or an uninstantiated
        * generic type.
    **/
    static public inline function implements_(v:Type_, t:Interface):Bool {
        final t = (t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_implements_.implements_(v, t);
    }
    /**
        * Satisfies reports whether type V satisfies the constraint T.
        * 
        * The behavior of Satisfies is unspecified if V is Typ[Invalid] or an uninstantiated
        * generic type.
    **/
    static public inline function satisfies(v:Type_, t:Interface):Bool {
        final t = (t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return stdgo._internal.go.types.Types_satisfies.satisfies(v, t);
    }
    /**
        * Identical reports whether x and y are identical types.
        * Receivers of Signature types are ignored.
    **/
    static public inline function identical(_x:Type_, _y:Type_):Bool {
        return stdgo._internal.go.types.Types_identical.identical(_x, _y);
    }
    /**
        * IdenticalIgnoreTags reports whether x and y are identical types if tags are ignored.
        * Receivers of Signature types are ignored.
    **/
    static public inline function identicalIgnoreTags(_x:Type_, _y:Type_):Bool {
        return stdgo._internal.go.types.Types_identicalignoretags.identicalIgnoreTags(_x, _y);
    }
    /**
        * NewArray returns a new array type for the given element type and length.
        * A negative length indicates an unknown length.
    **/
    static public inline function newArray(_elem:Type_, _len:haxe.Int64):Array_ {
        final _len = (_len : stdgo.GoInt64);
        return stdgo._internal.go.types.Types_newarray.newArray(_elem, _len);
    }
    /**
        * NewChan returns a new channel type for the given direction and element type.
    **/
    static public inline function newChan(_dir:ChanDir, _elem:Type_):Chan {
        return stdgo._internal.go.types.Types_newchan.newChan(_dir, _elem);
    }
    /**
        * NewChecker returns a new Checker instance for a given package.
        * Package files may be added incrementally via checker.Files.
    **/
    static public inline function newChecker(_conf:Config, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _pkg:Package, _info:Info):Checker {
        final _conf = (_conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _info = (_info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        return stdgo._internal.go.types.Types_newchecker.newChecker(_conf, _fset, _pkg, _info);
    }
    /**
        * NewContext creates a new Context.
    **/
    static public inline function newContext():Context {
        return stdgo._internal.go.types.Types_newcontext.newContext();
    }
    static public inline function testContextHashCollisions(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testcontexthashcollisions.testContextHashCollisions(_t);
    }
    static public inline function testError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testerror.testError(_t);
    }
    static public inline function testStripAnnotations(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_teststripannotations.testStripAnnotations(_t);
    }
    /**
        * Eval returns the type and, if constant, the value for the
        * expression expr, evaluated at position pos of package pkg,
        * which must have been derived from type-checking an AST with
        * complete position information relative to the provided file
        * set.
        * 
        * The meaning of the parameters fset, pkg, and pos is the
        * same as in CheckExpr. An error is returned if expr cannot
        * be parsed successfully, or the resulting expr AST cannot be
        * type-checked.
    **/
    static public inline function eval(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _pkg:Package, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:String):stdgo.Tuple<TypeAndValue, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _expr = (_expr : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_eval.eval(_fset, _pkg, _pos, _expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CheckExpr type checks the expression expr as if it had appeared at position
        * pos of package pkg. Type information about the expression is recorded in
        * info. The expression may be an identifier denoting an uninstantiated generic
        * function or type.
        * 
        * If pkg == nil, the Universe scope is used and the provided
        * position pos is ignored. If pkg != nil, and pos is invalid,
        * the package scope is used. Otherwise, pos must belong to the
        * package.
        * 
        * An error is returned if pos is not within the package or
        * if the node cannot be type-checked.
        * 
        * Note: Eval and CheckExpr should not be used instead of running Check
        * to compute types and values, but in addition to Check, as these
        * functions ignore the context in which an expression is used (e.g., an
        * assignment). Thus, top-level untyped constants will return an
        * untyped type rather than the respective context-specific type.
    **/
    static public inline function checkExpr(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _pkg:Package, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _info:Info):stdgo.Error {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _info = (_info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        return stdgo._internal.go.types.Types_checkexpr.checkExpr(_fset, _pkg, _pos, _expr, _info);
    }
    /**
        * ExprString returns the (possibly shortened) string representation for x.
        * Shortened representations are suitable for user interfaces but may not
        * necessarily follow Go syntax.
    **/
    static public inline function exprString(_x:stdgo._internal.go.ast.Ast_expr.Expr):String {
        return stdgo._internal.go.types.Types_exprstring.exprString(_x);
    }
    /**
        * WriteExpr writes the (possibly shortened) string representation for x to buf.
        * Shortened representations are suitable for user interfaces but may not
        * necessarily follow Go syntax.
    **/
    static public inline function writeExpr(_buf:stdgo._internal.bytes.Bytes_buffer.Buffer, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, _x);
    }
    /**
        * Instantiate instantiates the type orig with the given type arguments targs.
        * orig must be a *Named or a *Signature type. If there is no error, the
        * resulting Type is an instantiated type of the same kind (either a *Named or
        * a *Signature). Methods attached to a *Named type are also instantiated, and
        * associated with a new *Func that has the same position as the original
        * method, but nil function scope.
        * 
        * If ctxt is non-nil, it may be used to de-duplicate the instance against
        * previous instances with the same identity. As a special case, generic
        * *Signature origin types are only considered identical if they are pointer
        * equivalent, so that instantiating distinct (but possibly identical)
        * signatures will yield different instances. The use of a shared context does
        * not guarantee that identical instances are deduplicated in all cases.
        * 
        * If validate is set, Instantiate verifies that the number of type arguments
        * and parameters match, and that the type arguments satisfy their
        * corresponding type constraints. If verification fails, the resulting error
        * may wrap an *ArgumentError indicating which type argument did not satisfy
        * its corresponding type parameter constraint, and why.
        * 
        * If validate is not set, Instantiate does not verify the type argument count
        * or whether the type arguments satisfy their constraints. Instantiate is
        * guaranteed to not return an error, but may panic. Specifically, for
        * *Signature types, Instantiate will panic immediately if the type argument
        * count is incorrect; for *Named types, a panic may occur later inside the
        * *Named API.
    **/
    static public inline function instantiate(_ctxt:Context, _orig:Type_, _targs:Array<Type_>, _validate:Bool):stdgo.Tuple<Type_, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        final _targs = ([for (i in _targs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return {
            final obj = stdgo._internal.go.types.Types_instantiate.instantiate(_ctxt, _orig, _targs, _validate);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewInterface returns a new interface for the given methods and embedded types.
        * NewInterface takes ownership of the provided methods and may modify their types
        * by setting missing receivers.
        * 
        * Deprecated: Use NewInterfaceType instead which allows arbitrary embedded types.
    **/
    static public inline function newInterface(_methods:Array<Func>, _embeddeds:Array<Named>):Interface {
        final _methods = ([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        final _embeddeds = ([for (i in _embeddeds) (i : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
        return stdgo._internal.go.types.Types_newinterface.newInterface(_methods, _embeddeds);
    }
    /**
        * NewInterfaceType returns a new interface for the given methods and embedded
        * types. NewInterfaceType takes ownership of the provided methods and may
        * modify their types by setting missing receivers.
        * 
        * To avoid race conditions, the interface's type set should be computed before
        * concurrent use of the interface, by explicitly calling Complete.
    **/
    static public inline function newInterfaceType(_methods:Array<Func>, _embeddeds:Array<Type_>):Interface {
        final _methods = ([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        final _embeddeds = ([for (i in _embeddeds) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeddeds);
    }
    /**
        * LookupFieldOrMethod looks up a field or method with given package and name
        * in T and returns the corresponding *Var or *Func, an index sequence, and a
        * bool indicating if there were any pointer indirections on the path to the
        * field or method. If addressable is set, T is the type of an addressable
        * variable (only matters for method lookups). T must not be nil.
        * 
        * The last index entry is the field or method index in the (possibly embedded)
        * type where the entry was found, either:
        * 
        *  1. the list of declared methods of a named type; or
        *  2. the list of all methods (method set) of an interface type; or
        *  3. the list of fields of a struct type.
        * 
        * The earlier index entries are the indices of the embedded struct fields
        * traversed to get to the found entry, starting at depth 0.
        * 
        * If no entry is found, a nil object is returned. In this case, the returned
        * index and indirect values have the following meaning:
        * 
        *   - If index != nil, the index sequence points to an ambiguous entry
        *     (the same name appeared more than once at the same embedding level).
        * 
        *   - If indirect is set, a method with a pointer receiver type was found
        *     but there was no pointer on the path from the actual receiver type to
        *     the method's formal receiver base type, nor was the receiver addressable.
    **/
    static public inline function lookupFieldOrMethod(t:Type_, _addressable:Bool, _pkg:Package, _name:String):stdgo.Tuple.Tuple3<Object, Array<StdTypes.Int>, Bool> {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.types.Types_lookupfieldormethod.lookupFieldOrMethod(t, _addressable, _pkg, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        * MissingMethod returns (nil, false) if V implements T, otherwise it
        * returns a missing method required by T and whether it is missing or
        * just has the wrong type: either a pointer receiver or wrong signature.
        * 
        * For non-interface types V, or if static is set, V implements T if all
        * methods of T are present in V. Otherwise (V is an interface and static
        * is not set), MissingMethod only checks that methods of T which are also
        * present in V have matching types (e.g., for a type assertion x.(T) where
        * x is of interface type V).
    **/
    static public inline function missingMethod(v:Type_, t:Interface, _static:Bool):stdgo.Tuple<Func, Bool> {
        final t = (t : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        return {
            final obj = stdgo._internal.go.types.Types_missingmethod.missingMethod(v, t, _static);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewMap returns a new map for the given key and element types.
    **/
    static public inline function newMap(_key:Type_, _elem:Type_):Map_ {
        return stdgo._internal.go.types.Types_newmap.newMap(_key, _elem);
    }
    /**
        * NewMethodSet returns the method set for the given type T.
        * It always returns a non-nil method set, even if it is empty.
    **/
    static public inline function newMethodSet(t:Type_):MethodSet {
        return stdgo._internal.go.types.Types_newmethodset.newMethodSet(t);
    }
    /**
        * NewNamed returns a new named type for the given type name, underlying type, and associated methods.
        * If the given type name obj doesn't have a type yet, its type is set to the returned named type.
        * The underlying type must not be a *Named.
    **/
    static public inline function newNamed(_obj:TypeName, _underlying:Type_, _methods:Array<Func>):Named {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        final _methods = ([for (i in _methods) (i : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        return stdgo._internal.go.types.Types_newnamed.newNamed(_obj, _underlying, _methods);
    }
    /**
        * Id returns name if it is exported, otherwise it
        * returns the name qualified with the package path.
    **/
    static public inline function id(_pkg:Package, _name:String):String {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_id.id(_pkg, _name);
    }
    /**
        * NewPkgName returns a new PkgName object representing an imported package.
        * The remaining arguments set the attributes found with all Objects.
    **/
    static public inline function newPkgName(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _imported:Package):PkgName {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        final _imported = (_imported : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_newpkgname.newPkgName(_pos, _pkg, _name, _imported);
    }
    /**
        * NewConst returns a new constant with value val.
        * The remaining arguments set the attributes found with all Objects.
    **/
    static public inline function newConst(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _typ:Type_, _val:stdgo._internal.go.constant.Constant_value.Value):Const {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newconst.newConst(_pos, _pkg, _name, _typ, _val);
    }
    /**
        * NewTypeName returns a new type name denoting the given typ.
        * The remaining arguments set the attributes found with all Objects.
        * 
        * The typ argument may be a defined (Named) type or an alias type.
        * It may also be nil such that the returned TypeName can be used as
        * argument for NewNamed, which will set the TypeName's type as a side-
        * effect.
    **/
    static public inline function newTypeName(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _typ:Type_):TypeName {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _pkg, _name, _typ);
    }
    /**
        * NewVar returns a new variable.
        * The arguments set the attributes found with all Objects.
    **/
    static public inline function newVar(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _typ:Type_):Var {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newvar.newVar(_pos, _pkg, _name, _typ);
    }
    /**
        * NewParam returns a new variable representing a function parameter.
    **/
    static public inline function newParam(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _typ:Type_):Var {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newparam.newParam(_pos, _pkg, _name, _typ);
    }
    /**
        * NewField returns a new variable representing a struct field.
        * For embedded fields, the name is the unqualified type name
        * under which the field is accessible.
    **/
    static public inline function newField(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _typ:Type_, _embedded:Bool):Var {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newfield.newField(_pos, _pkg, _name, _typ, _embedded);
    }
    /**
        * NewFunc returns a new function with the given signature, representing
        * the function's type.
    **/
    static public inline function newFunc(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String, _sig:Signature):Func {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        return stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _pkg, _name, _sig);
    }
    /**
        * NewLabel returns a new label.
    **/
    static public inline function newLabel(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:Package, _name:String):Label {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newlabel.newLabel(_pos, _pkg, _name);
    }
    /**
        * ObjectString returns the string form of obj.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
    **/
    static public inline function objectString(_obj:Object, _qf:Qualifier):String {
        return stdgo._internal.go.types.Types_objectstring.objectString(_obj, _qf);
    }
    /**
        * NewPackage returns a new Package for the given package path and name.
        * The package is not complete and contains no explicit imports.
    **/
    static public inline function newPackage(_path:String, _name:String):Package {
        final _path = (_path : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.types.Types_newpackage.newPackage(_path, _name);
    }
    /**
        * NewPointer returns a new pointer type for the given element (base) type.
    **/
    static public inline function newPointer(_elem:Type_):Pointer_ {
        return stdgo._internal.go.types.Types_newpointer.newPointer(_elem);
    }
    /**
        * IsInterface reports whether t is an interface type.
    **/
    static public inline function isInterface(_t:Type_):Bool {
        return stdgo._internal.go.types.Types_isinterface.isInterface(_t);
    }
    /**
        * Comparable reports whether values of type T are comparable.
    **/
    static public inline function comparable_(t:Type_):Bool {
        return stdgo._internal.go.types.Types_comparable_.comparable_(t);
    }
    /**
        * Default returns the default "typed" type for an "untyped" type;
        * it returns the incoming type for all other types. The default type
        * for untyped nil is untyped nil.
    **/
    static public inline function default_(_t:Type_):Type_ {
        return stdgo._internal.go.types.Types_default_.default_(_t);
    }
    /**
        * NewScope returns a new, empty scope contained in the given parent
        * scope, if any. The comment is for debugging only.
    **/
    static public inline function newScope(_parent:Scope, _pos:stdgo._internal.go.token.Token_pos.Pos, _end:stdgo._internal.go.token.Token_pos.Pos, _comment:String):Scope {
        final _parent = (_parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        final _comment = (_comment : stdgo.GoString);
        return stdgo._internal.go.types.Types_newscope.newScope(_parent, _pos, _end, _comment);
    }
    /**
        * SelectionString returns the string form of s.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
        * 
        * Examples:
        * 
        * 	"field (T) f int"
        * 	"method (T) f(X) Y"
        * 	"method expr (T) f(X) Y"
    **/
    static public inline function selectionString(_s:Selection, _qf:Qualifier):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
        return stdgo._internal.go.types.Types_selectionstring.selectionString(_s, _qf);
    }
    /**
        * NewSignature returns a new function type for the given receiver, parameters,
        * and results, either of which may be nil. If variadic is set, the function
        * is variadic, it must have at least one parameter, and the last parameter
        * must be of unnamed slice type.
        * 
        * Deprecated: Use NewSignatureType instead which allows for type parameters.
    **/
    static public inline function newSignature(_recv:Var, _params:Tuple, _results:Tuple, _variadic:Bool):Signature {
        final _recv = (_recv : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        final _params = (_params : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        final _results = (_results : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return stdgo._internal.go.types.Types_newsignature.newSignature(_recv, _params, _results, _variadic);
    }
    /**
        * NewSignatureType creates a new function type for the given receiver,
        * receiver type parameters, type parameters, parameters, and results. If
        * variadic is set, params must hold at least one parameter and the last
        * parameter's core type must be of unnamed slice or bytestring type.
        * If recv is non-nil, typeParams must be empty. If recvTypeParams is
        * non-empty, recv must be non-nil.
    **/
    static public inline function newSignatureType(_recv:Var, _recvTypeParams:Array<TypeParam>, _typeParams:Array<TypeParam>, _params:Tuple, _results:Tuple, _variadic:Bool):Signature {
        final _recv = (_recv : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        final _recvTypeParams = ([for (i in _recvTypeParams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _typeParams = ([for (i in _typeParams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _params = (_params : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        final _results = (_results : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        return stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, _recvTypeParams, _typeParams, _params, _results, _variadic);
    }
    /**
        * Signal size changes of important structures.
    **/
    static public inline function testSizeof(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testsizeof.testSizeof(_t);
    }
    /**
        * SizesFor returns the Sizes used by a compiler for an architecture.
        * The result is nil if a compiler/architecture pair is not known.
        * 
        * Supported architectures for compiler "gc":
        * "386", "amd64", "amd64p32", "arm", "arm64", "loong64", "mips", "mipsle",
        * "mips64", "mips64le", "ppc64", "ppc64le", "riscv64", "s390x", "sparc64", "wasm".
    **/
    static public inline function sizesFor(_compiler:String, _arch:String):Sizes {
        final _compiler = (_compiler : stdgo.GoString);
        final _arch = (_arch : stdgo.GoString);
        return stdgo._internal.go.types.Types_sizesfor.sizesFor(_compiler, _arch);
    }
    /**
        * NewSlice returns a new slice type for the given element type.
    **/
    static public inline function newSlice(_elem:Type_):Slice_ {
        return stdgo._internal.go.types.Types_newslice.newSlice(_elem);
    }
    /**
        * NewStruct returns a new struct with the given fields and corresponding field tags.
        * If a field with index i has a tag, tags[i] must be that tag, but len(tags) may be
        * only as long as required to hold the tag with the largest index i. Consequently,
        * if no field has a tag, tags may be nil.
    **/
    static public inline function newStruct(_fields:Array<Var>, _tags:Array<String>):Struct {
        final _fields = ([for (i in _fields) (i : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        final _tags = ([for (i in _tags) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.go.types.Types_newstruct.newStruct(_fields, _tags);
    }
    static public inline function testTermlistAll(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistall.testTermlistAll(_t);
    }
    static public inline function testTermlistString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermliststring.testTermlistString(_t);
    }
    static public inline function testTermlistIsEmpty(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistisempty.testTermlistIsEmpty(_t);
    }
    static public inline function testTermlistIsAll(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistisall.testTermlistIsAll(_t);
    }
    static public inline function testTermlistNorm(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistnorm.testTermlistNorm(_t);
    }
    static public inline function testTermlistUnion(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistunion.testTermlistUnion(_t);
    }
    static public inline function testTermlistIntersect(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistintersect.testTermlistIntersect(_t);
    }
    static public inline function testTermlistEqual(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistequal.testTermlistEqual(_t);
    }
    static public inline function testTermlistIncludes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistincludes.testTermlistIncludes(_t);
    }
    static public inline function testTermlistSupersetOf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistsupersetof.testTermlistSupersetOf(_t);
    }
    static public inline function testTermlistSubsetOf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermlistsubsetof.testTermlistSubsetOf(_t);
    }
    static public inline function testZeroTok(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testzerotok.testZeroTok(_t);
    }
    static public inline function testAssignOp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testassignop.testAssignOp(_t);
    }
    /**
        * NewTuple returns a new tuple for the given variables.
    **/
    static public inline function newTuple(_x:haxe.Rest<Var>):Tuple {
        return stdgo._internal.go.types.Types_newtuple.newTuple(...[for (i in _x) i]);
    }
    /**
        * NewTypeParam returns a new TypeParam. Type parameters may be set on a Named
        * or Signature type by calling SetTypeParams. Setting a type parameter on more
        * than one type will result in a panic.
        * 
        * The constraint argument can be nil, and set later via SetConstraint. If the
        * constraint is non-nil, it must be fully defined.
    **/
    static public inline function newTypeParam(_obj:TypeName, _constraint:Type_):TypeParam {
        final _obj = (_obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        return stdgo._internal.go.types.Types_newtypeparam.newTypeParam(_obj, _constraint);
    }
    static public inline function testInvalidTypeSet(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testinvalidtypeset.testInvalidTypeSet(_t);
    }
    static public inline function testTypeSetString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtypesetstring.testTypeSetString(_t);
    }
    /**
        * RelativeTo returns a Qualifier that fully qualifies members of
        * all packages other than pkg.
    **/
    static public inline function relativeTo(_pkg:Package):Qualifier {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.types.Types_relativeto.relativeTo(_pkg);
    }
    /**
        * TypeString returns the string representation of typ.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
    **/
    static public inline function typeString(_typ:Type_, _qf:Qualifier):String {
        return stdgo._internal.go.types.Types_typestring.typeString(_typ, _qf);
    }
    /**
        * WriteType writes the string representation of typ to buf.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
    **/
    static public inline function writeType(_buf:stdgo._internal.bytes.Bytes_buffer.Buffer, _typ:Type_, _qf:Qualifier):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.go.types.Types_writetype.writeType(_buf, _typ, _qf);
    }
    /**
        * WriteSignature writes the representation of the signature sig to buf,
        * without a leading "func" keyword. The Qualifier controls the printing
        * of package-level objects, and may be nil.
    **/
    static public inline function writeSignature(_buf:stdgo._internal.bytes.Bytes_buffer.Buffer, _sig:Signature, _qf:Qualifier):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        stdgo._internal.go.types.Types_writesignature.writeSignature(_buf, _sig, _qf);
    }
    static public inline function testTermString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermstring.testTermString(_t);
    }
    static public inline function testTermEqual(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermequal.testTermEqual(_t);
    }
    static public inline function testTermUnion(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermunion.testTermUnion(_t);
    }
    static public inline function testTermIntersection(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermintersection.testTermIntersection(_t);
    }
    static public inline function testTermIncludes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermincludes.testTermIncludes(_t);
    }
    static public inline function testTermSubsetOf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermsubsetof.testTermSubsetOf(_t);
    }
    static public inline function testTermDisjoint(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testtermdisjoint.testTermDisjoint(_t);
    }
    /**
        * NewUnion returns a new Union type with the given terms.
        * It is an error to create an empty union; they are syntactically not possible.
    **/
    static public inline function newUnion(_terms:Array<Term>):Union {
        final _terms = ([for (i in _terms) (i : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
        return stdgo._internal.go.types.Types_newunion.newUnion(_terms);
    }
    /**
        * NewTerm returns a new union term.
    **/
    static public inline function newTerm(_tilde:Bool, _typ:Type_):Term {
        return stdgo._internal.go.types.Types_newterm.newTerm(_tilde, _typ);
    }
    /**
        * DefPredeclaredTestFuncs defines the assert and trace built-ins.
        * These built-ins are intended for debugging and testing of this
        * package only.
    **/
    static public inline function defPredeclaredTestFuncs():Void {
        stdgo._internal.go.types.Types_defpredeclaredtestfuncs.defPredeclaredTestFuncs();
    }
    static public inline function cmpPos(_p:stdgo._internal.go.token.Token_pos.Pos, _q:stdgo._internal.go.token.Token_pos.Pos):StdTypes.Int {
        return stdgo._internal.go.types.Types_cmppos.cmpPos(_p, _q);
    }
    static public inline function testParseGoVersion(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.types.Types_testparsegoversion.testParseGoVersion(_t);
    }
}
