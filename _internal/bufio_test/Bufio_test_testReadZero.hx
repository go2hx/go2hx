package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(100 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bufsize=%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _r = (stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abc" : stdgo.GoString))), stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("def" : stdgo.GoString))), _n : (1 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader.T_emptyThenNonEmptyReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader.T_emptyThenNonEmptyReader>))) : stdgo._internal.io.Io_Reader.Reader);
                var _br = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_r, _size);
                var _want = (function(_s:stdgo.GoString, _wantErr:stdgo.Error):Void {
                    var _p = (new stdgo.Slice<stdgo.GoUInt8>((50 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var __tmp__ = _br.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr)) || _n != ((_s.length)) : Bool) || (((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _s) : Bool)) {
                        _t.fatalf(("read(%d) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_wantErr));
                    };
                    _t.logf(("read(%d) = %q, %v" : stdgo.GoString), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
                } : (stdgo.GoString, stdgo.Error) -> Void);
                _want(("abc" : stdgo.GoString), (null : stdgo.Error));
                _want(stdgo.Go.str()?.__copy__(), (null : stdgo.Error));
                _want(("def" : stdgo.GoString), (null : stdgo.Error));
                _want(stdgo.Go.str()?.__copy__(), stdgo._internal.io.Io_eof.eof);
            });
        };
    }
