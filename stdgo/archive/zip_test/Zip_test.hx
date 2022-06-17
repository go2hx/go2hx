package stdgo.archive.zip_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit @:local class T__struct_7 {
    public var name : GoString = (("" : GoString));
    public var body : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(name) + " " + Go.string(body) + "}";
    public function new(?name:GoString, ?body:GoString, ?toString) {
        if (name != null) this.name = name;
        if (body != null) this.body = body;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(name, body);
    }
}
function exampleWriter():Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = stdgo.archive.zip.Zip.newWriter(_buf);
        var _files:Slice<stdgo.archive.zip_test.Zip_test.T__struct_7> = ((new Slice<stdgo.archive.zip_test.Zip_test.T__struct_7>(((new stdgo.archive.zip_test.Zip_test.T__struct_7(((("readme.txt" : GoString))), ((("This archive contains some text files." : GoString)))) : stdgo.archive.zip_test.Zip_test.T__struct_7)), ((new stdgo.archive.zip_test.Zip_test.T__struct_7(((("gopher.txt" : GoString))), ((("Gopher names:\nGeorge\nGeoffrey\nGonzo" : GoString)))) : stdgo.archive.zip_test.Zip_test.T__struct_7)), ((new stdgo.archive.zip_test.Zip_test.T__struct_7(((("todo.txt" : GoString))), ((("Get animal handling licence.\nWrite more examples." : GoString)))) : stdgo.archive.zip_test.Zip_test.T__struct_7))) : Slice<stdgo.archive.zip_test.Zip_test.T__struct_7>));
        for (_0 => _file in _files) {
            var __tmp__ = _w.create(_file.name), _f:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            {
                var __tmp__ = _f.write(((_file.body : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        var _err:stdgo.Error = _w.close();
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
    }
function exampleReader():Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.archive.zip.Zip.openReader(((("testdata/readme.zip" : GoString)))), _r:Ref<ReadCloser> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _r.close());
            for (_0 => _f in _r.file) {
                stdgo.fmt.Fmt.printf(((("Contents of %s:\n" : GoString))), Go.toInterface(_f.name));
                var __tmp__ = _f.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
                {
                    var __tmp__ = stdgo.io.Io.copyN(stdgo.os.Os.stdout, _rc, ((68 : GoInt64)));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
                _rc.close();
                stdgo.fmt.Fmt.println();
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function exampleWriter_RegisterCompressor():Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = stdgo.archive.zip.Zip.newWriter(_buf);
        _w.registerCompressor(((8 : GoUInt16)), function(_out:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
            return stdgo.compress.flate.Flate.newWriter(_out, ((9 : GoInt)));
        });
    }
class T__struct_7_wrapper {
    public var __t__ : T__struct_7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
