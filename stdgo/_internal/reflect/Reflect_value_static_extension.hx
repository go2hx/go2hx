package stdgo._internal.reflect;
@:keep @:allow(stdgo._internal.reflect.Reflect.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function equal( _v:stdgo._internal.reflect.Reflect_value.Value, _u:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.equal is not yet implemented";
    @:keep
    @:tdfield
    static public function comparable_( _v:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.comparable_ is not yet implemented";
    @:keep
    @:tdfield
    static public function canConvert( _v:stdgo._internal.reflect.Reflect_value.Value, _t:stdgo._internal.reflect.Reflect_type_.Type_):Bool throw "Value:reflect.canConvert is not yet implemented";
    @:keep
    @:tdfield
    static public function convert( _v:stdgo._internal.reflect.Reflect_value.Value, _t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.convert is not yet implemented";
    @:keep
    @:tdfield
    static public function clear( _v:stdgo._internal.reflect.Reflect_value.Value):Void throw "Value:reflect.clear is not yet implemented";
    @:keep
    @:tdfield
    static public function grow( _v:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo.GoInt):Void throw "Value:reflect.grow is not yet implemented";
    @:keep
    @:tdfield
    static public function unsafePointer( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.unsafe.Unsafe.UnsafePointer throw "Value:reflect.unsafePointer is not yet implemented";
    @:keep
    @:tdfield
    static public function unsafeAddr( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoUIntptr throw "Value:reflect.unsafeAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function uint( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoUInt64 @:splitdeps @:splitdeps {
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoUInt64 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                (value : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
                (value : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                (value : stdgo.GoUInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                (value : stdgo.GoUInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                (value : stdgo.GoUInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                new stdgo.GoUIntptr(value);
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Uint", _v.kind());
        };
        return value;
    };
    @:keep
    @:tdfield
    static public function canUint( _v:stdgo._internal.reflect.Reflect_value.Value):Bool @:splitdeps {
        return switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8, stdgo._internal.internal.reflect.Reflect.KindType.uint16, stdgo._internal.internal.reflect.Reflect.KindType.uint32, stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                true;
            default:
                false;
        };
    };
    @:keep
    @:tdfield
    static public function type( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_type_.Type_ @:splitdeps {
        if (@:privateAccess _v.value == null) {
            var t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.invalidType);
            return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t);
        };
        return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_v.value.type), _v.value.type);
    };
    @:keep
    @:tdfield
    static public function trySend( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.trySend is not yet implemented";
    @:keep
    @:tdfield
    static public function tryRecv( _v:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } throw "Value:reflect.tryRecv is not yet implemented";
    @:keep
    @:tdfield
    static public function string( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoString {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) {
            return "<invalid Value>";
        };
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final underlyingType = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
        switch (underlyingType) {
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    return value;
                default:
                    final _ = false;
            };
            default:
                final _ = false;
        };
        return "<" + _v.type().string() + " Value>";
    }
    @:keep
    @:tdfield
    static public function slice3( _v:stdgo._internal.reflect.Reflect_value.Value, _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.slice3 is not yet implemented";
    @:keep
    @:tdfield
    static public function slice( _v:stdgo._internal.reflect.Reflect_value.Value, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value @:splitdeps {
        var value = @:privateAccess _v.value.value;
        var t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        switch t {
            case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(elem, _):
                t = stdgo._internal.internal.reflect.Reflect.GoType.sliceType(elem);
            case stdgo._internal.internal.reflect.Reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.Reflect.GoType.arrayType(elem, _), alias, params):
                t = stdgo._internal.internal.reflect.Reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.Reflect.GoType.sliceType(elem), alias, params);
            default:
                final _ = false;
        };
        final k = _v.kind();
        value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                (value : stdgo.Slice<Dynamic>).__slice__(_i, _j);
            case stdgo._internal.internal.reflect.Reflect.KindType.array:
                (value : stdgo.GoArray<Dynamic>).__slice__(_i, _j);
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Slice", k);
        };
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(t)));
    };
    @:keep
    @:tdfield
    static public function setString( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        @:privateAccess _v.value.value = _x;
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    @:tdfield
    static public function setPointer( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "Value:reflect.setPointer is not yet implemented";
    @:keep
    @:tdfield
    static public function setUint( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoUInt64):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                (_x : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                (_x : stdgo.GoInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                (_x : stdgo.GoInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                (_x : stdgo.GoInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                (_x : stdgo.GoInt);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
                (_x : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                (_x : stdgo.GoUInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                (_x : stdgo.GoUInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                (_x : stdgo.GoUInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                (_x : stdgo.GoUInt);
            case stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                new stdgo.GoUIntptr(_x);
            default:
                throw "unknown setUInt kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    @:tdfield
    static public function setMapIndex( _v:stdgo._internal.reflect.Reflect_value.Value, _key:stdgo._internal.reflect.Reflect_value.Value, _elem:stdgo._internal.reflect.Reflect_value.Value):Void throw "Value:reflect.setMapIndex is not yet implemented";
    @:keep
    @:tdfield
    static public function setCap( _v:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo.GoInt):Void throw "Value:reflect.setCap is not yet implemented";
    @:keep
    @:tdfield
    static public function setLen( _v:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo.GoInt):Void throw "Value:reflect.setLen is not yet implemented";
    @:keep
    @:tdfield
    static public function setInt( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoInt64):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                (_x : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                (_x : stdgo.GoInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                (_x : stdgo.GoInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                (_x : stdgo.GoInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                (_x : stdgo.GoInt);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
                (_x : stdgo.GoUInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                (_x : stdgo.GoUInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                (_x : stdgo.GoUInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                (_x : stdgo.GoUInt64);
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                (_x : stdgo.GoUInt);
            default:
                throw "unknown setInt kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    @:tdfield
    static public function setFloat( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.float32:
                (_x : stdgo.GoFloat32);
            case stdgo._internal.internal.reflect.Reflect.KindType.float64:
                (_x : stdgo.GoFloat64);
            default:
                throw "unknown setFloat kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    @:tdfield
    static public function setComplex( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoComplex128):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.complex64:
                (_x : stdgo.GoComplex64);
            case stdgo._internal.internal.reflect.Reflect.KindType.complex128:
                (_x : stdgo.GoComplex128);
            default:
                throw "unknown setFloat kind: " + k.string();
        };
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    @:tdfield
    static public function setBytes( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.Slice<stdgo.GoUInt8>):Void throw "Value:reflect.setBytes is not yet implemented";
    @:keep
    @:tdfield
    static public function setBool( _v:stdgo._internal.reflect.Reflect_value.Value, _x:Bool):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        @:privateAccess _v.value.value = _x;
        stdgo._internal.internal.reflect.Reflect._set(_v);
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        var value = @:privateAccess _x.value.value;
        final gt = @:privateAccess _x.value.type._common();
        if (value != null) {
            final cl = std.Type.getClassName(std.Type.getClass(value));
            if (std.StringTools.endsWith(cl, "_asInterface")) {
                value = (value : Dynamic).__underlying__().value;
            };
        };
        final k = _v.kind();
        switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.struct:
                switch stdgo._internal.internal.reflect.Reflect.getUnderlying(gt) {
                case structType(fields):
                    for (field in fields) {
                    final fieldValue = std.Reflect.field(value, field.name);
                    std.Reflect.setField(value, field.name, fieldValue);
                };
                default:
                    final _ = false;
            };
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                _v.setInt((value : stdgo.GoInt8));
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                _v.setInt((value : stdgo.GoInt16));
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                _v.setInt((value : stdgo.GoInt32));
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                _v.setInt((value : stdgo.GoInt64));
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                _v.setInt((value : stdgo.GoInt));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint:
                _v.setInt((value : stdgo.GoUInt8));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
                _v.setInt((value : stdgo.GoUInt16));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
                _v.setInt((value : stdgo.GoUInt32));
            case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
                _v.setInt((value : stdgo.GoUInt64));
            case stdgo._internal.internal.reflect.Reflect.KindType.float32:
                _v.setFloat((value : stdgo.GoFloat32));
            case stdgo._internal.internal.reflect.Reflect.KindType.float64:
                _v.setFloat((value : stdgo.GoFloat64));
            case stdgo._internal.internal.reflect.Reflect.KindType.string:
                _v.setString(value);
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                var value:Slice<Dynamic> = @:privateAccess _v.value.value;
final x:Slice<Dynamic> = @:privateAccess _x.value.value;
stdgo._internal.internal.reflect.Reflect._set(_v);
            case stdgo._internal.internal.reflect.Reflect.KindType.map:
                var value:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _v.value.value;
final x:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _x.value.value;
for (key => value in x) {
                value.set(key, value);
            };
stdgo._internal.internal.reflect.Reflect._set(_v);
            default:
                @:privateAccess _v.value = _x.value;
stdgo._internal.internal.reflect.Reflect._set(_v);
        };
    }
    @:keep
    @:tdfield
    static public function send( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo._internal.reflect.Reflect_value.Value):Void throw "Value:reflect.send is not yet implemented";
    @:keep
    @:tdfield
    static public function recv( _v:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } throw "Value:reflect.recv is not yet implemented";
    @:keep
    @:tdfield
    static public function pointer( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoUIntptr {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) return new stdgo.GoUIntptr(0);
        var value = @:privateAccess _v.value.value;
        return new stdgo.GoUIntptr(value != null ? 1 : 0);
    }
    @:keep
    @:tdfield
    static public function overflowUint( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoUInt64):Bool throw "Value:reflect.overflowUint is not yet implemented";
    @:keep
    @:tdfield
    static public function overflowInt( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoInt64):Bool throw "Value:reflect.overflowInt is not yet implemented";
    @:keep
    @:tdfield
    static public function overflowFloat( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoFloat64):Bool throw "Value:reflect.overflowFloat is not yet implemented";
    @:keep
    @:tdfield
    static public function overflowComplex( _v:stdgo._internal.reflect.Reflect_value.Value, _x:stdgo.GoComplex128):Bool throw "Value:reflect.overflowComplex is not yet implemented";
    @:keep
    @:tdfield
    static public function numField( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        return _v.type().numField();
    }
    @:keep
    @:tdfield
    static public function methodByName( _v:stdgo._internal.reflect.Reflect_value.Value, _name:stdgo.GoString):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.methodByName is not yet implemented";
    @:keep
    @:tdfield
    static public function numMethod( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt throw "Value:reflect.numMethod is not yet implemented";
    @:keep
    @:tdfield
    static public function method( _v:stdgo._internal.reflect.Reflect_value.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.method is not yet implemented";
    @:keep
    @:tdfield
    static public function mapRange( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter> @:splitdeps {
        return new stdgo._internal.reflect.Reflect_mapiter.MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
    };
    @:keep
    @:tdfield
    static public function setIterValue( _v:stdgo._internal.reflect.Reflect_value.Value, _iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):Void throw "Value:reflect.setIterValue is not yet implemented";
    @:keep
    @:tdfield
    static public function setIterKey( _v:stdgo._internal.reflect.Reflect_value.Value, _iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):Void throw "Value:reflect.setIterKey is not yet implemented";
    @:keep
    @:tdfield
    static public function mapKeys( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> throw "Value:reflect.mapKeys is not yet implemented";
    @:keep
    @:tdfield
    static public function mapIndex( _v:stdgo._internal.reflect.Reflect_value.Value, _key:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.mapIndex is not yet implemented";
    @:keep
    @:tdfield
    static public function len( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt @:splitdeps {
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        if (value == null) return 0;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final k = _v.kind();
        return switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.array:
                (value : stdgo.GoArray<Dynamic>).length;
            case stdgo._internal.internal.reflect.Reflect.KindType.chan:
                (value : stdgo.Chan<Dynamic>).length;
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                (value : stdgo.Slice<Dynamic>).length;
            case stdgo._internal.internal.reflect.Reflect.KindType.map:
                Lambda.count((value : haxe.Constraints.IMap<Dynamic, Dynamic>));
            case stdgo._internal.internal.reflect.Reflect.KindType.string:
                (value : Dynamic).length;
            default:
                trace(k.string());
throw "not supported";
        };
    };
    @:keep
    @:tdfield
    static public function kind( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_kind.Kind return _v.type().kind();
    @:keep
    @:tdfield
    static public function setZero( _v:stdgo._internal.reflect.Reflect_value.Value):Void throw "Value:reflect.setZero is not yet implemented";
    @:keep
    @:tdfield
    static public function isZero( _v:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.isZero is not yet implemented";
    @:keep
    @:tdfield
    static public function isValid( _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        if (@:privateAccess _v.value == null) return false;
        if (@:privateAccess _v.value.type._common() != stdgo._internal.internal.reflect.Reflect.GoType.invalidType) return true;
        return switch @:privateAccess _v.value.type._common() {
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.untyped_nil_kind):
                false;
            default:
                true;
        };
    }
    @:keep
    @:tdfield
    static public function isNil( _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final k = _v.kind();
        final gt:stdgo._internal.internal.reflect.Reflect.GoType = (_v.type() : Dynamic)._common();
        return switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
                switch gt {
                case stdgo._internal.internal.reflect.Reflect.GoType.refType(_):
                    switch std.Type.typeof(value) {
                    case TClass(c):
                        final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) {
                        value = (value : Dynamic).__underlying__().value;
                    };
                    default:
                        final _ = false;
                };
value == null;
                default:
                    if (value == null) {
                    true;
                } else {
                    final b = (value : stdgo.Pointer<Dynamic>).hasSet();
                    trace("hasSet: " + b);
                    b;
                };
            };
            case stdgo._internal.internal.reflect.Reflect.KindType.func:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.chan:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.map:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.slice:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.array:
                false;
            case stdgo._internal.internal.reflect.Reflect.KindType.struct:
                false;
            case stdgo._internal.internal.reflect.Reflect.KindType.invalid:
                false;
            case stdgo._internal.internal.reflect.Reflect.KindType.unsafePointer, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
                value == null;
            case stdgo._internal.internal.reflect.Reflect.KindType.bool, stdgo._internal.internal.reflect.Reflect.KindType.int, stdgo._internal.internal.reflect.Reflect.KindType.int32, stdgo._internal.internal.reflect.Reflect.KindType.int64, stdgo._internal.internal.reflect.Reflect.KindType.float32, stdgo._internal.internal.reflect.Reflect.KindType.float64, stdgo._internal.internal.reflect.Reflect.KindType.int8, stdgo._internal.internal.reflect.Reflect.KindType.int16, stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8, stdgo._internal.internal.reflect.Reflect.KindType.uint16, stdgo._internal.internal.reflect.Reflect.KindType.uint32, stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.string, stdgo._internal.internal.reflect.Reflect.KindType.complex64, stdgo._internal.internal.reflect.Reflect.KindType.complex128:
                false;
            default:
                throw "nil check not supported kind: " + _v.kind().string();
        };
    }
    @:keep
    @:tdfield
    static public function interfaceData( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoArray<stdgo.GoUIntptr> throw "Value:reflect.interfaceData is not yet implemented";
    @:keep
    @:tdfield
    static public function interface_( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.AnyInterface return @:privateAccess _v.value;
    @:keep
    @:tdfield
    static public function canInterface( _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        return true;
    }
    @:keep
    @:tdfield
    static public function int_( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt64 {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoInt64 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.int:
                (value : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int8:
                (value : stdgo.GoInt8);
            case stdgo._internal.internal.reflect.Reflect.KindType.int16:
                (value : stdgo.GoInt16);
            case stdgo._internal.internal.reflect.Reflect.KindType.int32:
                (value : stdgo.GoInt32);
            case stdgo._internal.internal.reflect.Reflect.KindType.int64:
                (value : stdgo.GoInt64);
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Int", _v.kind());
        };
        return value;
    }
    @:keep
    @:tdfield
    static public function canInt( _v:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.canInt is not yet implemented";
    @:keep
    @:tdfield
    static public function index( _v:stdgo._internal.reflect.Reflect_value.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value @:splitdeps {
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
        return switch gt {
            case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
                final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : stdgo.GoArray<Dynamic>)[_i], t._common());
new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(valueInterface, t), value, _i);
            case stdgo._internal.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
                final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(valueInterface, t), value, _i);
@:privateAccess value.canAddrBool = true;
value;
            case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    var value = value;
if ((value is String)) value = (value : stdgo.GoString);
new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface((value : stdgo.GoString)[_i], new stdgo._internal.internal.reflect.Reflect._Type(basic(uint8_kind))));
                default:
                    throw "unsupported basic kind";
            };
            default:
                throw "not supported";
        };
    };
    @:keep
    @:tdfield
    static public function float_( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoFloat64 @:splitdeps {
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoFloat64 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.float64:
                (value : stdgo.GoFloat64);
            case stdgo._internal.internal.reflect.Reflect.KindType.float32:
                (value : stdgo.GoFloat32);
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Float", _v.kind());
        };
        return value;
    };
    @:keep
    @:tdfield
    static public function canFloat( _v:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.canFloat is not yet implemented";
    @:keep
    @:tdfield
    static public function fieldByNameFunc( _v:stdgo._internal.reflect.Reflect_value.Value, _match:stdgo.GoString -> Bool):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.fieldByNameFunc is not yet implemented";
    @:keep
    @:tdfield
    static public function fieldByName( _v:stdgo._internal.reflect.Reflect_value.Value, _name:stdgo.GoString):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.fieldByName is not yet implemented";
    @:keep
    @:tdfield
    static public function fieldByIndexErr( _v:stdgo._internal.reflect.Reflect_value.Value, _index:stdgo.Slice<stdgo.GoInt>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } throw "Value:reflect.fieldByIndexErr is not yet implemented";
    @:keep
    @:tdfield
    static public function fieldByIndex( _v:stdgo._internal.reflect.Reflect_value.Value, _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_value.Value throw "Value:reflect.fieldByIndex is not yet implemented";
    @:keep
    @:tdfield
    static public function field( _v:stdgo._internal.reflect.Reflect_value.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final initgt = @:privateAccess _v.value.type._common();
        final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(initgt);
        return switch gt {
            case structType(fields):
                final field = fields[_i.toBasic()];
var t = @:privateAccess (cast _v.value.type.field(_i).type : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
t = new stdgo._internal.internal.reflect.Reflect._Type(@:privateAccess stdgo._internal.internal.reflect.Reflect.unroll(initgt, t._common()));
var value = @:privateAccess _v.value.value;
switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
var fieldValue = std.Reflect.field(value, field.name);
fieldValue = stdgo._internal.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
final valueType = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(fieldValue, t));
if (field.name.charAt(0) == "_") @:privateAccess valueType.notSetBool = false;
valueType;
            default:
                throw "unsupported: " + gt;
        };
    }
    @:keep
    @:tdfield
    static public function elem( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t) && !stdgo._internal.internal.reflect.Reflect.isRef(t) && !stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) {
                    @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.unroll(t, stdgo._internal.internal.reflect.Reflect.getElem(t));
                    value = (value : Dynamic).__underlying__().value;
                };
                default:
                    final _ = false;
            };
        };
        var k = _v.kind();
        switch k {
            case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
                final t = @:privateAccess stdgo._internal.internal.reflect.Reflect.unroll(t, stdgo._internal.internal.reflect.Reflect.getUnderlying(t));
switch t {
                case stdgo._internal.internal.reflect.Reflect.GoType.refType(_.get() => elem):
                    final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(elem)), null);
@:privateAccess value.canAddrBool = true;
return value;
                case stdgo._internal.internal.reflect.Reflect.GoType.pointerType(_.get() => elem):
                    if (value == null) {
                    final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
                    @:privateAccess value.canAddrBool = true;
                    return value;
                };
final ptrValue = (value : stdgo.Pointer<Dynamic>).value;
final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(ptrValue, new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
@:privateAccess value.canAddrBool = true;
return value;
                default:
                    final _ = false;
            };
            case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
                if (value == null) return new stdgo._internal.reflect.Reflect_value.Value();
return new stdgo._internal.reflect.Reflect_value.Value(value, @:privateAccess _v.value.type);
        };
        throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Elem", k);
    }
    @:keep
    @:tdfield
    static public function complex( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoComplex128 @:splitdeps {
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:stdgo.GoComplex128 = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.complex128, stdgo._internal.internal.reflect.Reflect.KindType.complex64:
                value;
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("Value.Complex", _v.kind());
        };
        return value;
    };
    @:keep
    @:tdfield
    static public function canComplex( _v:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.canComplex is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _v:stdgo._internal.reflect.Reflect_value.Value):Void throw "Value:reflect.close is not yet implemented";
    @:keep
    @:tdfield
    static public function cap( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt throw "Value:reflect.cap is not yet implemented";
    @:keep
    @:tdfield
    static public function callSlice( _v:stdgo._internal.reflect.Reflect_value.Value, _in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> throw "Value:reflect.callSlice is not yet implemented";
    @:keep
    @:tdfield
    static public function call( _v:stdgo._internal.reflect.Reflect_value.Value, _in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> @:splitdeps {
        final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
        switch gt {
            case signature(_, _.get() => params, _.get() => out, _):
                final values = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(0, 0);
std.Reflect.callMethod(null, _v.interface_().value, _in.__toArray__().map(value -> value.interface_().value));
return values;
            default:
                throw "unsupported: " + gt;
        };
    };
    @:keep
    @:tdfield
    static public function canSet( _v:stdgo._internal.reflect.Reflect_value.Value):Bool throw "Value:reflect.canSet is not yet implemented";
    @:keep
    @:tdfield
    static public function canAddr( _v:stdgo._internal.reflect.Reflect_value.Value):Bool @:splitdeps {
        return @:privateAccess _v.canAddrBool;
    };
    @:keep
    @:tdfield
    static public function bytes( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        var t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            t = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
            t = @:privateAccess _v.value.type._common();
        };
        switch t {
            case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
                switch elem {
                case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.uint8_kind):
                    return (value : stdgo.GoArray<stdgo.GoByte>).__slice__(0);
                default:
                    throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
            };
            case stdgo._internal.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
                elem = stdgo._internal.internal.reflect.Reflect.getUnderlying(elem);
switch elem {
                case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.uint8_kind):
                    return value;
                default:
                    throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
            };
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
        };
    }
    @:keep
    @:tdfield
    static public function bool_( _v:stdgo._internal.reflect.Reflect_value.Value):Bool @:splitdeps {
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final value:Bool = switch _v.kind() {
            case stdgo._internal.internal.reflect.Reflect.KindType.bool:
                value;
            default:
                throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bool", _v.kind());
        };
        return value;
    };
    @:keep
    @:tdfield
    static public function addr( _v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _v:stdgo._internal.reflect.Reflect_value.Value = _v?.__copy__();
        final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> _v.value.type._common() });
        final t = new stdgo._internal.internal.reflect.Reflect._Type(gt);
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(stdgo.Go.pointer(@:privateAccess _v.value.value), t));
    }
}
