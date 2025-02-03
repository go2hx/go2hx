package stdgo.runtime.pprof;
class T_profileBuilder_static_extension {
    static public function _readMapping(_b:T_profileBuilder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._readMapping(_b);
    }
    static public function _addMappingEntry(_b:T_profileBuilder, _lo:haxe.UInt64, _hi:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String, _fake:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _lo = (_lo : stdgo.GoUInt64);
        final _hi = (_hi : stdgo.GoUInt64);
        final _offset = (_offset : stdgo.GoUInt64);
        final _file = (_file : stdgo.GoString);
        final _buildID = (_buildID : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._addMappingEntry(_b, _lo, _hi, _offset, _file, _buildID, _fake);
    }
    static public function _addMapping(_b:T_profileBuilder, _lo:haxe.UInt64, _hi:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _lo = (_lo : stdgo.GoUInt64);
        final _hi = (_hi : stdgo.GoUInt64);
        final _offset = (_offset : stdgo.GoUInt64);
        final _file = (_file : stdgo.GoString);
        final _buildID = (_buildID : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._addMapping(_b, _lo, _hi, _offset, _file, _buildID);
    }
    static public function _emitLocation(_b:T_profileBuilder):haxe.UInt64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        return stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._emitLocation(_b);
    }
    static public function _appendLocsForStack(_b:T_profileBuilder, _locs:Array<haxe.UInt64>, _stk:Array<stdgo.GoUIntptr>):Array<haxe.UInt64> {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _locs = ([for (i in _locs) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _stk = ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._appendLocsForStack(_b, _locs, _stk)) i];
    }
    static public function _build(_b:T_profileBuilder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._build(_b);
    }
    static public function _addCPUData(_b:T_profileBuilder, _data:Array<haxe.UInt64>, _tags:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _tags = ([for (i in _tags) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._addCPUData(_b, _data, _tags);
    }
    static public function _pbMapping(_b:T_profileBuilder, _tag:StdTypes.Int, _id:haxe.UInt64, _base:haxe.UInt64, _limit:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String, _hasFuncs:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _id = (_id : stdgo.GoUInt64);
        final _base = (_base : stdgo.GoUInt64);
        final _limit = (_limit : stdgo.GoUInt64);
        final _offset = (_offset : stdgo.GoUInt64);
        final _file = (_file : stdgo.GoString);
        final _buildID = (_buildID : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbMapping(_b, _tag, _id, _base, _limit, _offset, _file, _buildID, _hasFuncs);
    }
    static public function _pbLine(_b:T_profileBuilder, _tag:StdTypes.Int, _funcID:haxe.UInt64, _line:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _funcID = (_funcID : stdgo.GoUInt64);
        final _line = (_line : stdgo.GoInt64);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbLine(_b, _tag, _funcID, _line);
    }
    static public function _pbLabel(_b:T_profileBuilder, _tag:StdTypes.Int, _key:String, _str:String, _num:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _key = (_key : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        final _num = (_num : stdgo.GoInt64);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbLabel(_b, _tag, _key, _str, _num);
    }
    static public function _pbSample(_b:T_profileBuilder, _values:Array<haxe.Int64>, _locs:Array<haxe.UInt64>, _labels:() -> Void):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _values = ([for (i in _values) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        final _locs = ([for (i in _locs) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _labels = _labels;
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbSample(_b, _values, _locs, _labels);
    }
    static public function _pbValueType(_b:T_profileBuilder, _tag:StdTypes.Int, _typ:String, _unit:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _typ = (_typ : stdgo.GoString);
        final _unit = (_unit : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbValueType(_b, _tag, _typ, _unit);
    }
    static public function _flush(_b:T_profileBuilder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._flush(_b);
    }
    static public function _stringIndex(_b:T_profileBuilder, _s:String):haxe.Int64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._stringIndex(_b, _s);
    }
}
