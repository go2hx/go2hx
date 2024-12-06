package stdgo._internal.encoding.binary;
function testReadTruncated(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b1 = (new stdgo.Slice<stdgo.GoInt32>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _b1__pointer__ = (stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
        var _b1__pointer__ = (stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
        var _b1__pointer__ = (stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
        var _b1__pointer__ = (stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
        var _b2:stdgo._internal.encoding.binary.Binary_T__struct_5.T__struct_5 = ({ a : (0 : stdgo.GoUInt8), b : (0 : stdgo.GoUInt8), c : (0 : stdgo.GoUInt8), d : (0 : stdgo.GoUInt8), e : (0 : stdgo.GoInt32), f : (0 : stdgo.GoFloat64) } : stdgo._internal.encoding.binary.Binary_T__struct_5.T__struct_5);
        var _b2__pointer__ = (stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T__struct_5.T__struct_5>);
        var _b2__pointer__ = (stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T__struct_5.T__struct_5>);
        var _b2__pointer__ = (stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T__struct_5.T__struct_5>);
        var _b2__pointer__ = (stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T__struct_5.T__struct_5>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (("0123456789abcdef" : stdgo.GoString).length) : Bool)) {
                var _errWant:stdgo.Error = (null : stdgo.Error);
{
                    final __value__ = _i;
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        _errWant = stdgo._internal.io.Io_eof.eof;
                    } else if (__value__ == ((("0123456789abcdef" : stdgo.GoString).length))) {
                        _errWant = (null : stdgo.Error);
                    } else {
                        _errWant = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                };
{
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader((("0123456789abcdef" : stdgo.GoString).__slice__(0, _i) : stdgo.GoString).__copy__())), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(_b1__pointer__)) : stdgo.Error);
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with slice: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errWant));
                    };
                };
{
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader((("0123456789abcdef" : stdgo.GoString).__slice__(0, _i) : stdgo.GoString).__copy__())), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2__pointer__))) : stdgo.Error);
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with struct: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errWant));
                    };
                };
                _i++;
            };
        };
    }
