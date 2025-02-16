package stdgo._internal.os;
function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        #if (sys || hxnodejs) {
            function randomName(length:Int) {
                var chars = "abcdefghijklmnopqrstuvwxyz0123456789";
                var result = "";
                for (i in 0 ... length) {
                    var randomIndex = std.Math.floor(std.Math.random() * chars.length);
                    result += chars.charAt(randomIndex);
                };
                return result;
            };
            var name = randomName(10);
            final pattern:String = _pattern;
            final wildCardIndex = pattern.indexOf("*");
            if (wildCardIndex != -1) {
                name = pattern.substr(0, wildCardIndex) + name + pattern.substr(wildCardIndex + 1);
            } else {
                name = pattern + name;
            };
            sys.FileSystem.createDirectory(name);
            return { _0 : name, _1 : null };
        } #else null #end;
        return { _0 : "", _1 : null };
    }
