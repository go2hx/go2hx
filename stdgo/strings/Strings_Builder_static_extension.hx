package stdgo.strings;
class Builder_static_extension {
    static public function writeString(_b:Builder, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Builder, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Builder, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.writeByte(_b, _c);
    }
    static public function write(_b:Builder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(_b:Builder, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.grow(_b, _n);
    }
    static public function _grow(_b:Builder, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension._grow(_b, _n);
    }
    static public function reset(_b:Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.reset(_b);
    }
    static public function cap(_b:Builder):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        return stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.cap(_b);
    }
    static public function len(_b:Builder):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        return stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.len(_b);
    }
    static public function string(_b:Builder):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        return stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension.string(_b);
    }
    static public function _copyCheck(_b:Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension._copyCheck(_b);
    }
}
