package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.strings.Strings.T_appendSliceWriter_asInterface) class T_appendSliceWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter> = _w;
        (_w : stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter).__setData__(((_w : stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter).__append__(...(_s : Array<stdgo.GoUInt8>))));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter> = _w;
        (_w : stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter).__setData__(((_w : stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter).__append__(...(_p : Array<stdgo.GoUInt8>))));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
