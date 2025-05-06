package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_fakeFileSet_asInterface) class T_fakeFileSet_static_extension {
    @:keep
    @:tdfield
    static public function _setLines( _s:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L70"
        stdgo._internal.go.internal.gcimporter.Gcimporter__fakelinesonce._fakeLinesOnce.do_(function():Void {
            stdgo._internal.go.internal.gcimporter.Gcimporter__fakelines._fakeLines = (new stdgo.Slice<stdgo.GoInt>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L72"
            for (_i => _ in stdgo._internal.go.internal.gcimporter.Gcimporter__fakelines._fakeLines) {
                stdgo._internal.go.internal.gcimporter.Gcimporter__fakelines._fakeLines[(_i : stdgo.GoInt)] = _i;
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L76"
        for (__8 => _f in (@:checkr _s ?? throw "null pointer dereference")._files) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L77"
            (@:checkr _f ?? throw "null pointer dereference")._file.setLines((stdgo._internal.go.internal.gcimporter.Gcimporter__fakelines._fakeLines.__slice__(0, (@:checkr _f ?? throw "null pointer dereference")._lastline) : stdgo.Slice<stdgo.GoInt>));
        };
    }
    @:keep
    @:tdfield
    static public function _pos( _s:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet>, _file:stdgo.GoString, _line:stdgo.GoInt, _column:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet> = _s;
        var _f = ((@:checkr _s ?? throw "null pointer dereference")._files[_file] ?? (null : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L53"
        if (({
            final value = _f;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _f = (stdgo.Go.setRef(({ _file : (@:checkr _s ?? throw "null pointer dereference")._fset.addFile(_file?.__copy__(), (-1 : stdgo.GoInt), (65536 : stdgo.GoInt)) } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo)) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>);
            (@:checkr _s ?? throw "null pointer dereference")._files[_file] = _f;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L58"
        if ((_line > (65536 : stdgo.GoInt) : Bool)) {
            _line = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L61"
        if ((_line > (@:checkr _f ?? throw "null pointer dereference")._lastline : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._lastline = _line;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L66"
        return ((((@:checkr _f ?? throw "null pointer dereference")._file.base() + _line : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
}
