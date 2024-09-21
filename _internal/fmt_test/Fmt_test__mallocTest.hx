package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
var _mallocTest : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_4.T__struct_4> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_4.T__struct_4>(13, 13, ...[
({ _count : (0 : stdgo.GoInt), _desc : ("Sprintf(\"\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(stdgo.Go.str()?.__copy__());
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"xxx\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("xxx" : stdgo.GoString));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Sprintf(\"%x\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%x\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((65536 : stdgo.GoInt)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (3 : stdgo.GoInt), _desc : ("Sprintf(\"%80000s\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%80000s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%s\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%x %x\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x %x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface((112 : stdgo.GoInt)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%g\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%g" : stdgo.GoString), stdgo.Go.toInterface(((3.14159 : stdgo.GoFloat64) : stdgo.GoFloat32)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%s\")" : stdgo.GoString), _fn : function():Void {
        _internal.fmt_test.Fmt_test__mallocBuf._mallocBuf.reset();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocBuf._mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x\")" : stdgo.GoString), _fn : function():Void {
        _internal.fmt_test.Fmt_test__mallocBuf._mallocBuf.reset();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocBuf._mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x\")" : stdgo.GoString), _fn : function():Void {
        _internal.fmt_test.Fmt_test__mallocBuf._mallocBuf.reset();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocBuf._mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%x" : stdgo.GoString), stdgo.Go.toInterface((65536 : stdgo.GoInt)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (2 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%80000s\")" : stdgo.GoString), _fn : function():Void {
        _internal.fmt_test.Fmt_test__mallocBuf._mallocBuf.reset();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocBuf._mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%80000s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x %x %x\")" : stdgo.GoString), _fn : function():Void {
        _internal.fmt_test.Fmt_test__mallocBuf._mallocBuf.reset();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocBuf._mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%x %x %x" : stdgo.GoString), stdgo.Go.toInterface(_internal.fmt_test.Fmt_test__mallocPointer._mallocPointer), stdgo.Go.toInterface(_internal.fmt_test.Fmt_test__mallocPointer._mallocPointer), stdgo.Go.toInterface(_internal.fmt_test.Fmt_test__mallocPointer._mallocPointer));
    } } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _desc : ("" : stdgo.GoString), _fn : null } : _internal.fmt_test.Fmt_test_T__struct_4.T__struct_4)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_4.T__struct_4>);
