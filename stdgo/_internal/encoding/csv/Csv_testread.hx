package stdgo._internal.encoding.csv;
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _newReader = (function(_tt:stdgo._internal.encoding.csv.Csv_t_readtest.T_readTest):{ var _0 : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>; var _1 : stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>; var _2 : stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>; var _3 : stdgo.GoString; } {
            var __tmp__ = stdgo._internal.encoding.csv.Csv__makepositions._makePositions(_tt.input?.__copy__()), _positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>> = __tmp__._0, _errPositions:stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>> = __tmp__._1, _input:stdgo.GoString = __tmp__._2;
            var _r = stdgo._internal.encoding.csv.Csv_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_input?.__copy__())));
            if (_tt.comma != ((0 : stdgo.GoInt32))) {
                (@:checkr _r ?? throw "null pointer dereference").comma = _tt.comma;
            };
            (@:checkr _r ?? throw "null pointer dereference").comment = _tt.comment;
            if (_tt.useFieldsPerRecord) {
                (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord = _tt.fieldsPerRecord;
            } else {
                (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord = (-1 : stdgo.GoInt);
            };
            (@:checkr _r ?? throw "null pointer dereference").lazyQuotes = _tt.lazyQuotes;
            (@:checkr _r ?? throw "null pointer dereference").trimLeadingSpace = _tt.trimLeadingSpace;
            (@:checkr _r ?? throw "null pointer dereference").reuseRecord = _tt.reuseRecord;
            return { _0 : _r, _1 : _positions, _2 : _errPositions, _3 : _input?.__copy__() };
        } : stdgo._internal.encoding.csv.Csv_t_readtest.T_readTest -> { var _0 : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>; var _1 : stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>; var _2 : stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>; var _3 : stdgo.GoString; });
        for (__0 => _tt in stdgo._internal.encoding.csv.Csv__readtests._readTests) {
            @:check2r _t.run(_tt.name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _newReader(_tt?.__copy__()), _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = __tmp__._0, _positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>> = __tmp__._1, _errPositions:stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>> = __tmp__._2, _input:stdgo.GoString = __tmp__._3;
                var __tmp__ = @:check2r _r.readAll(), _out:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _wantErr = (stdgo._internal.encoding.csv.Csv__firsterror._firstError(_tt.errors, _positions, _errPositions) : stdgo.Error);
                    if (_wantErr != null) {
                        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr))) {
                            @:check2r _t.fatalf(("ReadAll() error mismatch:\ngot  %v (%#v)\nwant %v (%#v)" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr), stdgo.Go.toInterface(_wantErr));
                        };
                        if (_out != null) {
                            @:check2r _t.fatalf(("ReadAll() output:\ngot  %q\nwant nil" : stdgo.GoString), stdgo.Go.toInterface(_out));
                        };
                    } else {
                        if (_err != null) {
                            @:check2r _t.fatalf(("unexpected Readall() error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt.output))) {
                            @:check2r _t.fatalf(("ReadAll() output:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt.output));
                        };
                    };
                };
                var _inputByteSize = (_input.length : stdgo.GoInt);
                var _inputOffset = (@:check2r _r.inputOffset() : stdgo.GoInt64);
                if (((_err == null) && ((_inputByteSize : stdgo.GoInt64) != _inputOffset) : Bool)) {
                    @:check2r _t.errorf(("wrong input offset after call ReadAll():\ngot:  %d\nwant: %d\ninput: %s" : stdgo.GoString), stdgo.Go.toInterface(_inputOffset), stdgo.Go.toInterface(_inputByteSize), stdgo.Go.toInterface(_input));
                };
                {
                    var __tmp__ = _newReader(_tt?.__copy__());
                    _r = @:tmpset0 __tmp__._0;
                };
                {
                    var _recNum = (0 : stdgo.GoInt);
                    while (true) {
                        var __tmp__ = @:check2r _r.read(), _rec:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
var _wantErr:stdgo.Error = (null : stdgo.Error);
if (((_recNum < (_tt.errors.length) : Bool) && (_tt.errors[(_recNum : stdgo.GoInt)] != null) : Bool)) {
                            _wantErr = stdgo._internal.encoding.csv.Csv__errorwithposition._errorWithPosition(_tt.errors[(_recNum : stdgo.GoInt)], _recNum, _positions, _errPositions);
                        } else if ((_recNum >= (_tt.output.length) : Bool)) {
                            _wantErr = stdgo._internal.io.Io_eof.eOF;
                        };
if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr))) {
                            @:check2r _t.fatalf(("Read() error at record %d:\ngot %v (%#v)\nwant %v (%#v)" : stdgo.GoString), stdgo.Go.toInterface(_recNum), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr), stdgo.Go.toInterface(_wantErr));
                        };
if (((_err != null) && !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount) : Bool)) {
                            if ((_recNum < (_tt.output.length) : Bool)) {
                                @:check2r _t.fatalf(("need more records; got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_recNum), stdgo.Go.toInterface((_tt.output.length)));
                            };
                            break;
                        };
{
                            var __0 = _rec, __1 = _tt.output[(_recNum : stdgo.GoInt)];
var _want = __1, _got = __0;
                            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                                @:check2r _t.errorf(("Read vs ReadAll mismatch;\ngot %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
var _pos = _positions[(_recNum : stdgo.GoInt)];
if ((_pos.length) != ((_rec.length))) {
                            @:check2r _t.fatalf(("mismatched position length at record %d" : stdgo.GoString), stdgo.Go.toInterface(_recNum));
                        };
for (_i => _ in _rec) {
                            var __tmp__ = @:check2r _r.fieldPos(_i), _line:stdgo.GoInt = __tmp__._0, _col:stdgo.GoInt = __tmp__._1;
                            {
                                var __0 = (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[_line, _col]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), __1 = _pos[(_i : stdgo.GoInt)]?.__copy__();
var _want = __1, _got = __0;
                                if (stdgo.Go.toInterface(_got) != stdgo.Go.toInterface(_want)) {
                                    @:check2r _t.errorf(("position mismatch at record %d, field %d;\ngot %v\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_recNum), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        _recNum++;
                    };
                };
            });
        };
    }
