package stdgo.archive.tar_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit @:local class T__struct_23 {
    public var name : GoString = (("" : GoString));
    public var body : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(name) + " " + Go.string(body) + "}";
    public function new(?name:GoString, ?body:GoString, ?toString) {
        if (name != null) this.name = name;
        if (body != null) this.body = body;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_23(name, body);
    }
}
function example_minimal():Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _tw:Ref<Writer> = stdgo.archive.tar.Tar.newWriter(_buf);
        var _files:Slice<stdgo.archive.tar_test.Tar_test.T__struct_23> = ((new Slice<stdgo.archive.tar_test.Tar_test.T__struct_23>(((new stdgo.archive.tar_test.Tar_test.T__struct_23(((("readme.txt" : GoString))), ((("This archive contains some text files." : GoString)))) : stdgo.archive.tar_test.Tar_test.T__struct_23)), ((new stdgo.archive.tar_test.Tar_test.T__struct_23(((("gopher.txt" : GoString))), ((("Gopher names:\nGeorge\nGeoffrey\nGonzo" : GoString)))) : stdgo.archive.tar_test.Tar_test.T__struct_23)), ((new stdgo.archive.tar_test.Tar_test.T__struct_23(((("todo.txt" : GoString))), ((("Get animal handling license." : GoString)))) : stdgo.archive.tar_test.Tar_test.T__struct_23))) : Slice<stdgo.archive.tar_test.Tar_test.T__struct_23>));
        for (_0 => _file in _files) {
            var _hdr:Ref<Header> = (({ name : _file.name, mode : ((384 : GoInt64)), size : (((_file.body != null ? _file.body.length : ((0 : GoInt))) : GoInt64)), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
            {
                var _err:stdgo.Error = _tw.writeHeader(_hdr);
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _tw.write(((_file.body : Slice<GoByte>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
        };
        {
            var _err:stdgo.Error = _tw.close();
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        var _tr:Ref<Reader> = stdgo.archive.tar.Tar.newReader(_buf);
        while (true) {
            var __tmp__ = _tr.next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == stdgo.io.Io.eof) {
                break;
            };
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            stdgo.fmt.Fmt.printf(((("Contents of %s:\n" : GoString))), Go.toInterface(_hdr.name));
            {
                var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _tr), _2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            stdgo.fmt.Fmt.println();
        };
    }
class T__struct_23_wrapper {
    public var __t__ : T__struct_23;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
