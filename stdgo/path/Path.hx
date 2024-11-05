package stdgo.path;
var errBadPattern(get, set) : stdgo.Error;
private function get_errBadPattern():stdgo.Error return stdgo._internal.path.Path_errBadPattern.errBadPattern;
private function set_errBadPattern(v:stdgo.Error):stdgo.Error {
        stdgo._internal.path.Path_errBadPattern.errBadPattern = v;
        return v;
    }
@:structInit @:using(stdgo.path.Path.T_lazybuf_static_extension) abstract T_lazybuf(stdgo._internal.path.Path_T_lazybuf.T_lazybuf) from stdgo._internal.path.Path_T_lazybuf.T_lazybuf to stdgo._internal.path.Path_T_lazybuf.T_lazybuf {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = v;
        return v;
    }
    public function new(?_s:String, ?_buf:Array<std.UInt>, ?_w:StdTypes.Int) this = new stdgo._internal.path.Path_T_lazybuf.T_lazybuf(_s, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_lazybuf_static_extension {
    static public function _string(_b:T_lazybuf):String {
        return stdgo._internal.path.Path_T_lazybuf_static_extension.T_lazybuf_static_extension._string(_b);
    }
    static public function _append(_b:T_lazybuf, _c:std.UInt):Void {
        stdgo._internal.path.Path_T_lazybuf_static_extension.T_lazybuf_static_extension._append(_b, _c);
    }
    static public function _index(_b:T_lazybuf, _i:StdTypes.Int):std.UInt {
        return stdgo._internal.path.Path_T_lazybuf_static_extension.T_lazybuf_static_extension._index(_b, _i);
    }
}
/**
    /|*{
    	_ = 0
    	gotoNext = 2692028
    	_ = gotoNext == 2692028
    	if len(pattern) > 0 && pattern[0] == 42 {
    		gotoNext = 2692070
    		_ = gotoNext == 2692070
    		pattern = pattern[1:]
    		star = true
    		gotoNext = 2692028
    	} else {
    		gotoNext = 2692114
    	}
    	_ = gotoNext == 2692114
    	inrange_2692114 = false
    	gotoNext = 2692142
    	_ = gotoNext == 2692142
    	i_2692136 = 0
    	ScanBreak = false
    	gotoNext = 2692149
    	_ = gotoNext == 2692149
    	if !ScanBreak && (i_2692136 < len(pattern)) {
    		gotoNext = 2692182
    		_ = gotoNext == 2692182
    		_ = 0
    		gotoNext = 2692186
    		_ = gotoNext == 2692186
    		switch pattern[i_2692136] {
    		case 92:
    			gotoNext = 2692208
    			_ = gotoNext == 2692208
    			if i_2692136+1 < len(pattern) {
    				gotoNext = 2692298
    				_ = gotoNext == 2692298
    				i_2692136++
    				gotoNext = 2692178
    			} else {
    				gotoNext = 2692178
    			}
    			gotoNext = 2692178
    		case 91:
    			gotoNext = 2692315
    			_ = gotoNext == 2692315
    			inrange_2692114 = true
    			gotoNext = 2692178
    		case 93:
    			gotoNext = 2692345
    			_ = gotoNext == 2692345
    			inrange_2692114 = false
    			gotoNext = 2692178
    		case 42:
    			gotoNext = 2692376
    			_ = gotoNext == 2692376
    			if !inrange_2692114 {
    				gotoNext = 2692401
    				_ = gotoNext == 2692401
    				ScanBreak = true
    				gotoNext = 2692149
    				gotoNext = 2692178
    			} else {
    				gotoNext = 2692178
    			}
    			gotoNext = 2692178
    		default:
    			gotoNext = 2692178
    		}
    		_ = gotoNext == 2692178
    		i_2692136++
    		gotoNext = 2692149
    	} else {
    		gotoNext = 2692431
    	}
    	_ = gotoNext == 2692431
    	return star, pattern[0:i_2692136], pattern[i_2692136:]
    	gotoNext = -1
    }*|/
**/
class Path {
    /**
        Match reports whether name matches the shell pattern.
        The pattern syntax is:
        
        	pattern:
        		{ term }
        	term:
        		'*'         matches any sequence of non-/ characters
        		'?'         matches any single non-/ character
        		'[' [ '^' ] { character-range } ']'
        		            character class (must be non-empty)
        		c           matches character c (c != '*', '?', '\\', '[')
        		'\\' c      matches character c
        
        	character-range:
        		c           matches character c (c != '\\', '-', ']')
        		'\\' c      matches character c
        		lo '-' hi   matches character c for lo <= c <= hi
        
        Match requires pattern to match all of name, not just a substring.
        The only possible returned error is ErrBadPattern, when pattern
        is malformed.
    **/
    static public function match(_pattern:String, _name:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.path.Path_match.match(_pattern, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Clean returns the shortest path name equivalent to path
        by purely lexical processing. It applies the following rules
        iteratively until no further processing can be done:
        
         1. Replace multiple slashes with a single slash.
         2. Eliminate each . path name element (the current directory).
         3. Eliminate each inner .. path name element (the parent directory)
            along with the non-.. element that precedes it.
         4. Eliminate .. elements that begin a rooted path:
            that is, replace "/.." by "/" at the beginning of a path.
        
        The returned path ends in a slash only if it is the root "/".
        
        If the result of this process is an empty string, Clean
        returns the string ".".
        
        See also Rob Pike, “Lexical File Names in Plan 9 or
        Getting Dot-Dot Right,”
        https://9p.io/sys/doc/lexnames.html
    **/
    static public function clean(_path:String):String {
        return stdgo._internal.path.Path_clean.clean(_path);
    }
    /**
        Split splits path immediately following the final slash,
        separating it into a directory and file name component.
        If there is no slash in path, Split returns an empty dir and
        file set to path.
        The returned values have the property that path = dir+file.
    **/
    static public function split(_path:String):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.path.Path_split.split(_path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Join joins any number of path elements into a single path,
        separating them with slashes. Empty elements are ignored.
        The result is Cleaned. However, if the argument list is
        empty or all its elements are empty, Join returns
        an empty string.
    **/
    static public function join(_elem:haxe.Rest<String>):String {
        return stdgo._internal.path.Path_join.join(...[for (i in _elem) i]);
    }
    /**
        Ext returns the file name extension used by path.
        The extension is the suffix beginning at the final dot
        in the final slash-separated element of path;
        it is empty if there is no dot.
    **/
    static public function ext(_path:String):String {
        return stdgo._internal.path.Path_ext.ext(_path);
    }
    /**
        Base returns the last element of path.
        Trailing slashes are removed before extracting the last element.
        If the path is empty, Base returns ".".
        If the path consists entirely of slashes, Base returns "/".
    **/
    static public function base(_path:String):String {
        return stdgo._internal.path.Path_base.base(_path);
    }
    /**
        IsAbs reports whether the path is absolute.
    **/
    static public function isAbs(_path:String):Bool {
        return stdgo._internal.path.Path_isAbs.isAbs(_path);
    }
    /**
        Dir returns all but the last element of path, typically the path's directory.
        After dropping the final element using Split, the path is Cleaned and trailing
        slashes are removed.
        If the path is empty, Dir returns ".".
        If the path consists entirely of slashes followed by non-slash bytes, Dir
        returns a single slash. In any other case, the returned path does not end in a
        slash.
    **/
    static public function dir(_path:String):String {
        return stdgo._internal.path.Path_dir.dir(_path);
    }
}
