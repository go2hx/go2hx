package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.Builder_asInterface) class Builder_static_extension {
    @:keep
    static public function writeString( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(...(_s : Array<stdgo.GoUInt8>)));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        _b._copyCheck();
        var _n = (_b._buf.length : stdgo.GoInt);
        _b._buf = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune(_b._buf, _r);
        return { _0 : ((_b._buf.length) - _n : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(_c));
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(...(_p : Array<stdgo.GoUInt8>)));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function grow( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        _b._copyCheck();
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("strings.Builder.Grow: negative count" : stdgo.GoString));
        };
        if (((_b._buf.capacity - (_b._buf.length) : stdgo.GoInt) < _n : Bool)) {
            _b._grow(_n);
        };
    }
    @:keep
    static public function _grow( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        var _buf = (stdgo._internal.internal.bytealg.Bytealg_makeNoZero.makeNoZero((((2 : stdgo.GoInt) * _b._buf.capacity : stdgo.GoInt) + _n : stdgo.GoInt)).__slice__(0, (_b._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_buf, _b._buf);
        _b._buf = _buf;
    }
    @:keep
    static public function reset( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        _b._addr = null;
        _b._buf = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function cap( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        return _b._buf.capacity;
    }
    @:keep
    static public function len( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        return (_b._buf.length);
    }
    @:keep
    static public function string( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = _b;
        return ((stdgo.Go.toInterface((_b._buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) })) : stdgo.Pointer<stdgo.GoString>).value;
    }
    @:keep
    static public function _copyCheck( _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void _b._addr = _b;
}
