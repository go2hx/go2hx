package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.Builder_asInterface) class Builder_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L115"
        _b._copyCheck();
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L117"
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L106"
        _b._copyCheck();
        var _n = ((@:checkr _b ?? throw "null pointer dereference")._buf.length : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._buf = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune((@:checkr _b ?? throw "null pointer dereference")._buf, _r);
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L109"
        return { _0 : (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - _n : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L98"
        _b._copyCheck();
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L100"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L90"
        _b._copyCheck();
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__append__(...(_p : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L92"
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function grow( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L78"
        _b._copyCheck();
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L79"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L80"
            throw stdgo.Go.toInterface(("strings.Builder.Grow: negative count" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L82"
        if ((((@:checkr _b ?? throw "null pointer dereference")._buf.capacity - ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : stdgo.GoInt) < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L83"
            _b._grow(_n);
        };
    }
    @:keep
    @:tdfield
    static public function _grow( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        var _buf = (stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero((((2 : stdgo.GoInt) * (@:checkr _b ?? throw "null pointer dereference")._buf.capacity : stdgo.GoInt) + _n : stdgo.GoInt)).__slice__(0, ((@:checkr _b ?? throw "null pointer dereference")._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L70"
        _buf.__copyTo__((@:checkr _b ?? throw "null pointer dereference")._buf);
        (@:checkr _b ?? throw "null pointer dereference")._buf = _buf;
    }
    @:keep
    @:tdfield
    static public function reset( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._addr = null;
        (@:checkr _b ?? throw "null pointer dereference")._buf = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function cap( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L58"
        return (@:checkr _b ?? throw "null pointer dereference")._buf.capacity;
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/strings/builder.go#L53"
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = _b;
        return ((stdgo.Go.toInterface((_b._buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> return stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) })) : stdgo.Pointer<stdgo.GoString>).value;
    }
    @:keep
    @:tdfield
    static public function _copyCheck( _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void _b._addr = _b;
}
