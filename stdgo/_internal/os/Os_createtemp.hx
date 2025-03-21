package stdgo._internal.os;
function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        final dir = _dir;
        final pattern = _pattern;
        function randomName(length:Int) {
            var chars = "abcdefghijklmnopqrstuvwxyz0123456789";
            var result = "";
            for (i in 0 ... length) {
                var randomIndex = std.Math.floor(std.Math.random() * chars.length);
                result += chars.charAt(randomIndex);
            };
            return result;
        };
        var name = "tmp_" + randomName(10);
        return stdgo._internal.os.Os_openfile.openFile((dir != "" ? haxe.io.Path.addTrailingSlash(dir) : "") + name, 0, 0);
    }
