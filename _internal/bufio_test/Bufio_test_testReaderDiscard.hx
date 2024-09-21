package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReaderDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.bufio_test.Bufio_test_T__struct_1.T__struct_1>(9, 9, ...[({ _name : ("normal case" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _peekSize : (16 : stdgo.GoInt), _n : (6 : stdgo.GoInt), _want : (6 : stdgo.GoInt), _wantBuffered : (10 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("discard causing read" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _n : (6 : stdgo.GoInt), _want : (6 : stdgo.GoInt), _wantBuffered : (10 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("discard all without peek" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _n : (26 : stdgo.GoInt), _want : (26 : stdgo.GoInt), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("discard more than end" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _n : (27 : stdgo.GoInt), _want : (26 : stdgo.GoInt), _wantErr : stdgo._internal.io.Io_eof.eof, _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("fill error, discard less" : stdgo.GoString), _r : _internal.bufio_test.Bufio_test__newScriptedReader._newScriptedReader(function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
            if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("unexpected small read" : stdgo.GoString));
            };
            return { _0 : (5 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("5-then-error" : stdgo.GoString)) };
        }), _n : (4 : stdgo.GoInt), _want : (4 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (1 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("fill error, discard equal" : stdgo.GoString), _r : _internal.bufio_test.Bufio_test__newScriptedReader._newScriptedReader(function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
            if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("unexpected small read" : stdgo.GoString));
            };
            return { _0 : (5 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("5-then-error" : stdgo.GoString)) };
        }), _n : (5 : stdgo.GoInt), _want : (5 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("fill error, discard more" : stdgo.GoString), _r : _internal.bufio_test.Bufio_test__newScriptedReader._newScriptedReader(function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
            if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("unexpected small read" : stdgo.GoString));
            };
            return { _0 : (5 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("5-then-error" : stdgo.GoString)) };
        }), _n : (6 : stdgo.GoInt), _want : (5 : stdgo.GoInt), _wantErr : stdgo._internal.errors.Errors_new_.new_(("5-then-error" : stdgo.GoString)), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("discard zero" : stdgo.GoString), _r : _internal.bufio_test.Bufio_test__newScriptedReader._newScriptedReader(), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1), ({ _name : ("discard negative" : stdgo.GoString), _r : _internal.bufio_test.Bufio_test__newScriptedReader._newScriptedReader(), _n : (-1 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _wantErr : stdgo._internal.bufio.Bufio_errNegativeCount.errNegativeCount, _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _r : (null : stdgo._internal.io.Io_Reader.Reader), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (0 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.bufio_test.Bufio_test_T__struct_1.T__struct_1>);
        for (__0 => _tt in _tests) {
            var _br = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_tt._r, _tt._bufSize);
            if ((_tt._peekSize > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _br.peek(_tt._peekSize), _peekBuf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: Peek(%d): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_tt._peekSize), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_peekBuf.length) != (_tt._peekSize)) {
                    _t.errorf(("%s: len(Peek(%d)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_tt._peekSize), stdgo.Go.toInterface((_peekBuf.length)), stdgo.Go.toInterface(_tt._peekSize));
                    continue;
                };
            };
            var __tmp__ = _br.discard(_tt._n), _discarded:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_err))?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_tt._wantErr))?.__copy__() : stdgo.GoString);
var _we = __1, _ge = __0;
                if (((_discarded != _tt._want) || (_ge != _we) : Bool)) {
                    _t.errorf(("%s: Discard(%d) = (%v, %v); want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_discarded), stdgo.Go.toInterface(_ge), stdgo.Go.toInterface(_tt._want), stdgo.Go.toInterface(_we));
                    continue;
                };
            };
            {
                var _bn = (_br.buffered() : stdgo.GoInt);
                if (_bn != (_tt._wantBuffered)) {
                    _t.errorf(("%s: after Discard, Buffered = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_bn), stdgo.Go.toInterface(_tt._wantBuffered));
                };
            };
        };
    }
