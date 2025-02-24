package stdgo;
class I_static_extension {
    static public function method0(t:stdgo._internal.text.template.Template_i.I):String {
        return stdgo._internal.text.template.Template_i_static_extension.I_static_extension.method0(t);
    }
}
@:forward abstract I(stdgo._internal.text.template.Template_i.I) from stdgo._internal.text.template.Template_i.I to stdgo._internal.text.template.Template_i.I {
    @:from
    static function fromHaxeInterface(x:{ function method0():String; }):I {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:I = { method0 : () -> x.method0(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.text.template.Template.T_state_static_extension) @:dox(hide) abstract T_state(stdgo._internal.text.template.Template_t_state.T_state) from stdgo._internal.text.template.Template_t_state.T_state to stdgo._internal.text.template.Template_t_state.T_state {
    public var _tmpl(get, set) : Template_;
    function get__tmpl():Template_ return this._tmpl;
    function set__tmpl(v:Template_):Template_ {
        this._tmpl = (v : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return v;
    }
    public var _wr(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__wr():stdgo._internal.io.Io_writer.Writer return this._wr;
    function set__wr(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._wr = v;
        return v;
    }
    public var _node(get, set) : stdgo._internal.text.template.parse.Parse_node.Node;
    function get__node():stdgo._internal.text.template.parse.Parse_node.Node return this._node;
    function set__node(v:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.text.template.parse.Parse_node.Node {
        this._node = v;
        return v;
    }
    public var _vars(get, set) : Array<T_variable>;
    function get__vars():Array<T_variable> return [for (i in this._vars) i];
    function set__vars(v:Array<T_variable>):Array<T_variable> {
        this._vars = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>);
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_tmpl:Template_, ?_wr:stdgo._internal.io.Io_writer.Writer, ?_node:stdgo._internal.text.template.parse.Parse_node.Node, ?_vars:Array<T_variable>, ?_depth:StdTypes.Int) this = new stdgo._internal.text.template.Template_t_state.T_state((_tmpl : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _wr, _node, ([for (i in _vars) i] : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>), (_depth : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_variable_static_extension) @:dox(hide) abstract T_variable(stdgo._internal.text.template.Template_t_variable.T_variable) from stdgo._internal.text.template.Template_t_variable.T_variable to stdgo._internal.text.template.Template_t_variable.T_variable {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect_value.Value;
    function get__value():stdgo._internal.reflect.Reflect_value.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        this._value = v;
        return v;
    }
    public function new(?_name:String, ?_value:stdgo._internal.reflect.Reflect_value.Value) this = new stdgo._internal.text.template.Template_t_variable.T_variable((_name : stdgo.GoString), _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_missingValType_static_extension) @:dox(hide) abstract T_missingValType(stdgo._internal.text.template.Template_t_missingvaltype.T_missingValType) from stdgo._internal.text.template.Template_t_missingvaltype.T_missingValType to stdgo._internal.text.template.Template_t_missingvaltype.T_missingValType {
    public function new() this = new stdgo._internal.text.template.Template_t_missingvaltype.T_missingValType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.ExecError_static_extension) abstract ExecError(stdgo._internal.text.template.Template_execerror.ExecError) from stdgo._internal.text.template.Template_execerror.ExecError to stdgo._internal.text.template.Template_execerror.ExecError {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?name:String, ?err:stdgo.Error) this = new stdgo._internal.text.template.Template_execerror.ExecError((name : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_writeError_static_extension) @:dox(hide) abstract T_writeError(stdgo._internal.text.template.Template_t_writeerror.T_writeError) from stdgo._internal.text.template.Template_t_writeerror.T_writeError to stdgo._internal.text.template.Template_t_writeerror.T_writeError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.text.template.Template_t_writeerror.T_writeError((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T__static_extension) @:dox(hide) abstract T_(stdgo._internal.text.template.Template_t_.T_) from stdgo._internal.text.template.Template_t_.T_ to stdgo._internal.text.template.Template_t_.T_ {
    public var __True(get, set) : Bool;
    function get___True():Bool return this.__True;
    function set___True(v:Bool):Bool {
        this.__True = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var u16(get, set) : std.UInt;
    function get_u16():std.UInt return this.u16;
    function set_u16(v:std.UInt):std.UInt {
        this.u16 = (v : stdgo.GoUInt16);
        return v;
    }
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public var floatZero(get, set) : StdTypes.Float;
    function get_floatZero():StdTypes.Float return this.floatZero;
    function set_floatZero(v:StdTypes.Float):StdTypes.Float {
        this.floatZero = (v : stdgo.GoFloat64);
        return v;
    }
    public var complexZero(get, set) : stdgo.GoComplex128;
    function get_complexZero():stdgo.GoComplex128 return this.complexZero;
    function set_complexZero(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complexZero = (v : stdgo.GoComplex128);
        return v;
    }
    public var u(get, set) : U;
    function get_u():U return this.u;
    function set_u(v:U):U {
        this.u = (v : stdgo.Ref<stdgo._internal.text.template.Template_u.U>);
        return v;
    }
    public var v0(get, set) : V;
    function get_v0():V return this.v0;
    function set_v0(v:V):V {
        this.v0 = v;
        return v;
    }
    public var v1(get, set) : V;
    function get_v1():V return this.v1;
    function set_v1(v:V):V {
        this.v1 = (v : stdgo.Ref<stdgo._internal.text.template.Template_v.V>);
        return v;
    }
    public var v2(get, set) : V;
    function get_v2():V return this.v2;
    function set_v2(v:V):V {
        this.v2 = (v : stdgo.Ref<stdgo._internal.text.template.Template_v.V>);
        return v;
    }
    public var w0(get, set) : W;
    function get_w0():W return this.w0;
    function set_w0(v:W):W {
        this.w0 = v;
        return v;
    }
    public var w1(get, set) : W;
    function get_w1():W return this.w1;
    function set_w1(v:W):W {
        this.w1 = (v : stdgo.Ref<stdgo._internal.text.template.Template_w.W>);
        return v;
    }
    public var w2(get, set) : W;
    function get_w2():W return this.w2;
    function set_w2(v:W):W {
        this.w2 = (v : stdgo.Ref<stdgo._internal.text.template.Template_w.W>);
        return v;
    }
    public var sI(get, set) : Array<StdTypes.Int>;
    function get_sI():Array<StdTypes.Int> return [for (i in this.sI) i];
    function set_sI(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sI = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sICap(get, set) : Array<StdTypes.Int>;
    function get_sICap():Array<StdTypes.Int> return [for (i in this.sICap) i];
    function set_sICap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sICap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sIEmpty(get, set) : Array<StdTypes.Int>;
    function get_sIEmpty():Array<StdTypes.Int> return [for (i in this.sIEmpty) i];
    function set_sIEmpty(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sIEmpty = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sB(get, set) : Array<Bool>;
    function get_sB():Array<Bool> return [for (i in this.sB) i];
    function set_sB(v:Array<Bool>):Array<Bool> {
        this.sB = ([for (i in v) i] : stdgo.Slice<Bool>);
        return v;
    }
    public var aI(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_aI():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.aI) i]);
    function set_aI(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.aI = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var mSI(get, set) : Map<String, StdTypes.Int>;
    function get_mSI():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.mSI) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mSI(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.mSI = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var mSIone(get, set) : Map<String, StdTypes.Int>;
    function get_mSIone():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.mSIone) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mSIone(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.mSIone = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var mSIEmpty(get, set) : Map<String, StdTypes.Int>;
    function get_mSIEmpty():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.mSIEmpty) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mSIEmpty(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.mSIEmpty = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var mXI(get, set) : Map<stdgo.AnyInterface, StdTypes.Int>;
    function get_mXI():Map<stdgo.AnyInterface, StdTypes.Int> return {
        final __obj__:Map<stdgo.AnyInterface, StdTypes.Int> = [];
        for (key => value in this.mXI) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mXI(v:Map<stdgo.AnyInterface, StdTypes.Int>):Map<stdgo.AnyInterface, StdTypes.Int> {
        this.mXI = {
            final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var mII(get, set) : Map<StdTypes.Int, StdTypes.Int>;
    function get_mII():Map<StdTypes.Int, StdTypes.Int> return {
        final __obj__:Map<StdTypes.Int, StdTypes.Int> = [];
        for (key => value in this.mII) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mII(v:Map<StdTypes.Int, StdTypes.Int>):Map<StdTypes.Int, StdTypes.Int> {
        this.mII = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var mI32S(get, set) : Map<StdTypes.Int, String>;
    function get_mI32S():Map<StdTypes.Int, String> return {
        final __obj__:Map<StdTypes.Int, String> = [];
        for (key => value in this.mI32S) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mI32S(v:Map<StdTypes.Int, String>):Map<StdTypes.Int, String> {
        this.mI32S = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt32)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var mI64S(get, set) : Map<haxe.Int64, String>;
    function get_mI64S():Map<haxe.Int64, String> return {
        final __obj__:Map<haxe.Int64, String> = [];
        for (key => value in this.mI64S) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mI64S(v:Map<haxe.Int64, String>):Map<haxe.Int64, String> {
        this.mI64S = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt64)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var mUI32S(get, set) : Map<std.UInt, String>;
    function get_mUI32S():Map<std.UInt, String> return {
        final __obj__:Map<std.UInt, String> = [];
        for (key => value in this.mUI32S) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mUI32S(v:Map<std.UInt, String>):Map<std.UInt, String> {
        this.mUI32S = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt32)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var mUI64S(get, set) : Map<haxe.UInt64, String>;
    function get_mUI64S():Map<haxe.UInt64, String> return {
        final __obj__:Map<haxe.UInt64, String> = [];
        for (key => value in this.mUI64S) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mUI64S(v:Map<haxe.UInt64, String>):Map<haxe.UInt64, String> {
        this.mUI64S = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var mI8S(get, set) : Map<StdTypes.Int, String>;
    function get_mI8S():Map<StdTypes.Int, String> return {
        final __obj__:Map<StdTypes.Int, String> = [];
        for (key => value in this.mI8S) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mI8S(v:Map<StdTypes.Int, String>):Map<StdTypes.Int, String> {
        this.mI8S = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt8)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var mUI8S(get, set) : Map<std.UInt, String>;
    function get_mUI8S():Map<std.UInt, String> return {
        final __obj__:Map<std.UInt, String> = [];
        for (key => value in this.mUI8S) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mUI8S(v:Map<std.UInt, String>):Map<std.UInt, String> {
        this.mUI8S = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt8)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var sMSI(get, set) : Array<Map<String, StdTypes.Int>>;
    function get_sMSI():Array<Map<String, StdTypes.Int>> return [for (i in this.sMSI) {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in i) {
            __obj__[key] = value;
        };
        __obj__;
    }];
    function set_sMSI(v:Array<Map<String, StdTypes.Int>>):Array<Map<String, StdTypes.Int>> {
        this.sMSI = ([for (i in v) {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in i) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        }] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
        return v;
    }
    public var empty0(get, set) : stdgo.AnyInterface;
    function get_empty0():stdgo.AnyInterface return this.empty0;
    function set_empty0(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty0 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty1(get, set) : stdgo.AnyInterface;
    function get_empty1():stdgo.AnyInterface return this.empty1;
    function set_empty1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty1 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty2(get, set) : stdgo.AnyInterface;
    function get_empty2():stdgo.AnyInterface return this.empty2;
    function set_empty2(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty2 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty3(get, set) : stdgo.AnyInterface;
    function get_empty3():stdgo.AnyInterface return this.empty3;
    function set_empty3(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty3 = (v : stdgo.AnyInterface);
        return v;
    }
    public var empty4(get, set) : stdgo.AnyInterface;
    function get_empty4():stdgo.AnyInterface return this.empty4;
    function set_empty4(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty4 = (v : stdgo.AnyInterface);
        return v;
    }
    public var nonEmptyInterface(get, set) : I;
    function get_nonEmptyInterface():I return this.nonEmptyInterface;
    function set_nonEmptyInterface(v:I):I {
        this.nonEmptyInterface = v;
        return v;
    }
    public var nonEmptyInterfacePtS(get, set) : I;
    function get_nonEmptyInterfacePtS():I return this.nonEmptyInterfacePtS;
    function set_nonEmptyInterfacePtS(v:I):I {
        this.nonEmptyInterfacePtS = (v : stdgo.Ref<stdgo._internal.text.template.Template_i.I>);
        return v;
    }
    public var nonEmptyInterfaceNil(get, set) : I;
    function get_nonEmptyInterfaceNil():I return this.nonEmptyInterfaceNil;
    function set_nonEmptyInterfaceNil(v:I):I {
        this.nonEmptyInterfaceNil = v;
        return v;
    }
    public var nonEmptyInterfaceTypedNil(get, set) : I;
    function get_nonEmptyInterfaceTypedNil():I return this.nonEmptyInterfaceTypedNil;
    function set_nonEmptyInterfaceTypedNil(v:I):I {
        this.nonEmptyInterfaceTypedNil = v;
        return v;
    }
    public var str(get, set) : stdgo._internal.fmt.Fmt_stringer.Stringer;
    function get_str():stdgo._internal.fmt.Fmt_stringer.Stringer return this.str;
    function set_str(v:stdgo._internal.fmt.Fmt_stringer.Stringer):stdgo._internal.fmt.Fmt_stringer.Stringer {
        this.str = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var pI(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pI():stdgo.Pointer<StdTypes.Int> return this.pI;
    function set_pI(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pI = v;
        return v;
    }
    public var pS(get, set) : stdgo.Pointer<String>;
    function get_pS():stdgo.Pointer<String> return this.pS;
    function set_pS(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.pS = v;
        return v;
    }
    public var pSI(get, set) : Array<StdTypes.Int>;
    function get_pSI():Array<StdTypes.Int> return this.pSI;
    function set_pSI(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.pSI = (v : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public var nIL(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_nIL():stdgo.Pointer<StdTypes.Int> return this.nIL;
    function set_nIL(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.nIL = v;
        return v;
    }
    public var binaryFunc(get, set) : (String, String) -> String;
    function get_binaryFunc():(String, String) -> String return (_0, _1) -> this.binaryFunc(_0, _1);
    function set_binaryFunc(v:(String, String) -> String):(String, String) -> String {
        this.binaryFunc = v;
        return v;
    }
    public var variadicFunc(get, set) : haxe.Rest<String> -> String;
    function get_variadicFunc():haxe.Rest<String> -> String return _0 -> this.variadicFunc(_0);
    function set_variadicFunc(v:haxe.Rest<String> -> String):haxe.Rest<String> -> String {
        this.variadicFunc = v;
        return v;
    }
    public var variadicFuncInt(get, set) : (StdTypes.Int, haxe.Rest<String>) -> String;
    function get_variadicFuncInt():(StdTypes.Int, haxe.Rest<String>) -> String return (_0, _1) -> this.variadicFuncInt(_0, _1);
    function set_variadicFuncInt(v:(StdTypes.Int, haxe.Rest<String>) -> String):(StdTypes.Int, haxe.Rest<String>) -> String {
        this.variadicFuncInt = v;
        return v;
    }
    public var nilOKFunc(get, set) : stdgo.Pointer<StdTypes.Int> -> Bool;
    function get_nilOKFunc():stdgo.Pointer<StdTypes.Int> -> Bool return _0 -> this.nilOKFunc(_0);
    function set_nilOKFunc(v:stdgo.Pointer<StdTypes.Int> -> Bool):stdgo.Pointer<StdTypes.Int> -> Bool {
        this.nilOKFunc = v;
        return v;
    }
    public var errFunc(get, set) : () -> stdgo.Tuple<String, stdgo.Error>;
    function get_errFunc():() -> stdgo.Tuple<String, stdgo.Error> return () -> this.errFunc();
    function set_errFunc(v:() -> stdgo.Tuple<String, stdgo.Error>):() -> stdgo.Tuple<String, stdgo.Error> {
        this.errFunc = v;
        return v;
    }
    public var panicFunc(get, set) : () -> String;
    function get_panicFunc():() -> String return () -> this.panicFunc();
    function set_panicFunc(v:() -> String):() -> String {
        this.panicFunc = v;
        return v;
    }
    public var tmpl(get, set) : Template_;
    function get_tmpl():Template_ return this.tmpl;
    function set_tmpl(v:Template_):Template_ {
        this.tmpl = (v : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__True:Bool, ?i:StdTypes.Int, ?u16:std.UInt, ?x:String, ?s:String, ?floatZero:StdTypes.Float, ?complexZero:stdgo.GoComplex128, ?u:U, ?v0:V, ?v1:V, ?v2:V, ?w0:W, ?w1:W, ?w2:W, ?sI:Array<StdTypes.Int>, ?sICap:Array<StdTypes.Int>, ?sIEmpty:Array<StdTypes.Int>, ?sB:Array<Bool>, ?aI:haxe.ds.Vector<StdTypes.Int>, ?mSI:Map<String, StdTypes.Int>, ?mSIone:Map<String, StdTypes.Int>, ?mSIEmpty:Map<String, StdTypes.Int>, ?mXI:Map<stdgo.AnyInterface, StdTypes.Int>, ?mII:Map<StdTypes.Int, StdTypes.Int>, ?mI32S:Map<StdTypes.Int, String>, ?mI64S:Map<haxe.Int64, String>, ?mUI32S:Map<std.UInt, String>, ?mUI64S:Map<haxe.UInt64, String>, ?mI8S:Map<StdTypes.Int, String>, ?mUI8S:Map<std.UInt, String>, ?sMSI:Array<Map<String, StdTypes.Int>>, ?empty0:stdgo.AnyInterface, ?empty1:stdgo.AnyInterface, ?empty2:stdgo.AnyInterface, ?empty3:stdgo.AnyInterface, ?empty4:stdgo.AnyInterface, ?nonEmptyInterface:I, ?nonEmptyInterfacePtS:I, ?nonEmptyInterfaceNil:I, ?nonEmptyInterfaceTypedNil:I, ?str:stdgo._internal.fmt.Fmt_stringer.Stringer, ?err:stdgo.Error, ?pI:stdgo.Pointer<StdTypes.Int>, ?pS:stdgo.Pointer<String>, ?pSI:Array<StdTypes.Int>, ?nIL:stdgo.Pointer<StdTypes.Int>, ?binaryFunc:(String, String) -> String, ?variadicFunc:haxe.Rest<String> -> String, ?variadicFuncInt:(StdTypes.Int, haxe.Rest<String>) -> String, ?nilOKFunc:stdgo.Pointer<StdTypes.Int> -> Bool, ?errFunc:() -> stdgo.Tuple<String, stdgo.Error>, ?panicFunc:() -> String, ?tmpl:Template_, ?_unexported:StdTypes.Int) this = new stdgo._internal.text.template.Template_t_.T_(
__True,
(i : stdgo.GoInt),
(u16 : stdgo.GoUInt16),
(x : stdgo.GoString),
(s : stdgo.GoString),
(floatZero : stdgo.GoFloat64),
(complexZero : stdgo.GoComplex128),
(u : stdgo.Ref<stdgo._internal.text.template.Template_u.U>),
v0,
(v1 : stdgo.Ref<stdgo._internal.text.template.Template_v.V>),
(v2 : stdgo.Ref<stdgo._internal.text.template.Template_v.V>),
w0,
(w1 : stdgo.Ref<stdgo._internal.text.template.Template_w.W>),
(w2 : stdgo.Ref<stdgo._internal.text.template.Template_w.W>),
([for (i in sI) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in sICap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in sIEmpty) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in sB) i] : stdgo.Slice<Bool>),
([for (i in aI) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in mSI) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in mSIone) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in mSIEmpty) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>();
        for (key => value in mXI) {
            __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
        for (key => value in mII) {
            __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>();
        for (key => value in mI32S) {
            __obj__[(key : stdgo.GoInt32)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>();
        for (key => value in mI64S) {
            __obj__[(key : stdgo.GoInt64)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>();
        for (key => value in mUI32S) {
            __obj__[(key : stdgo.GoUInt32)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>();
        for (key => value in mUI64S) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>();
        for (key => value in mI8S) {
            __obj__[(key : stdgo.GoInt8)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>();
        for (key => value in mUI8S) {
            __obj__[(key : stdgo.GoUInt8)] = (value : stdgo.GoString);
        };
        __obj__;
    },
([for (i in sMSI) {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in i) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    }] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>),
(empty0 : stdgo.AnyInterface),
(empty1 : stdgo.AnyInterface),
(empty2 : stdgo.AnyInterface),
(empty3 : stdgo.AnyInterface),
(empty4 : stdgo.AnyInterface),
nonEmptyInterface,
(nonEmptyInterfacePtS : stdgo.Ref<stdgo._internal.text.template.Template_i.I>),
nonEmptyInterfaceNil,
nonEmptyInterfaceTypedNil,
str,
(err : stdgo.Error),
pI,
pS,
(pSI : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>),
nIL,
binaryFunc,
variadicFunc,
variadicFuncInt,
nilOKFunc,
errFunc,
panicFunc,
(tmpl : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>),
(_unexported : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.U_static_extension) abstract U(stdgo._internal.text.template.Template_u.U) from stdgo._internal.text.template.Template_u.U to stdgo._internal.text.template.Template_u.U {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.text.template.Template_u.U((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.V_static_extension) abstract V(stdgo._internal.text.template.Template_v.V) from stdgo._internal.text.template.Template_v.V to stdgo._internal.text.template.Template_v.V {
    public var _j(get, set) : StdTypes.Int;
    function get__j():StdTypes.Int return this._j;
    function set__j(v:StdTypes.Int):StdTypes.Int {
        this._j = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_j:StdTypes.Int) this = new stdgo._internal.text.template.Template_v.V((_j : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.W_static_extension) abstract W(stdgo._internal.text.template.Template_w.W) from stdgo._internal.text.template.Template_w.W to stdgo._internal.text.template.Template_w.W {
    public var _k(get, set) : StdTypes.Int;
    function get__k():StdTypes.Int return this._k;
    function set__k(v:StdTypes.Int):StdTypes.Int {
        this._k = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_k:StdTypes.Int) this = new stdgo._internal.text.template.Template_w.W((_k : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_execTest_static_extension) @:dox(hide) abstract T_execTest(stdgo._internal.text.template.Template_t_exectest.T_execTest) from stdgo._internal.text.template.Template_t_exectest.T_execTest to stdgo._internal.text.template.Template_t_exectest.T_execTest {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public var _data(get, set) : stdgo.AnyInterface;
    function get__data():stdgo.AnyInterface return this._data;
    function set__data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._data = (v : stdgo.AnyInterface);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_output:String, ?_data:stdgo.AnyInterface, ?_ok:Bool) this = new stdgo._internal.text.template.Template_t_exectest.T_execTest((_name : stdgo.GoString), (_input : stdgo.GoString), (_output : stdgo.GoString), (_data : stdgo.AnyInterface), _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.CustomError_static_extension) abstract CustomError(stdgo._internal.text.template.Template_customerror.CustomError) from stdgo._internal.text.template.Template_customerror.CustomError to stdgo._internal.text.template.Template_customerror.CustomError {
    public function new() this = new stdgo._internal.text.template.Template_customerror.CustomError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.Tree_static_extension) abstract Tree(stdgo._internal.text.template.Template_tree.Tree) from stdgo._internal.text.template.Template_tree.Tree to stdgo._internal.text.template.Template_tree.Tree {
    public var val(get, set) : StdTypes.Int;
    function get_val():StdTypes.Int return this.val;
    function set_val(v:StdTypes.Int):StdTypes.Int {
        this.val = (v : stdgo.GoInt);
        return v;
    }
    public var left(get, set) : Tree;
    function get_left():Tree return this.left;
    function set_left(v:Tree):Tree {
        this.left = (v : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>);
        return v;
    }
    public var right(get, set) : Tree;
    function get_right():Tree return this.right;
    function set_right(v:Tree):Tree {
        this.right = (v : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>);
        return v;
    }
    public function new(?val:StdTypes.Int, ?left:Tree, ?right:Tree) this = new stdgo._internal.text.template.Template_tree.Tree((val : stdgo.GoInt), (left : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>), (right : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_cmpTest_static_extension) @:dox(hide) abstract T_cmpTest(stdgo._internal.text.template.Template_t_cmptest.T_cmpTest) from stdgo._internal.text.template.Template_t_cmptest.T_cmpTest to stdgo._internal.text.template.Template_t_cmptest.T_cmpTest {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = (v : stdgo.GoString);
        return v;
    }
    public var _truth(get, set) : String;
    function get__truth():String return this._truth;
    function set__truth(v:String):String {
        this._truth = (v : stdgo.GoString);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_expr:String, ?_truth:String, ?_ok:Bool) this = new stdgo._internal.text.template.Template_t_cmptest.T_cmpTest((_expr : stdgo.GoString), (_truth : stdgo.GoString), _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_multiParseTest_static_extension) @:dox(hide) abstract T_multiParseTest(stdgo._internal.text.template.Template_t_multiparsetest.T_multiParseTest) from stdgo._internal.text.template.Template_t_multiparsetest.T_multiParseTest to stdgo._internal.text.template.Template_t_multiparsetest.T_multiParseTest {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public var _names(get, set) : Array<String>;
    function get__names():Array<String> return [for (i in this._names) i];
    function set__names(v:Array<String>):Array<String> {
        this._names = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _results(get, set) : Array<String>;
    function get__results():Array<String> return [for (i in this._results) i];
    function set__results(v:Array<String>):Array<String> {
        this._results = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_ok:Bool, ?_names:Array<String>, ?_results:Array<String>) this = new stdgo._internal.text.template.Template_t_multiparsetest.T_multiParseTest((_name : stdgo.GoString), (_input : stdgo.GoString), _ok, ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _results) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_option_static_extension) @:dox(hide) abstract T_option(stdgo._internal.text.template.Template_t_option.T_option) from stdgo._internal.text.template.Template_t_option.T_option to stdgo._internal.text.template.Template_t_option.T_option {
    public var _missingKey(get, set) : T_missingKeyAction;
    function get__missingKey():T_missingKeyAction return this._missingKey;
    function set__missingKey(v:T_missingKeyAction):T_missingKeyAction {
        this._missingKey = v;
        return v;
    }
    public function new(?_missingKey:T_missingKeyAction) this = new stdgo._internal.text.template.Template_t_option.T_option(_missingKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_common_static_extension) @:dox(hide) abstract T_common(stdgo._internal.text.template.Template_t_common.T_common) from stdgo._internal.text.template.Template_t_common.T_common to stdgo._internal.text.template.Template_t_common.T_common {
    public var _tmpl(get, set) : Map<String, Template_>;
    function get__tmpl():Map<String, Template_> return {
        final __obj__:Map<String, Template_> = [];
        for (key => value in this._tmpl) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__tmpl(v:Map<String, Template_>):Map<String, Template_> {
        this._tmpl = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            };
            __obj__;
        };
        return v;
    }
    public var _muTmpl(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__muTmpl():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._muTmpl;
    function set__muTmpl(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._muTmpl = v;
        return v;
    }
    public var _option(get, set) : T_option;
    function get__option():T_option return this._option;
    function set__option(v:T_option):T_option {
        this._option = v;
        return v;
    }
    public var _muFuncs(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__muFuncs():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._muFuncs;
    function set__muFuncs(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._muFuncs = v;
        return v;
    }
    public var _parseFuncs(get, set) : FuncMap;
    function get__parseFuncs():FuncMap return this._parseFuncs;
    function set__parseFuncs(v:FuncMap):FuncMap {
        this._parseFuncs = v;
        return v;
    }
    public var _execFuncs(get, set) : Map<String, stdgo._internal.reflect.Reflect_value.Value>;
    function get__execFuncs():Map<String, stdgo._internal.reflect.Reflect_value.Value> return {
        final __obj__:Map<String, stdgo._internal.reflect.Reflect_value.Value> = [];
        for (key => value in this._execFuncs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__execFuncs(v:Map<String, stdgo._internal.reflect.Reflect_value.Value>):Map<String, stdgo._internal.reflect.Reflect_value.Value> {
        this._execFuncs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?_tmpl:Map<String, Template_>, ?_muTmpl:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_option:T_option, ?_muFuncs:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_parseFuncs:FuncMap, ?_execFuncs:Map<String, stdgo._internal.reflect.Reflect_value.Value>) this = new stdgo._internal.text.template.Template_t_common.T_common({
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>();
        for (key => value in _tmpl) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        };
        __obj__;
    }, _muTmpl, _option, _muFuncs, _parseFuncs, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>();
        for (key => value in _execFuncs) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.Template_static_extension) abstract Template_(stdgo._internal.text.template.Template_template.Template) from stdgo._internal.text.template.Template_template.Template to stdgo._internal.text.template.Template_template.Template {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var tree(get, set) : stdgo._internal.text.template.parse.Parse_tree.Tree;
    function get_tree():stdgo._internal.text.template.parse.Parse_tree.Tree return this.tree;
    function set_tree(v:stdgo._internal.text.template.parse.Parse_tree.Tree):stdgo._internal.text.template.parse.Parse_tree.Tree {
        this.tree = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = (v : stdgo.Ref<stdgo._internal.text.template.Template_t_common.T_common>);
        return v;
    }
    public var _leftDelim(get, set) : String;
    function get__leftDelim():String return this._leftDelim;
    function set__leftDelim(v:String):String {
        this._leftDelim = (v : stdgo.GoString);
        return v;
    }
    public var _rightDelim(get, set) : String;
    function get__rightDelim():String return this._rightDelim;
    function set__rightDelim(v:String):String {
        this._rightDelim = (v : stdgo.GoString);
        return v;
    }
    public function new(?_name:String, ?tree:stdgo._internal.text.template.parse.Parse_tree.Tree, ?_common:T_common, ?_leftDelim:String, ?_rightDelim:String) this = new stdgo._internal.text.template.Template_template.Template((_name : stdgo.GoString), (tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (_common : stdgo.Ref<stdgo._internal.text.template.Template_t_common.T_common>), (_leftDelim : stdgo.GoString), (_rightDelim : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.text.template.Template_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.text.template.Template_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.text.template.Template_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.text.template.Template_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.text.template.Template_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.text.template.Template_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.text.template.Template_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.text.template.Template_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.text.template.Template_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.text.template.Template_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.text.template.Template_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.text.template.Template_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.text.template.Template_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.text.template.Template_t__struct_6.T__struct_6;
@:dox(hide) typedef T__struct_7Pointer = stdgo._internal.text.template.Template_t__struct_7pointer.T__struct_7Pointer;
@:dox(hide) class T__struct_7_static_extension {
    public static function _doSlow(__self__:stdgo._internal.text.template.Template_t__struct_7.T__struct_7, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.text.template.Template_t__struct_7_static_extension.T__struct_7_static_extension._doSlow(__self__, _0);
    }
    public static function do_(__self__:stdgo._internal.text.template.Template_t__struct_7.T__struct_7, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.text.template.Template_t__struct_7_static_extension.T__struct_7_static_extension.do_(__self__, _0);
    }
}
@:dox(hide) typedef T__struct_7 = stdgo._internal.text.template.Template_t__struct_7.T__struct_7;
@:dox(hide) typedef T__struct_8Pointer = stdgo._internal.text.template.Template_t__struct_8pointer.T__struct_8Pointer;
@:dox(hide) class T__struct_8_static_extension {

}
@:dox(hide) typedef T__struct_8 = stdgo._internal.text.template.Template_t__struct_8.T__struct_8;
typedef S = stdgo._internal.text.template.Template_s.S;
typedef ErrorWriter = stdgo._internal.text.template.Template_errorwriter.ErrorWriter;
typedef FuncMap = stdgo._internal.text.template.Template_funcmap.FuncMap;
@:dox(hide) typedef T_kind = stdgo._internal.text.template.Template_t_kind.T_kind;
@:dox(hide) typedef T_missingKeyAction = stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction;
@:structInit @:using(stdgo.text.template.Template.T_testIssue48215___localname___A_58273_static_extension) @:dox(hide) abstract T_testIssue48215___localname___A_58273(stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273) from stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273 to stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273 {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_testIssue48215___localname___B_58304_static_extension) @:dox(hide) abstract T_testIssue48215___localname___B_58304(stdgo._internal.text.template.Template_t_testissue48215___localname___b_58304.T_testIssue48215___localname___B_58304) from stdgo._internal.text.template.Template_t_testissue48215___localname___b_58304.T_testIssue48215___localname___B_58304 to stdgo._internal.text.template.Template_t_testissue48215___localname___b_58304.T_testIssue48215___localname___B_58304 {
    public var a(get, set) : T_testIssue48215___localname___A_58273;
    function get_a():T_testIssue48215___localname___A_58273 return this.a;
    function set_a(v:T_testIssue48215___localname___A_58273):T_testIssue48215___localname___A_58273 {
        this.a = (v : stdgo.Ref<stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273>);
        return v;
    }
    public function new(?a:T_testIssue48215___localname___A_58273) this = new stdgo._internal.text.template.Template_t_testissue48215___localname___b_58304.T_testIssue48215___localname___B_58304((a : stdgo.Ref<stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_statePointer = stdgo._internal.text.template.Template_t_statepointer.T_statePointer;
@:dox(hide) class T_state_static_extension {
    static public function _printValue(_s:T_state, _n:stdgo._internal.text.template.parse.Parse_node.Node, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._printValue(_s, _n, _v);
    }
    static public function _evalEmptyInterface(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalEmptyInterface(_s, _dot, _n);
    }
    static public function _evalComplex(_s:T_state, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalComplex(_s, _typ, _n);
    }
    static public function _evalFloat(_s:T_state, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalFloat(_s, _typ, _n);
    }
    static public function _evalUnsignedInteger(_s:T_state, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalUnsignedInteger(_s, _typ, _n);
    }
    static public function _evalInteger(_s:T_state, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalInteger(_s, _typ, _n);
    }
    static public function _evalString(_s:T_state, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalString(_s, _typ, _n);
    }
    static public function _evalBool(_s:T_state, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalBool(_s, _typ, _n);
    }
    static public function _evalArg(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalArg(_s, _dot, _typ, _n);
    }
    static public function _validateType(_s:T_state, _value:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._validateType(_s, _value, _typ);
    }
    static public function _evalCall(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _fun:stdgo._internal.reflect.Reflect_value.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:String, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _name = (_name : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalCall(_s, _dot, _fun, _isBuiltin, _node, _name, _args, _final);
    }
    static public function _evalField(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _fieldName:String, _node:stdgo._internal.text.template.parse.Parse_node.Node, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _fieldName = (_fieldName : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalField(_s, _dot, _fieldName, _node, _args, _final, _receiver);
    }
    static public function _evalFunction(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode, _cmd:stdgo._internal.text.template.parse.Parse_node.Node, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _node = (_node : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalFunction(_s, _dot, _node, _cmd, _args, _final);
    }
    static public function _evalFieldChain(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node, _ident:Array<String>, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _ident = ([for (i in _ident) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalFieldChain(_s, _dot, _receiver, _node, _ident, _args, _final);
    }
    static public function _evalVariableNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _variable:stdgo._internal.text.template.parse.Parse_variablenode.VariableNode, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _variable = (_variable : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalVariableNode(_s, _dot, _variable, _args, _final);
    }
    static public function _evalChainNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _chain:stdgo._internal.text.template.parse.Parse_chainnode.ChainNode, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _chain = (_chain : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalChainNode(_s, _dot, _chain, _args, _final);
    }
    static public function _evalFieldNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _field:stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _field = (_field : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalFieldNode(_s, _dot, _field, _args, _final);
    }
    static public function _idealConstant(_s:T_state, _constant:stdgo._internal.text.template.parse.Parse_numbernode.NumberNode):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _constant = (_constant : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._idealConstant(_s, _constant);
    }
    static public function _evalCommand(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _cmd:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _cmd = (_cmd : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalCommand(_s, _dot, _cmd, _final);
    }
    static public function _notAFunction(_s:T_state, _args:Array<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._notAFunction(_s, _args, _final);
    }
    static public function _evalPipeline(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._evalPipeline(_s, _dot, _pipe);
    }
    static public function _walkTemplate(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _t:stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._walkTemplate(_s, _dot, _t);
    }
    static public function _walkRange(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _r:stdgo._internal.text.template.parse.Parse_rangenode.RangeNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _r = (_r : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._walkRange(_s, _dot, _r);
    }
    static public function _walkIfOrWith(_s:T_state, _typ:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, _dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode, _list:stdgo._internal.text.template.parse.Parse_listnode.ListNode, _elseList:stdgo._internal.text.template.parse.Parse_listnode.ListNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._walkIfOrWith(_s, _typ, _dot, _pipe, _list, _elseList);
    }
    static public function _walk(_s:T_state, _dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._walk(_s, _dot, _node);
    }
    static public function _writeError(_s:T_state, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._writeError(_s, _err);
    }
    static public function _errorf(_s:T_state, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _at(_s:T_state, _node:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._at(_s, _node);
    }
    static public function _varValue(_s:T_state, _name:String):stdgo._internal.reflect.Reflect_value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._varValue(_s, _name);
    }
    static public function _setTopVar(_s:T_state, _n:StdTypes.Int, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._setTopVar(_s, _n, _value);
    }
    static public function _setVar(_s:T_state, _name:String, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._setVar(_s, _name, _value);
    }
    static public function _pop(_s:T_state, _mark:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _mark = (_mark : stdgo.GoInt);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._pop(_s, _mark);
    }
    static public function _mark(_s:T_state):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        return stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._mark(_s);
    }
    static public function _push(_s:T_state, _name:String, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension._push(_s, _name, _value);
    }
}
@:dox(hide) typedef T_variablePointer = stdgo._internal.text.template.Template_t_variablepointer.T_variablePointer;
@:dox(hide) class T_variable_static_extension {

}
@:dox(hide) typedef T_missingValTypePointer = stdgo._internal.text.template.Template_t_missingvaltypepointer.T_missingValTypePointer;
@:dox(hide) class T_missingValType_static_extension {

}
typedef ExecErrorPointer = stdgo._internal.text.template.Template_execerrorpointer.ExecErrorPointer;
class ExecError_static_extension {
    static public function unwrap(_e:ExecError):stdgo.Error {
        return stdgo._internal.text.template.Template_execerror_static_extension.ExecError_static_extension.unwrap(_e);
    }
    static public function error(_e:ExecError):String {
        return stdgo._internal.text.template.Template_execerror_static_extension.ExecError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_writeErrorPointer = stdgo._internal.text.template.Template_t_writeerrorpointer.T_writeErrorPointer;
@:dox(hide) class T_writeError_static_extension {

}
@:dox(hide) typedef T_Pointer = stdgo._internal.text.template.Template_t_pointer.T_Pointer;
@:dox(hide) class T__static_extension {
    static public function getU(_t:T_):U {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        return stdgo._internal.text.template.Template_t__static_extension.T__static_extension.getU(_t);
    }
    static public function myError(_t:T_, _error:Bool):stdgo.Tuple<Bool, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        return {
            final obj = stdgo._internal.text.template.Template_t__static_extension.T__static_extension.myError(_t, _error);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function mAdd(_t:T_, _a:StdTypes.Int, _b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        final _a = (_a : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.text.template.Template_t__static_extension.T__static_extension.mAdd(_t, _a, _b)) i];
    }
    static public function copy(_t:T_):T_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        return stdgo._internal.text.template.Template_t__static_extension.T__static_extension.copy(_t);
    }
    static public function method3(_t:T_, _v:stdgo.AnyInterface):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_t__static_extension.T__static_extension.method3(_t, _v);
    }
    static public function method2(_t:T_, _a:std.UInt, _b:String):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        final _a = (_a : stdgo.GoUInt16);
        final _b = (_b : stdgo.GoString);
        return stdgo._internal.text.template.Template_t__static_extension.T__static_extension.method2(_t, _a, _b);
    }
    static public function method1(_t:T_, _a:StdTypes.Int):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        final _a = (_a : stdgo.GoInt);
        return stdgo._internal.text.template.Template_t__static_extension.T__static_extension.method1(_t, _a);
    }
    static public function method0(_t:T_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
        return stdgo._internal.text.template.Template_t__static_extension.T__static_extension.method0(_t);
    }
}
typedef UPointer = stdgo._internal.text.template.Template_upointer.UPointer;
class U_static_extension {
    static public function trueFalse(_u:U, _b:Bool):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.text.template.Template_u.U>);
        return stdgo._internal.text.template.Template_u_static_extension.U_static_extension.trueFalse(_u, _b);
    }
}
typedef VPointer = stdgo._internal.text.template.Template_vpointer.VPointer;
class V_static_extension {
    static public function string(_v:V):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.text.template.Template_v.V>);
        return stdgo._internal.text.template.Template_v_static_extension.V_static_extension.string(_v);
    }
}
typedef WPointer = stdgo._internal.text.template.Template_wpointer.WPointer;
class W_static_extension {
    static public function error(_w:W):String {
        final _w = (_w : stdgo.Ref<stdgo._internal.text.template.Template_w.W>);
        return stdgo._internal.text.template.Template_w_static_extension.W_static_extension.error(_w);
    }
}
@:dox(hide) typedef T_execTestPointer = stdgo._internal.text.template.Template_t_exectestpointer.T_execTestPointer;
@:dox(hide) class T_execTest_static_extension {

}
typedef CustomErrorPointer = stdgo._internal.text.template.Template_customerrorpointer.CustomErrorPointer;
class CustomError_static_extension {
    static public function error(_:CustomError):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.text.template.Template_customerror.CustomError>);
        return stdgo._internal.text.template.Template_customerror_static_extension.CustomError_static_extension.error(_);
    }
}
typedef TreePointer = stdgo._internal.text.template.Template_treepointer.TreePointer;
class Tree_static_extension {

}
@:dox(hide) typedef T_cmpTestPointer = stdgo._internal.text.template.Template_t_cmptestpointer.T_cmpTestPointer;
@:dox(hide) class T_cmpTest_static_extension {

}
@:dox(hide) typedef T_multiParseTestPointer = stdgo._internal.text.template.Template_t_multiparsetestpointer.T_multiParseTestPointer;
@:dox(hide) class T_multiParseTest_static_extension {

}
@:dox(hide) typedef T_optionPointer = stdgo._internal.text.template.Template_t_optionpointer.T_optionPointer;
@:dox(hide) class T_option_static_extension {

}
@:dox(hide) typedef T_commonPointer = stdgo._internal.text.template.Template_t_commonpointer.T_commonPointer;
@:dox(hide) class T_common_static_extension {

}
typedef TemplatePointer = stdgo._internal.text.template.Template_templatepointer.TemplatePointer;
class Template_static_extension {
    static public function _associate(_t:Template_, _new_:Template_, _tree:stdgo._internal.text.template.parse.Parse_tree.Tree):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _new_ = (_new_ : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _tree = (_tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._associate(_t, _new_, _tree);
    }
    static public function parse(_t:Template_, _text:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _text = (_text : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.parse(_t, _text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookup(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.lookup(_t, _name);
    }
    static public function funcs(_t:Template_, _funcMap:FuncMap):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.funcs(_t, _funcMap);
    }
    static public function delims(_t:Template_, _left:String, _right:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _left = (_left : stdgo.GoString);
        final _right = (_right : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.delims(_t, _left, _right);
    }
    static public function templates(_t:Template_):Array<Template_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return [for (i in stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.templates(_t)) i];
    }
    static public function addParseTree(_t:Template_, _name:String, _tree:stdgo._internal.text.template.parse.Parse_tree.Tree):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _name = (_name : stdgo.GoString);
        final _tree = (_tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.addParseTree(_t, _name, _tree);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _copy(_t:Template_, _c:T_common):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.Template_t_common.T_common>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._copy(_t, _c);
    }
    static public function clone(_t:Template_):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.clone(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _init(_t:Template_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._init(_t);
    }
    static public function new_(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.new_(_t, _name);
    }
    static public function name(_t:Template_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.name(_t);
    }
    static public function _setOption(_t:Template_, _opt:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _opt = (_opt : stdgo.GoString);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._setOption(_t, _opt);
    }
    static public function option(_t:Template_, _opt:haxe.Rest<String>):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.option(_t, ...[for (i in _opt) i]);
    }
    static public function parseFS(_t:Template_, _fsys:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.parseFS(_t, _fsys, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseGlob(_t:Template_, _pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.parseGlob(_t, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseFiles(_t:Template_, _filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.parseFiles(_t, ...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function definedTemplates(_t:Template_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.definedTemplates(_t);
    }
    static public function _execute(_t:Template_, _wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._execute(_t, _wr, _data);
    }
    static public function execute(_t:Template_, _wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.execute(_t, _wr, _data);
    }
    static public function executeTemplate(_t:Template_, _wr:stdgo._internal.io.Io_writer.Writer, _name:String, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _name = (_name : stdgo.GoString);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.executeTemplate(_t, _wr, _name, _data);
    }
    public static function _withControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._withControl(__self__);
    }
    public static function _useVar(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String):stdgo._internal.text.template.parse.Parse_node.Node {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._useVar(__self__, _0, _1);
    }
    public static function _unexpected(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:String):Void {
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._unexpected(__self__, _0, _1);
    }
    public static function _textOrAction(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._textOrAction(__self__);
    }
    public static function _term(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._term(__self__);
    }
    public static function _templateControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._templateControl(__self__);
    }
    public static function _stopParse(__self__:stdgo._internal.text.template.Template_template.Template):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._stopParse(__self__);
    }
    public static function _startParse(__self__:stdgo._internal.text.template.Template_template.Template, _0:Array<Map<String, stdgo.AnyInterface>>, _1:stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer, _2:Map<String, stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        final _0 = ([for (i in _0) {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in i) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        }] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        final _2 = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>();
            for (key => value in _2) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
            };
            __obj__;
        };
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._startParse(__self__, _0, _1, _2);
    }
    public static function _recover(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.Error):Void {
        final _0 = (_0 : stdgo.Ref<stdgo.Error>);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._recover(__self__, _0);
    }
    public static function _rangeControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._rangeControl(__self__);
    }
    public static function _popVars(__self__:stdgo._internal.text.template.Template_template.Template, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._popVars(__self__, _0);
    }
    public static function _pipeline(__self__:stdgo._internal.text.template.Template_template.Template, _0:String, _1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_pipenode.PipeNode {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._pipeline(__self__, _0, _1);
    }
    public static function _peekNonSpace(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._peekNonSpace(__self__);
    }
    public static function _peek(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._peek(__self__);
    }
    public static function _parseTemplateName(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:String):String {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._parseTemplateName(__self__, _0, _1);
    }
    public static function _parseDefinition(__self__:stdgo._internal.text.template.Template_template.Template):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._parseDefinition(__self__);
    }
    public static function _parseControl(__self__:stdgo._internal.text.template.Template_template.Template, _0:Bool, _1:String):stdgo.Tuple.Tuple5<stdgo._internal.text.template.parse.Parse_pos.Pos, StdTypes.Int, stdgo._internal.text.template.parse.Parse_pipenode.PipeNode, stdgo._internal.text.template.parse.Parse_listnode.ListNode, stdgo._internal.text.template.parse.Parse_listnode.ListNode> {
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._parseControl(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _parse(__self__:stdgo._internal.text.template.Template_template.Template):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._parse(__self__);
    }
    public static function _operand(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._operand(__self__);
    }
    public static function _nextNonSpace(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._nextNonSpace(__self__);
    }
    public static function _next(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._next(__self__);
    }
    public static function _newWith(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int, _2:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode, _3:stdgo._internal.text.template.parse.Parse_listnode.ListNode, _4:stdgo._internal.text.template.parse.Parse_listnode.ListNode):stdgo._internal.text.template.parse.Parse_withnode.WithNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newWith(__self__, _0, _1, _2, _3, _4);
    }
    public static function _newVariable(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String):stdgo._internal.text.template.parse.Parse_variablenode.VariableNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newVariable(__self__, _0, _1);
    }
    public static function _newText(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String):stdgo._internal.text.template.parse.Parse_textnode.TextNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newText(__self__, _0, _1);
    }
    public static function _newTemplate(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int, _2:String, _3:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.GoString);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newTemplate(__self__, _0, _1, _2, _3);
    }
    public static function _newString(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String, _2:String):stdgo._internal.text.template.parse.Parse_stringnode.StringNode {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newString(__self__, _0, _1, _2);
    }
    public static function _newRange(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int, _2:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode, _3:stdgo._internal.text.template.parse.Parse_listnode.ListNode, _4:stdgo._internal.text.template.parse.Parse_listnode.ListNode):stdgo._internal.text.template.parse.Parse_rangenode.RangeNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newRange(__self__, _0, _1, _2, _3, _4);
    }
    public static function _newPipeline(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int, _2:Array<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>):stdgo._internal.text.template.parse.Parse_pipenode.PipeNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = ([for (i in _2) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newPipeline(__self__, _0, _1, _2);
    }
    public static function _newNumber(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String, _2:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo.Tuple<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newNumber(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _newNil(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo._internal.text.template.parse.Parse_nilnode.NilNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newNil(__self__, _0);
    }
    public static function _newList(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo._internal.text.template.parse.Parse_listnode.ListNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newList(__self__, _0);
    }
    public static function _newIf(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int, _2:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode, _3:stdgo._internal.text.template.parse.Parse_listnode.ListNode, _4:stdgo._internal.text.template.parse.Parse_listnode.ListNode):stdgo._internal.text.template.parse.Parse_ifnode.IfNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newIf(__self__, _0, _1, _2, _3, _4);
    }
    public static function _newField(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String):stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newField(__self__, _0, _1);
    }
    public static function _newEnd(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newEnd(__self__, _0);
    }
    public static function _newElse(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int):stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newElse(__self__, _0, _1);
    }
    public static function _newDot(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo._internal.text.template.parse.Parse_dotnode.DotNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newDot(__self__, _0);
    }
    public static function _newContinue(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int):stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newContinue(__self__, _0, _1);
    }
    public static function _newComment(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:String):stdgo._internal.text.template.parse.Parse_commentnode.CommentNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newComment(__self__, _0, _1);
    }
    public static function _newCommand(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo._internal.text.template.parse.Parse_commandnode.CommandNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newCommand(__self__, _0);
    }
    public static function _newChain(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.text.template.parse.Parse_chainnode.ChainNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newChain(__self__, _0, _1);
    }
    public static function _newBreak(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int):stdgo._internal.text.template.parse.Parse_breaknode.BreakNode {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newBreak(__self__, _0, _1);
    }
    public static function _newBool(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:Bool):stdgo._internal.text.template.parse.Parse_boolnode.BoolNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newBool(__self__, _0, _1);
    }
    public static function _newAction(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int, _2:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):stdgo._internal.text.template.parse.Parse_actionnode.ActionNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._newAction(__self__, _0, _1, _2);
    }
    public static function _itemList(__self__:stdgo._internal.text.template.Template_template.Template):stdgo.Tuple<stdgo._internal.text.template.parse.Parse_listnode.ListNode, stdgo._internal.text.template.parse.Parse_node.Node> {
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._itemList(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ifControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._ifControl(__self__);
    }
    public static function _hasFunction(__self__:stdgo._internal.text.template.Template_template.Template, _0:String):Bool {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._hasFunction(__self__, _0);
    }
    public static function _expectOneOf(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _2:String):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._expectOneOf(__self__, _0, _1, _2);
    }
    public static function _expect(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _1:String):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._expect(__self__, _0, _1);
    }
    public static function _errorf(__self__:stdgo._internal.text.template.Template_template.Template, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _error(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.Error):Void {
        final _0 = (_0 : stdgo.Error);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._error(__self__, _0);
    }
    public static function _endControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._endControl(__self__);
    }
    public static function _elseControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._elseControl(__self__);
    }
    public static function _continueControl(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int):stdgo._internal.text.template.parse.Parse_node.Node {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._continueControl(__self__, _0, _1);
    }
    public static function _command(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_commandnode.CommandNode {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._command(__self__);
    }
    public static function _clearActionLine(__self__:stdgo._internal.text.template.Template_template.Template):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._clearActionLine(__self__);
    }
    public static function _checkPipeline(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode, _1:String):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._checkPipeline(__self__, _0, _1);
    }
    public static function _breakControl(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:StdTypes.Int):stdgo._internal.text.template.parse.Parse_node.Node {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._breakControl(__self__, _0, _1);
    }
    public static function _blockControl(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._blockControl(__self__);
    }
    public static function _backup3(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._backup3(__self__, _0, _1);
    }
    public static function _backup2(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._backup2(__self__, _0);
    }
    public static function _backup(__self__:stdgo._internal.text.template.Template_template.Template):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._backup(__self__);
    }
    public static function _add(__self__:stdgo._internal.text.template.Template_template.Template):Void {
        stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._add(__self__);
    }
    public static function _action(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension._action(__self__);
    }
    public static function errorContext(__self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.errorContext(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function copy(__self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_tree.Tree {
        return stdgo._internal.text.template.Template_template_static_extension.Template_static_extension.copy(__self__);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.text.template.Template_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.text.template.Template_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.text.template.Template_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.text.template.Template_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.text.template.Template_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.text.template.Template_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.text.template.Template_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
@:dox(hide) typedef T__struct_7PointerPointer = stdgo._internal.text.template.Template_t__struct_7pointerpointer.T__struct_7PointerPointer;
@:dox(hide) class T__struct_7Pointer_static_extension {

}
@:dox(hide) typedef T__struct_8PointerPointer = stdgo._internal.text.template.Template_t__struct_8pointerpointer.T__struct_8PointerPointer;
@:dox(hide) class T__struct_8Pointer_static_extension {

}
typedef SPointer = stdgo._internal.text.template.Template_spointer.SPointer;
class S_static_extension {
    static public function method0(_:S):String {
        return stdgo._internal.text.template.Template_s_static_extension.S_static_extension.method0(_);
    }
}
typedef ErrorWriterPointer = stdgo._internal.text.template.Template_errorwriterpointer.ErrorWriterPointer;
class ErrorWriter_static_extension {
    static public function write(_e:ErrorWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.template.Template_errorwriter_static_extension.ErrorWriter_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FuncMapPointer = stdgo._internal.text.template.Template_funcmappointer.FuncMapPointer;
class FuncMap_static_extension {

}
@:dox(hide) typedef T_kindPointer = stdgo._internal.text.template.Template_t_kindpointer.T_kindPointer;
@:dox(hide) class T_kind_static_extension {

}
@:dox(hide) typedef T_missingKeyActionPointer = stdgo._internal.text.template.Template_t_missingkeyactionpointer.T_missingKeyActionPointer;
@:dox(hide) class T_missingKeyAction_static_extension {

}
@:dox(hide) typedef T_testIssue48215___localname___A_58273Pointer = stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273pointer.T_testIssue48215___localname___A_58273Pointer;
@:dox(hide) class T_testIssue48215___localname___A_58273_static_extension {

}
@:dox(hide) typedef T_testIssue48215___localname___B_58304Pointer = stdgo._internal.text.template.Template_t_testissue48215___localname___b_58304pointer.T_testIssue48215___localname___B_58304Pointer;
@:dox(hide) class T_testIssue48215___localname___B_58304_static_extension {

}
/**
    * 
    * Package template implements data-driven templates for generating textual output.
    * 
    * To generate HTML output, see [html/template], which has the same interface
    * as this package but automatically secures HTML output against certain attacks.
    * 
    * Templates are executed by applying them to a data structure. Annotations in the
    * template refer to elements of the data structure (typically a field of a struct
    * or a key in a map) to control execution and derive values to be displayed.
    * Execution of the template walks the structure and sets the cursor, represented
    * by a period '.' and called "dot", to the value at the current location in the
    * structure as execution proceeds.
    * 
    * The input text for a template is UTF-8-encoded text in any format.
    * "Actions"--data evaluations or control structures--are delimited by
    * "{{" and "}}"; all text outside actions is copied to the output unchanged.
    * 
    * Once parsed, a template may be executed safely in parallel, although if parallel
    * executions share a Writer the output may be interleaved.
    * 
    * Here is a trivial example that prints "17 items are made of wool".
    * 
    * 	type Inventory struct {
    * 		Material string
    * 		Count    uint
    * 	}
    * 	sweaters := Inventory{"wool", 17}
    * 	tmpl, err := template.New("test").Parse("{{.Count}} items are made of {{.Material}}")
    * 	if err != nil { panic(err) }
    * 	err = tmpl.Execute(os.Stdout, sweaters)
    * 	if err != nil { panic(err) }
    * 
    * More intricate examples appear below.
    * 
    * Text and spaces
    * 
    * By default, all text between actions is copied verbatim when the template is
    * executed. For example, the string " items are made of " in the example above
    * appears on standard output when the program is run.
    * 
    * However, to aid in formatting template source code, if an action's left
    * delimiter (by default "{{") is followed immediately by a minus sign and white
    * space, all trailing white space is trimmed from the immediately preceding text.
    * Similarly, if the right delimiter ("}}") is preceded by white space and a minus
    * sign, all leading white space is trimmed from the immediately following text.
    * In these trim markers, the white space must be present:
    * "{{- 3}}" is like "{{3}}" but trims the immediately preceding text, while
    * "{{-3}}" parses as an action containing the number -3.
    * 
    * For instance, when executing the template whose source is
    * 
    * 	"{{23 -}} < {{- 45}}"
    * 
    * the generated output would be
    * 
    * 	"23<45"
    * 
    * For this trimming, the definition of white space characters is the same as in Go:
    * space, horizontal tab, carriage return, and newline.
    * 
    * Actions
    * 
    * Here is the list of actions. "Arguments" and "pipelines" are evaluations of
    * data, defined in detail in the corresponding sections that follow.
    * 
    * 
    * 	{{ a comment }}
    * 	{{-  a comment with white space trimmed from preceding and following text  -}}
    * 		A comment; discarded. May contain newlines.
    * 		Comments do not nest and must start and end at the
    * 		delimiters, as shown here.
    * 
    * 
    * 	{{pipeline}}
    * 		The default textual representation (the same as would be
    * 		printed by fmt.Print) of the value of the pipeline is copied
    * 		to the output.
    * 
    * 	{{if pipeline}} T1 {{end}}
    * 		If the value of the pipeline is empty, no output is generated;
    * 		otherwise, T1 is executed. The empty values are false, 0, any
    * 		nil pointer or interface value, and any array, slice, map, or
    * 		string of length zero.
    * 		Dot is unaffected.
    * 
    * 	{{if pipeline}} T1 {{else}} T0 {{end}}
    * 		If the value of the pipeline is empty, T0 is executed;
    * 		otherwise, T1 is executed. Dot is unaffected.
    * 
    * 	{{if pipeline}} T1 {{else if pipeline}} T0 {{end}}
    * 		To simplify the appearance of if-else chains, the else action
    * 		of an if may include another if directly; the effect is exactly
    * 		the same as writing
    * 			{{if pipeline}} T1 {{else}}{{if pipeline}} T0 {{end}}{{end}}
    * 
    * 	{{range pipeline}} T1 {{end}}
    * 		The value of the pipeline must be an array, slice, map, or channel.
    * 		If the value of the pipeline has length zero, nothing is output;
    * 		otherwise, dot is set to the successive elements of the array,
    * 		slice, or map and T1 is executed. If the value is a map and the
    * 		keys are of basic type with a defined order, the elements will be
    * 		visited in sorted key order.
    * 
    * 	{{range pipeline}} T1 {{else}} T0 {{end}}
    * 		The value of the pipeline must be an array, slice, map, or channel.
    * 		If the value of the pipeline has length zero, dot is unaffected and
    * 		T0 is executed; otherwise, dot is set to the successive elements
    * 		of the array, slice, or map and T1 is executed.
    * 
    * 	{{break}}
    * 		The innermost {{range pipeline}} loop is ended early, stopping the
    * 		current iteration and bypassing all remaining iterations.
    * 
    * 	{{continue}}
    * 		The current iteration of the innermost {{range pipeline}} loop is
    * 		stopped, and the loop starts the next iteration.
    * 
    * 	{{template "name"}}
    * 		The template with the specified name is executed with nil data.
    * 
    * 	{{template "name" pipeline}}
    * 		The template with the specified name is executed with dot set
    * 		to the value of the pipeline.
    * 
    * 	{{block "name" pipeline}} T1 {{end}}
    * 		A block is shorthand for defining a template
    * 			{{define "name"}} T1 {{end}}
    * 		and then executing it in place
    * 			{{template "name" pipeline}}
    * 		The typical use is to define a set of root templates that are
    * 		then customized by redefining the block templates within.
    * 
    * 	{{with pipeline}} T1 {{end}}
    * 		If the value of the pipeline is empty, no output is generated;
    * 		otherwise, dot is set to the value of the pipeline and T1 is
    * 		executed.
    * 
    * 	{{with pipeline}} T1 {{else}} T0 {{end}}
    * 		If the value of the pipeline is empty, dot is unaffected and T0
    * 		is executed; otherwise, dot is set to the value of the pipeline
    * 		and T1 is executed.
    * 
    * Arguments
    * 
    * An argument is a simple value, denoted by one of the following.
    * 
    * 	- A boolean, string, character, integer, floating-point, imaginary
    * 	  or complex constant in Go syntax. These behave like Go's untyped
    * 	  constants. Note that, as in Go, whether a large integer constant
    * 	  overflows when assigned or passed to a function can depend on whether
    * 	  the host machine's ints are 32 or 64 bits.
    * 	- The keyword nil, representing an untyped Go nil.
    * 	- The character '.' (period):
    * 		.
    * 	  The result is the value of dot.
    * 	- A variable name, which is a (possibly empty) alphanumeric string
    * 	  preceded by a dollar sign, such as
    * 		$piOver2
    * 	  or
    * 		$
    * 	  The result is the value of the variable.
    * 	  Variables are described below.
    * 	- The name of a field of the data, which must be a struct, preceded
    * 	  by a period, such as
    * 		.Field
    * 	  The result is the value of the field. Field invocations may be
    * 	  chained:
    * 	    .Field1.Field2
    * 	  Fields can also be evaluated on variables, including chaining:
    * 	    $x.Field1.Field2
    * 	- The name of a key of the data, which must be a map, preceded
    * 	  by a period, such as
    * 		.Key
    * 	  The result is the map element value indexed by the key.
    * 	  Key invocations may be chained and combined with fields to any
    * 	  depth:
    * 	    .Field1.Key1.Field2.Key2
    * 	  Although the key must be an alphanumeric identifier, unlike with
    * 	  field names they do not need to start with an upper case letter.
    * 	  Keys can also be evaluated on variables, including chaining:
    * 	    $x.key1.key2
    * 	- The name of a niladic method of the data, preceded by a period,
    * 	  such as
    * 		.Method
    * 	  The result is the value of invoking the method with dot as the
    * 	  receiver, dot.Method(). Such a method must have one return value (of
    * 	  any type) or two return values, the second of which is an error.
    * 	  If it has two and the returned error is non-nil, execution terminates
    * 	  and an error is returned to the caller as the value of Execute.
    * 	  Method invocations may be chained and combined with fields and keys
    * 	  to any depth:
    * 	    .Field1.Key1.Method1.Field2.Key2.Method2
    * 	  Methods can also be evaluated on variables, including chaining:
    * 	    $x.Method1.Field
    * 	- The name of a niladic function, such as
    * 		fun
    * 	  The result is the value of invoking the function, fun(). The return
    * 	  types and values behave as in methods. Functions and function
    * 	  names are described below.
    * 	- A parenthesized instance of one the above, for grouping. The result
    * 	  may be accessed by a field or map key invocation.
    * 		print (.F1 arg1) (.F2 arg2)
    * 		(.StructValuedMethod "arg").Field
    * 
    * Arguments may evaluate to any type; if they are pointers the implementation
    * automatically indirects to the base type when required.
    * If an evaluation yields a function value, such as a function-valued
    * field of a struct, the function is not invoked automatically, but it
    * can be used as a truth value for an if action and the like. To invoke
    * it, use the call function, defined below.
    * 
    * Pipelines
    * 
    * A pipeline is a possibly chained sequence of "commands". A command is a simple
    * value (argument) or a function or method call, possibly with multiple arguments:
    * 
    * 	Argument
    * 		The result is the value of evaluating the argument.
    * 	.Method [Argument...]
    * 		The method can be alone or the last element of a chain but,
    * 		unlike methods in the middle of a chain, it can take arguments.
    * 		The result is the value of calling the method with the
    * 		arguments:
    * 			dot.Method(Argument1, etc.)
    * 	functionName [Argument...]
    * 		The result is the value of calling the function associated
    * 		with the name:
    * 			function(Argument1, etc.)
    * 		Functions and function names are described below.
    * 
    * A pipeline may be "chained" by separating a sequence of commands with pipeline
    * characters '|'. In a chained pipeline, the result of each command is
    * passed as the last argument of the following command. The output of the final
    * command in the pipeline is the value of the pipeline.
    * 
    * The output of a command will be either one value or two values, the second of
    * which has type error. If that second value is present and evaluates to
    * non-nil, execution terminates and the error is returned to the caller of
    * Execute.
    * 
    * Variables
    * 
    * A pipeline inside an action may initialize a variable to capture the result.
    * The initialization has syntax
    * 
    * 	$variable := pipeline
    * 
    * where $variable is the name of the variable. An action that declares a
    * variable produces no output.
    * 
    * Variables previously declared can also be assigned, using the syntax
    * 
    * 	$variable = pipeline
    * 
    * If a "range" action initializes a variable, the variable is set to the
    * successive elements of the iteration. Also, a "range" may declare two
    * variables, separated by a comma:
    * 
    * 	range $index, $element := pipeline
    * 
    * in which case $index and $element are set to the successive values of the
    * array/slice index or map key and element, respectively. Note that if there is
    * only one variable, it is assigned the element; this is opposite to the
    * convention in Go range clauses.
    * 
    * A variable's scope extends to the "end" action of the control structure ("if",
    * "with", or "range") in which it is declared, or to the end of the template if
    * there is no such control structure. A template invocation does not inherit
    * variables from the point of its invocation.
    * 
    * When execution begins, $ is set to the data argument passed to Execute, that is,
    * to the starting value of dot.
    * 
    * Examples
    * 
    * Here are some example one-line templates demonstrating pipelines and variables.
    * All produce the quoted word "output":
    * 
    * 	{{"\"output\""}}
    * 		A string constant.
    * 	{{`"output"`}}
    * 		A raw string constant.
    * 	{{printf "%q" "output"}}
    * 		A function call.
    * 	{{"output" | printf "%q"}}
    * 		A function call whose final argument comes from the previous
    * 		command.
    * 	{{printf "%q" (print "out" "put")}}
    * 		A parenthesized argument.
    * 	{{"put" | printf "%s%s" "out" | printf "%q"}}
    * 		A more elaborate call.
    * 	{{"output" | printf "%s" | printf "%q"}}
    * 		A longer chain.
    * 	{{with "output"}}{{printf "%q" .}}{{end}}
    * 		A with action using dot.
    * 	{{with $x := "output" | printf "%q"}}{{$x}}{{end}}
    * 		A with action that creates and uses a variable.
    * 	{{with $x := "output"}}{{printf "%q" $x}}{{end}}
    * 		A with action that uses the variable in another action.
    * 	{{with $x := "output"}}{{$x | printf "%q"}}{{end}}
    * 		The same, but pipelined.
    * 
    * Functions
    * 
    * During execution functions are found in two function maps: first in the
    * template, then in the global function map. By default, no functions are defined
    * in the template but the Funcs method can be used to add them.
    * 
    * Predefined global functions are named as follows.
    * 
    * 	and
    * 		Returns the boolean AND of its arguments by returning the
    * 		first empty argument or the last argument. That is,
    * 		"and x y" behaves as "if x then y else x."
    * 		Evaluation proceeds through the arguments left to right
    * 		and returns when the result is determined.
    * 	call
    * 		Returns the result of calling the first argument, which
    * 		must be a function, with the remaining arguments as parameters.
    * 		Thus "call .X.Y 1 2" is, in Go notation, dot.X.Y(1, 2) where
    * 		Y is a func-valued field, map entry, or the like.
    * 		The first argument must be the result of an evaluation
    * 		that yields a value of function type (as distinct from
    * 		a predefined function such as print). The function must
    * 		return either one or two result values, the second of which
    * 		is of type error. If the arguments don't match the function
    * 		or the returned error value is non-nil, execution stops.
    * 	html
    * 		Returns the escaped HTML equivalent of the textual
    * 		representation of its arguments. This function is unavailable
    * 		in html/template, with a few exceptions.
    * 	index
    * 		Returns the result of indexing its first argument by the
    * 		following arguments. Thus "index x 1 2 3" is, in Go syntax,
    * 		x[1][2][3]. Each indexed item must be a map, slice, or array.
    * 	slice
    * 		slice returns the result of slicing its first argument by the
    * 		remaining arguments. Thus "slice x 1 2" is, in Go syntax, x[1:2],
    * 		while "slice x" is x[:], "slice x 1" is x[1:], and "slice x 1 2 3"
    * 		is x[1:2:3]. The first argument must be a string, slice, or array.
    * 	js
    * 		Returns the escaped JavaScript equivalent of the textual
    * 		representation of its arguments.
    * 	len
    * 		Returns the integer length of its argument.
    * 	not
    * 		Returns the boolean negation of its single argument.
    * 	or
    * 		Returns the boolean OR of its arguments by returning the
    * 		first non-empty argument or the last argument, that is,
    * 		"or x y" behaves as "if x then x else y".
    * 		Evaluation proceeds through the arguments left to right
    * 		and returns when the result is determined.
    * 	print
    * 		An alias for fmt.Sprint
    * 	printf
    * 		An alias for fmt.Sprintf
    * 	println
    * 		An alias for fmt.Sprintln
    * 	urlquery
    * 		Returns the escaped value of the textual representation of
    * 		its arguments in a form suitable for embedding in a URL query.
    * 		This function is unavailable in html/template, with a few
    * 		exceptions.
    * 
    * The boolean functions take any zero value to be false and a non-zero
    * value to be true.
    * 
    * There is also a set of binary comparison operators defined as
    * functions:
    * 
    * 	eq
    * 		Returns the boolean truth of arg1 == arg2
    * 	ne
    * 		Returns the boolean truth of arg1 != arg2
    * 	lt
    * 		Returns the boolean truth of arg1 < arg2
    * 	le
    * 		Returns the boolean truth of arg1 <= arg2
    * 	gt
    * 		Returns the boolean truth of arg1 > arg2
    * 	ge
    * 		Returns the boolean truth of arg1 >= arg2
    * 
    * For simpler multi-way equality tests, eq (only) accepts two or more
    * arguments and compares the second and subsequent to the first,
    * returning in effect
    * 
    * 	arg1==arg2 || arg1==arg3 || arg1==arg4 ...
    * 
    * (Unlike with || in Go, however, eq is a function call and all the
    * arguments will be evaluated.)
    * 
    * The comparison functions work on any values whose type Go defines as
    * comparable. For basic types such as integers, the rules are relaxed:
    * size and exact type are ignored, so any integer value, signed or unsigned,
    * may be compared with any other integer value. (The arithmetic value is compared,
    * not the bit pattern, so all negative integers are less than all unsigned integers.)
    * However, as usual, one may not compare an int with a float32 and so on.
    * 
    * Associated templates
    * 
    * Each template is named by a string specified when it is created. Also, each
    * template is associated with zero or more other templates that it may invoke by
    * name; such associations are transitive and form a name space of templates.
    * 
    * A template may use a template invocation to instantiate another associated
    * template; see the explanation of the "template" action above. The name must be
    * that of a template associated with the template that contains the invocation.
    * 
    * Nested template definitions
    * 
    * When parsing a template, another template may be defined and associated with the
    * template being parsed. Template definitions must appear at the top level of the
    * template, much like global variables in a Go program.
    * 
    * The syntax of such definitions is to surround each template declaration with a
    * "define" and "end" action.
    * 
    * The define action names the template being created by providing a string
    * constant. Here is a simple example:
    * 
    * 	{{define "T1"}}ONE{{end}}
    * 	{{define "T2"}}TWO{{end}}
    * 	{{define "T3"}}{{template "T1"}} {{template "T2"}}{{end}}
    * 	{{template "T3"}}
    * 
    * This defines two templates, T1 and T2, and a third T3 that invokes the other two
    * when it is executed. Finally it invokes T3. If executed this template will
    * produce the text
    * 
    * 	ONE TWO
    * 
    * By construction, a template may reside in only one association. If it's
    * necessary to have a template addressable from multiple associations, the
    * template definition must be parsed multiple times to create distinct *Template
    * values, or must be copied with the Clone or AddParseTree method.
    * 
    * Parse may be called multiple times to assemble the various associated templates;
    * see the ParseFiles and ParseGlob functions and methods for simple ways to parse
    * related templates stored in files.
    * 
    * A template may be executed directly or through ExecuteTemplate, which executes
    * an associated template identified by name. To invoke our example above, we
    * might write,
    * 
    * 	err := tmpl.Execute(os.Stdout, "no data needed")
    * 	if err != nil {
    * 		log.Fatalf("execution failed: %s", err)
    * 	}
    * 
    * or to invoke a particular template explicitly by name,
    * 
    * 	err := tmpl.ExecuteTemplate(os.Stdout, "T2", "no data needed")
    * 	if err != nil {
    * 		log.Fatalf("execution failed: %s", err)
    * 	}
    * 
    * 
**/
class Template {
    /**
        * IsTrue reports whether the value is 'true', in the sense of not the zero of its type,
        * and whether the value has a meaningful truth value. This is the definition of
        * truth used by if and other such actions.
    **/
    static public inline function isTrue(_val:stdgo.AnyInterface):stdgo.Tuple<Bool, Bool> {
        final _val = (_val : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.text.template.Template_istrue.isTrue(_val);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function testExecute(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecute.testExecute(_t);
    }
    static public inline function testDelims(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testdelims.testDelims(_t);
    }
    /**
        * Check that an error from a method flows back to the top.
    **/
    static public inline function testExecuteError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecuteerror.testExecuteError(_t);
    }
    /**
        * Check that an error from a nested template contains all the relevant information.
    **/
    static public inline function testExecError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecerror.testExecError(_t);
    }
    /**
        * Check that a custom error can be returned.
    **/
    static public inline function testExecError_CustomError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecerror_customerror.testExecError_CustomError(_t);
    }
    static public inline function testJSEscaping(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testjsescaping.testJSEscaping(_t);
    }
    static public inline function testTree(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testtree.testTree(_t);
    }
    static public inline function testExecuteOnNewTemplate(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecuteonnewtemplate.testExecuteOnNewTemplate(_t);
    }
    static public inline function testMessageForExecuteEmpty(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testmessageforexecuteempty.testMessageForExecuteEmpty(_t);
    }
    static public inline function testFinalForPrintf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testfinalforprintf.testFinalForPrintf(_t);
    }
    static public inline function testComparison(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testcomparison.testComparison(_t);
    }
    static public inline function testMissingMapKey(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testmissingmapkey.testMissingMapKey(_t);
    }
    /**
        * Test that the error message for multiline unterminated string
        * refers to the line number of the opening quote.
    **/
    static public inline function testUnterminatedStringError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testunterminatedstringerror.testUnterminatedStringError(_t);
    }
    static public inline function testExecuteGivesExecError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecutegivesexecerror.testExecuteGivesExecError(_t);
    }
    static public inline function testGoodFuncNames(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testgoodfuncnames.testGoodFuncNames(_t);
    }
    static public inline function testBadFuncNames(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testbadfuncnames.testBadFuncNames(_t);
    }
    static public inline function testBlock(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testblock.testBlock(_t);
    }
    static public inline function testEvalFieldErrors(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testevalfielderrors.testEvalFieldErrors(_t);
    }
    static public inline function testMaxExecDepth(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testmaxexecdepth.testMaxExecDepth(_t);
    }
    static public inline function testAddrOfIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testaddrofindex.testAddrOfIndex(_t);
    }
    static public inline function testInterfaceValues(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testinterfacevalues.testInterfaceValues(_t);
    }
    /**
        * Check that panics during calls are recovered and returned as errors.
    **/
    static public inline function testExecutePanicDuringCall(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testexecutepanicduringcall.testExecutePanicDuringCall(_t);
    }
    /**
        * Issue 31810. Check that a parenthesized first argument behaves properly.
    **/
    static public inline function testIssue31810(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testissue31810.testIssue31810(_t);
    }
    /**
        * Issue 43065, range over send only channel
    **/
    static public inline function testIssue43065(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testissue43065.testIssue43065(_t);
    }
    /**
        * Issue 39807: data race in html/template & text/template
    **/
    static public inline function testIssue39807(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testissue39807.testIssue39807(_t);
    }
    /**
        * Issue 48215: embedded nil pointer causes panic.
        * Fixed by adding FieldByIndexErr to the reflect package.
    **/
    static public inline function testIssue48215(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testissue48215.testIssue48215(_t);
    }
    /**
        * HTMLEscape writes to w the escaped HTML equivalent of the plain text data b.
    **/
    static public inline function hTMLEscape(_w:stdgo._internal.io.Io_writer.Writer, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.text.template.Template_htmlescape.hTMLEscape(_w, _b);
    }
    /**
        * HTMLEscapeString returns the escaped HTML equivalent of the plain text data s.
    **/
    static public inline function hTMLEscapeString(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.text.template.Template_htmlescapestring.hTMLEscapeString(_s);
    }
    /**
        * HTMLEscaper returns the escaped HTML equivalent of the textual
        * representation of its arguments.
    **/
    static public inline function hTMLEscaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.text.template.Template_htmlescaper.hTMLEscaper(...[for (i in _args) i]);
    }
    /**
        * JSEscape writes to w the escaped JavaScript equivalent of the plain text data b.
    **/
    static public inline function jSEscape(_w:stdgo._internal.io.Io_writer.Writer, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.text.template.Template_jsescape.jSEscape(_w, _b);
    }
    /**
        * JSEscapeString returns the escaped JavaScript equivalent of the plain text data s.
    **/
    static public inline function jSEscapeString(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.text.template.Template_jsescapestring.jSEscapeString(_s);
    }
    /**
        * JSEscaper returns the escaped JavaScript equivalent of the textual
        * representation of its arguments.
    **/
    static public inline function jSEscaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.text.template.Template_jsescaper.jSEscaper(...[for (i in _args) i]);
    }
    /**
        * URLQueryEscaper returns the escaped value of the textual representation of
        * its arguments in a form suitable for embedding in a URL query.
    **/
    static public inline function uRLQueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.text.template.Template_urlqueryescaper.uRLQueryEscaper(...[for (i in _args) i]);
    }
    /**
        * Must is a helper that wraps a call to a function returning (*Template, error)
        * and panics if the error is non-nil. It is intended for use in variable
        * initializations such as
        * 
        * 	var t = template.Must(template.New("name").Parse("text"))
    **/
    static public inline function must(_t:Template_, _err:stdgo.Error):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.text.template.Template_must.must(_t, _err);
    }
    /**
        * ParseFiles creates a new Template and parses the template definitions from
        * the named files. The returned template's name will have the base name and
        * parsed contents of the first file. There must be at least one file.
        * If an error occurs, parsing stops and the returned *Template is nil.
        * 
        * When parsing multiple files with the same name in different directories,
        * the last one mentioned will be the one that results.
        * For instance, ParseFiles("a/foo", "b/foo") stores "b/foo" as the template
        * named "foo", while "a/foo" is unavailable.
    **/
    static public inline function parseFiles(_filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template_parsefiles.parseFiles(...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseGlob creates a new Template and parses the template definitions from
        * the files identified by the pattern. The files are matched according to the
        * semantics of filepath.Match, and the pattern must match at least one file.
        * The returned template will have the (base) name and (parsed) contents of the
        * first file matched by the pattern. ParseGlob is equivalent to calling
        * ParseFiles with the list of files matched by the pattern.
        * 
        * When parsing multiple files with the same name in different directories,
        * the last one mentioned will be the one that results.
    **/
    static public inline function parseGlob(_pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_parseglob.parseGlob(_pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseFS is like ParseFiles or ParseGlob but reads from the file system fsys
        * instead of the host operating system's file system.
        * It accepts a list of glob patterns.
        * (Note that most file names serve as glob patterns matching only themselves.)
    **/
    static public inline function parseFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template_parsefs.parseFS(_fsys, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function testMultiParse(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testmultiparse.testMultiParse(_t);
    }
    static public inline function testMultiExecute(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testmultiexecute.testMultiExecute(_t);
    }
    static public inline function testParseFiles(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testparsefiles.testParseFiles(_t);
    }
    static public inline function testParseGlob(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testparseglob.testParseGlob(_t);
    }
    static public inline function testParseFS(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testparsefs.testParseFS(_t);
    }
    static public inline function testParseFilesWithData(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testparsefileswithdata.testParseFilesWithData(_t);
    }
    static public inline function testParseGlobWithData(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testparseglobwithdata.testParseGlobWithData(_t);
    }
    static public inline function testClone(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testclone.testClone(_t);
    }
    static public inline function testAddParseTree(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testaddparsetree.testAddParseTree(_t);
    }
    /**
        * Issue 7032
    **/
    static public inline function testAddParseTreeToUnparsedTemplate(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testaddparsetreetounparsedtemplate.testAddParseTreeToUnparsedTemplate(_t);
    }
    static public inline function testRedefinition(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testredefinition.testRedefinition(_t);
    }
    /**
        * Issue 10879
    **/
    static public inline function testEmptyTemplateCloneCrash(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testemptytemplateclonecrash.testEmptyTemplateCloneCrash(_t);
    }
    /**
        * Issue 10910, 10926
    **/
    static public inline function testTemplateLookUp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testtemplatelookup.testTemplateLookUp(_t);
    }
    static public inline function testNew(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testnew.testNew(_t);
    }
    static public inline function testParse(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testparse.testParse(_t);
    }
    static public inline function testEmptyTemplate(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testemptytemplate.testEmptyTemplate(_t);
    }
    /**
        * Issue 19249 was a regression in 1.8 caused by the handling of empty
        * templates added in that release, which got different answers depending
        * on the order templates appeared in the internal map.
    **/
    static public inline function testIssue19294(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testissue19294.testIssue19294(_t);
    }
    /**
        * Issue 48436
    **/
    static public inline function testAddToZeroTemplate(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.template.Template_testaddtozerotemplate.testAddToZeroTemplate(_t);
    }
    /**
        * New allocates a new, undefined template with the given name.
    **/
    static public inline function new_(_name:String):Template_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_new_.new_(_name);
    }
}
